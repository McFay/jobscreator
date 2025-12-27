local animationZonesConfig = nil
local animationZonesByKey = {}

lib.callback.register("lunar_unijob:startAnimation", function(playerSource, zoneKey)
  local player = Framework.getPlayerFromId(playerSource)
  if not player then
    return false
  end

  local zoneEntry = animationZonesByKey[zoneKey]
  if not zoneEntry then
    return false
  end

  local occupant = zoneEntry.occupant
  if occupant then
    return false
  end

  local isGlobal = zoneEntry.zone.global
  local playerJob = player:getJob()
  if not isGlobal and playerJob ~= zoneEntry.job.name then
    return false
  end

  zoneEntry.occupant = playerSource
  return true
end)

RegisterNetEvent("lunar_unijob:stopAnimation", function(zoneKey)
  local playerSource = source
  local zoneEntry = animationZonesByKey[zoneKey]
  if zoneEntry and zoneEntry.occupant == playerSource then
    zoneEntry.occupant = nil
  end
end)

local function RegisterJobAnimationZones(jobConfig)
  if not jobConfig.animationZones then
    return
  end

  for zoneIndex, animationZone in ipairs(jobConfig.animationZones) do
    for locationIndex in ipairs(animationZone.locations) do
      local zoneKey = string.format("%s_%s_%s", jobConfig.name, zoneIndex, locationIndex)
      animationZonesByKey[zoneKey] = { job = jobConfig, zone = animationZone, occupant = nil }
    end
  end
end

function InitAnimationZones(allJobsConfig)
  animationZonesConfig = allJobsConfig
  for _, jobConfig in pairs(animationZonesConfig) do
    RegisterJobAnimationZones(jobConfig)
  end
end

function UpdateJobAnimationZones(jobConfig)
  RegisterJobAnimationZones(jobConfig)
end

AnimationZones = {
  init = InitAnimationZones,
  update = UpdateJobAnimationZones
}
