-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local collectableJobsConfig = nil
local activeCollectables = {}
local collectableRequestsByPlayer = {}

lib.callback.register("lunar_unijob:getCollectables", function(playerSource)
  if collectableRequestsByPlayer[playerSource] then
    return
  end
  collectableRequestsByPlayer[playerSource] = true

  local collectableSummaries = {}
  for _, collectableData in pairs(activeCollectables) do
    collectableSummaries[#collectableSummaries + 1] = {
      spawned = collectableData.spawned,
      jobName = collectableData.job.name,
      index = collectableData.index,
      locationIndex = collectableData.locationIndex
    }
  end

  return collectableSummaries
end)

local function CanCarryAllItems(player, items)
  for _, item in ipairs(items) do
    local amount = item.count
    if type(amount) == "table" then
      amount = amount.max or item.count
    end

    local canCarry = player:canCarryItem(item.name, amount)
    if not canCarry then
      return false
    end
  end
  return true
end

lib.callback.register("lunar_unijob:harvestCollectable", function(playerSource, collectableKey, spawnedIndex)
  local collectableData = activeCollectables[collectableKey]
  local player = Framework.getPlayerFromId(playerSource)
  local spawnedPosition = collectableData and collectableData.spawned[spawnedIndex]

  if not (collectableData and spawnedPosition and player) then
    return
  end

  local playerJobName = player:getJob()
  local isJobMatch = collectableKey:find(playerJobName, 1, true)
  if not isJobMatch then
    return
  end

  local playerCoords = GetEntityCoords(GetPlayerPed(playerSource)).xy
  local distance = #(spawnedPosition.xy - playerCoords)
  if distance > 10.0 then
    return
  end

  local canCarryAll = CanCarryAllItems(player, collectableData.data.items)
  if not canCarryAll then
    return
  end

  SetTimeout(collectableData.data.duration, function()
    local freshCollectableData = activeCollectables[collectableKey]
    if not (freshCollectableData and freshCollectableData.spawned[spawnedIndex]) then
      return
    end

    if not CanCarryAllItems(player, collectableData.data.items) then
      return
    end

    freshCollectableData.spawned[spawnedIndex] = nil

    for _, itemData in ipairs(collectableData.data.items) do
      local amount = itemData.count
      if type(amount) ~= "number" then
        amount = math.random(itemData.count.min, itemData.count.max)
      end
      player:addItem(itemData.name, amount)
    end

    TriggerClientEvent("lunar_unijob:removeCollectable", -1, collectableKey, spawnedIndex)
  end)

  return true
end)

local function RegisterJobAdvancedCollecting(jobConfig)
  local removedKeys = {}
  for collectableKey, collectableData in pairs(activeCollectables) do
    if collectableKey:find(jobConfig.name, 1, true) then
      ClearInterval(collectableData.interval)
      activeCollectables[collectableKey] = nil
      removedKeys[#removedKeys + 1] = collectableKey
    end
  end

  if #removedKeys > 0 then
    TriggerClientEvent("lunar_unijob:clearAdvancedCollecting", -1, removedKeys)
  end

  if not jobConfig.advancedCollecting then
    return
  end

  for collectableIndex, collectable in ipairs(jobConfig.advancedCollecting) do
    for locationIndex, location in ipairs(collectable.locations) do
      local collectableKey = string.format("%s_%s_%s", jobConfig.name, collectableIndex, locationIndex)
      activeCollectables[collectableKey] = {
        spawned = {},
        data = collectable,
        index = collectableIndex,
        locationIndex = locationIndex,
        job = jobConfig
      }

      local collectableEntry = activeCollectables[collectableKey]
      collectableEntry.interval = SetInterval(function()
        local spawnedPositions = collectableEntry.spawned

        if collectable.maxSpawned then
          local currentCount = Utils.getTableSize(spawnedPositions)
          if currentCount == collectable.maxSpawned then
            return
          end
        end

        local targetCoords = collectable.coords
        if not targetCoords then
          return
        end

        local spawnCoords
        local foundSpot = false
        local attempts = 0
        local maxAttempts = 20

        while not foundSpot and attempts < maxAttempts do
          attempts = attempts + 1
          local radius = collectable.radius
          local randomOffsetX = (math.random() * (radius * 2)) - radius
          local randomOffsetY = (math.random() * (radius * 2)) - radius
          spawnCoords = vector3(
            targetCoords.x + randomOffsetX,
            targetCoords.y + randomOffsetY,
            targetCoords.z
          )

          foundSpot = true
          for _, existingCoords in pairs(spawnedPositions) do
            local distance = #(spawnCoords.xy - existingCoords.xy)
            if distance < 1.0 then
              foundSpot = false
              break
            end
          end
        end

        if not foundSpot then
          return
        end

        local spawnIndex = #spawnedPositions + 1
        TriggerClientEvent("lunar_unijob:spawnCollectable", -1, jobConfig.name, collectableIndex, locationIndex, spawnCoords, spawnIndex)
        spawnedPositions[spawnIndex] = spawnCoords
      end, collectable.interval)
    end
  end
end

function InitAdvancedCollecting(allJobsConfig)
  collectableJobsConfig = allJobsConfig
  for _, jobConfig in pairs(collectableJobsConfig) do
    RegisterJobAdvancedCollecting(jobConfig)
  end
end

function UpdateJobAdvancedCollecting(jobConfig)
  RegisterJobAdvancedCollecting(jobConfig)
end

AdvancedCollecting = {
  init = InitAdvancedCollecting,
  update = UpdateJobAdvancedCollecting
}
