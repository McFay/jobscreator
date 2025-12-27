local stashesConfig = nil
local oxInventoryStarted = GetResourceState("ox_inventory") == "started"
local stashesIndexByName = {}

if oxInventoryStarted and Webhooks.settings.stashes then
  exports.ox_inventory:registerHook("swapItems", function(swapData)
    if swapData.fromInventory == swapData.toInventory then
      return
    end

    local stashName = swapData.fromType == "stash" and swapData.fromInventory or swapData.toInventory
    if type(stashName) ~= "string" then
      return
    end

    local colonIndex = stashName:find(":")
    if colonIndex then
      stashName = stashName:sub(1, colonIndex - 1)
    end

    local stashEntry = stashesIndexByName[stashName]
    if not stashEntry then
      return
    end

    local jobName = stashEntry.name
    local stashData = stashEntry.stash

    local takenItemText = nil
    local givenItemText = nil

    if swapData.fromType == "stash" then
      takenItemText = string.format("%sx %s", swapData.fromSlot.count, Utils.getItemLabel(swapData.fromSlot.name))
      if type(swapData.toSlot) == "table" then
        givenItemText = string.format("%sx %s", swapData.toSlot.count, Utils.getItemLabel(swapData.toSlot.name))
      end
    else
      givenItemText = string.format("%sx %s", swapData.fromSlot.count, Utils.getItemLabel(swapData.fromSlot.name))
      if type(swapData.toSlot) == "table" then
        takenItemText = string.format("%sx %s", swapData.toSlot.count, Utils.getItemLabel(swapData.toSlot.name))
      end
    end

    local logMessage = string.format(
      "Stash: %s (%s)\nTook: %s\nGave: %s",
      stashData.label,
      stashName,
      takenItemText or "nothing",
      givenItemText or "nothing"
    )

    Logs.send("Stash Activity", jobName, logMessage)
  end)
end

function RegisterJobStashes(jobConfig)
  if not jobConfig.stashes then
    return
  end

  for stashIndex, stashConfig in ipairs(jobConfig.stashes) do
    for locationIndex, location in ipairs(stashConfig.locations) do
      local stashName = stashConfig.name
      if not stashName then
        stashName = string.format("%s_stash_%s_%s", jobConfig.name, stashIndex, locationIndex)
      end

      Editable.registerStash(jobConfig, stashName, stashConfig, location)
      stashesIndexByName[stashName] = { name = jobConfig.name, stash = stashConfig }
    end
  end
end

function InitStashes(allJobsConfig)
  stashesConfig = allJobsConfig
  for _, jobConfig in pairs(stashesConfig) do
    RegisterJobStashes(jobConfig)
  end
end

Stashes = {
  init = InitStashes,
  update = RegisterJobStashes
}
