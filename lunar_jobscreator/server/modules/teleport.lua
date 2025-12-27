local playersInTeleport = {}

RegisterNetEvent("lunar_unijob:teleport", function(teleportName)
  local playerSource = source
  local player = Framework.getPlayerFromId(playerSource)
  if not player then
    return
  end

  local jobs = GetJobs()
  local playerJobName = player:getJob()
  local jobData = jobs[playerJobName]
  if not jobData or not jobData.teleports then
    return
  end

  local teleportData = jobData.teleports[teleportName]
  if not teleportData then
    return
  end

  local alreadyValidated = playersInTeleport[playerSource]
  if not alreadyValidated then
    local isNearStart = Utils.distanceCheck(playerSource, teleportData.from.coords, 10.0)
    if not isNearStart then
      return
    end
  end

  playersInTeleport[playerSource] = true

  if teleportData.routingBucket then
    SetPlayerRoutingBucket(playerSource, teleportData.routingBucket)
  end
end)

RegisterNetEvent("lunar_unijob:exitTeleport", function()
  local playerSource = source
  if playersInTeleport[playerSource] then
    playersInTeleport[playerSource] = nil
    SetPlayerRoutingBucket(playerSource, 0)
  end
end)
