local collectingJobsConfig = nil
local collectingLimitsByJob = {}
local activeCollectors = {}

local function StartRepeating(action, waitMs)
  local shouldRun = true
  CreateThread(function()
    while shouldRun do
      Wait(waitMs or 0)
      if shouldRun then
        action()
      end
    end
  end)
  return { clear = function() shouldRun = false end }
end

local function StopCollecting(playerSource, message)
  TriggerClientEvent("lunar_unijob:stopCollecting", playerSource, message)
  local active = activeCollectors[playerSource]
  if active then
    active.clear()
    SetTimeout(1000, function()
      if activeCollectors[playerSource] == active then
        activeCollectors[playerSource] = nil
      end
    end)
  end
end

RegisterNetEvent("lunar_unijob:stopCollecting", function()
  StopCollecting(source)
end)

lib.callback.register("lunar_unijob:startCollecting", function(playerSource, spotKey, locationIndex)
  local player = Framework.getPlayerFromId(playerSource)
  if not player then
    return
  end

  local playerJobName = player:getJob()
  local jobConfig = collectingJobsConfig and collectingJobsConfig[playerJobName]
  if not jobConfig then
    return
  end

  local spotConfig = jobConfig.collecting and jobConfig.collecting[spotKey]
  local location = spotConfig and spotConfig.locations and spotConfig.locations[locationIndex]
  if not (spotConfig and location) then
    return
  end

  local radius = spotConfig.radius or (Config.defaultRadius * 1.25)
  local isNearby = Utils.distanceCheck(playerSource, location, radius)
  if not isNearby or activeCollectors[playerSource] then
    return
  end

  if spotConfig.requiredItem then
    local hasItem = player:hasItem(spotConfig.requiredItem)
    if not hasItem then
      return false, locale("missing_item", Utils.getItemLabel(spotConfig.requiredItem))
    end
  end

  if spotConfig.max then
    collectingLimitsByJob[playerJobName] = collectingLimitsByJob[playerJobName] or {}
    collectingLimitsByJob[playerJobName][spotKey] = collectingLimitsByJob[playerJobName][spotKey] or {}
    local locationLimits = collectingLimitsByJob[playerJobName][spotKey]
    if locationLimits[locationIndex] == nil then
      locationLimits[locationIndex] = spotConfig.max
    end

    if locationLimits[locationIndex] == 0 then
      return false, locale("collecting_depleted")
    end
  end

  local function giveItems()
    -- Validate distance
    local stillNear = Utils.distanceCheck(playerSource, location, (spotConfig.radius or Config.defaultRadius) * 1.25)
    if not stillNear then
      StopCollecting(playerSource, locale("too_far"))
      return
    end

    -- Handle limits
    if spotConfig.max then
      local remaining = collectingLimitsByJob[playerJobName][spotKey][locationIndex]
      if remaining == 0 then
        StopCollecting(playerSource, locale("collecting_depleted"))
        if spotConfig.recover then
          SetTimeout(spotConfig.recover, function()
            collectingLimitsByJob[playerJobName][spotKey][locationIndex] = spotConfig.max
          end)
        end
        return
      end
      collectingLimitsByJob[playerJobName][spotKey][locationIndex] = remaining - 1
    end

    -- Prepare rewards and capacity check
    local pendingItems = {}
    for _, item in ipairs(spotConfig.items) do
      local amount = item.count
      if type(amount) ~= "number" then
        amount = math.random(item.count.min, item.count.max)
      end

      local canCarry = player:canCarryItem(item.name, amount)
      if not canCarry then
        StopCollecting(playerSource)
        return
      end

      pendingItems[#pendingItems + 1] = { name = item.name, count = amount }
    end

    -- Grant items
    for _, item in ipairs(pendingItems) do
      player:addItem(item.name, item.count)
    end

    -- Logging
    if Webhooks.settings.collecting then
      local collectedTexts = {}
      for _, item in ipairs(pendingItems) do
        collectedTexts[#collectedTexts + 1] = string.format("%sx %s", item.count, item.name)
      end
      Logs.send(playerSource, jobConfig.name, ("Collected %s."):format(table.concat(collectedTexts, ", ")))
    end
  end

  local intervalMs = (spotConfig.duration or 0) + 100
  local loopHandle = StartRepeating(giveItems, intervalMs)
  activeCollectors[playerSource] = loopHandle
  return true
end)

Collecting = {
  init = function(allJobsConfig)
    collectingJobsConfig = allJobsConfig
  end
}
