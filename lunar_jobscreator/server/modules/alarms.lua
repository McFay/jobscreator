local alarmsConfig = nil
local alarmCooldownsByJob = {}

lib.callback.register("lunar_unijob:triggerAlarm", function(playerSource, alarmPayload)
  local player = Framework.getPlayerFromId(playerSource)
  local jobName = alarmPayload.job
  local jobConfig = alarmsConfig and alarmsConfig[jobName]
  local alarmData = jobConfig and jobConfig.alarms and jobConfig.alarms[alarmPayload.index]
  if not player or not alarmData then
    return
  end

  local jobCooldowns = alarmCooldownsByJob[jobName]
  if jobCooldowns[alarmPayload.index] then
    return
  end

  local playerJob = player:getJob()
  if playerJob ~= jobName and not alarmData.global then
    return false
  end

  jobCooldowns[alarmPayload.index] = true
  SetTimeout(alarmData.cooldown, function()
    jobCooldowns[alarmPayload.index] = nil
  end)

  Dispatch.call(
    alarmData.locations[alarmPayload.locationIndex].xyz,
    {
      Code = Config.alarmCode,
      Title = locale("dispatch_alarm"),
      Message = locale("dispatch_alarm_desc", jobConfig.label)
    }
  )

  if Webhooks.settings.alarms then
    Logs.send(playerSource, jobConfig.name, ("Triggered the alarm inside %s."):format(jobConfig.label))
  end

  return true
end)

function InitAlarms(allJobsConfig)
  alarmsConfig = allJobsConfig
  for _, jobConfig in pairs(alarmsConfig) do
    alarmCooldownsByJob[jobConfig.name] = {}
  end
end

function UpdateJobAlarms(jobConfig)
  alarmCooldownsByJob[jobConfig.name] = {}
end

Alarms = {
  init = InitAlarms,
  update = UpdateJobAlarms
}
