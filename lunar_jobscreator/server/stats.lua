local statsData = {
  onDutyCount = 0,
  lastOnDutyCount = 0,
  wealthiestJob = nil,
  jobCounts = {}
}

local statsInitialized = false
local playerJobBySource = {}
local playerDutyState = {}

function UpdateWealthiestJob()
  local jobs = GetJobs()
  local richestJob = { job = nil, balance = 0 }

  for _, job in pairs(jobs) do
    local balance = Editable.getSocietyMoney(job.name)
    if not balance then
      balance = 0
    end

    if type(balance) ~= "number" or not balance then
      local numericBalance = tonumber(balance)
      balance = numericBalance or balance
      if not numericBalance then
        balance = 0
      end
    end

    if balance >= richestJob.balance then
      richestJob = { job = job, balance = balance }
    end
  end

  if richestJob.job then
    statsData.wealthiestJob = {
      label = richestJob.job.label,
      balance = richestJob.balance
    }
  end
end

lib.callback.register("lunar_unijob:getStats", function()
  while not statsInitialized do
    Wait(100)
  end
  return statsData
end)

lib.cron.new("0 * * * *", function()
  UpdateWealthiestJob()
end)

CreateThread(function()
  while true do
    if AreJobsLoaded() then
      break
    end
    Wait(100)
  end

  local jobs = GetJobs()
  for _, job in pairs(jobs) do
    statsData.jobCounts[job.name] = 0
  end

  UpdateWealthiestJob()
  statsInitialized = true
end)

SetInterval(function()
  TriggerClientEvent("lunar_unijob:updateStats", -1, statsData)
end, 600000)

function UpdatePlayerJobStats(playerId, jobName, isOnDuty)
  local previousJobName = playerJobBySource[playerId]
  local jobs = GetJobs()

  if previousJobName == jobName then
    return
  end

  if previousJobName then
    local previousCount = statsData.jobCounts[previousJobName]
    statsData.jobCounts[previousJobName] = previousCount - 1
  end

  if jobs[jobName] then
    statsData.jobCounts[jobName] = statsData.jobCounts[jobName] or 0
    statsData.jobCounts[jobName] = statsData.jobCounts[jobName] + 1
    playerJobBySource[playerId] = jobName
  else
    playerJobBySource[playerId] = nil
  end

  if isOnDuty then
    if not playerDutyState[playerId] then
      playerDutyState[playerId] = true
      statsData.onDutyCount = statsData.onDutyCount + 1
    end
  else
    if playerDutyState[playerId] then
      playerDutyState[playerId] = nil
      statsData.onDutyCount = statsData.onDutyCount - 1
    end
  end
end

AddEventHandler("esx:setJob", function(playerId, jobData)
  if jobData.name ~= Config.UnemployedJob then
    local isOnDuty = Editable.getPlayerDuty(playerId, jobData)
    UpdatePlayerJobStats(playerId, jobData.name, isOnDuty)
  end
end)

AddEventHandler("QBCore:Server:OnJobUpdate", function(playerId, jobData)
  if jobData.name ~= Config.UnemployedJob then
    local isOnDuty = Editable.getPlayerDuty(playerId, jobData)
    UpdatePlayerJobStats(playerId, jobData.name, isOnDuty)
  end
end)

AddEventHandler("esx:playerLoaded", function(playerId, player)
  local isOnDuty = Editable.getPlayerDuty(playerId, player.job)
  UpdatePlayerJobStats(playerId, player.job.name, isOnDuty)
end)

AddEventHandler("QBCore:Server:PlayerLoaded", function(player)
  local isOnDuty = Editable.getPlayerDuty(player.PlayerData.source, player.PlayerData.job)
  UpdatePlayerJobStats(player.PlayerData.source, player.PlayerData.job.name, isOnDuty)
end)

lib.cron.new("0 * * * *", function()
  statsData.lastOnDutyCount = statsData.onDutyCount
end)

CreateThread(function()
  while not statsInitialized do
    Wait(100)
  end

  for _, player in pairs(Framework.getPlayers()) do
    local sourceId = player.source or player.PlayerData.source
    local playerJob = player.job or player.PlayerData.job
    local isOnDuty = Editable.getPlayerDuty(sourceId, playerJob)

    if Framework.name == "es_extended" then
      UpdatePlayerJobStats(player.source, player.job.name, isOnDuty)
    else
      UpdatePlayerJobStats(player.PlayerData.source, player.PlayerData.job.name, isOnDuty)
    end
  end

  TriggerClientEvent("lunar_unijob:updateStats", -1, statsData)
end)
