local historyEntries = {}
local historyLoaded = false
local historyRequests = {}

function GetUnixTimestamp()
  return os.time()
end

MySQL.ready(function()
  Wait(1000)

  local currentTime = GetUnixTimestamp()
  local cutoffTime = currentTime - 172800

  historyEntries = MySQL.query.await("SELECT * FROM lunar_jobscreator_history WHERE timestamp >= ?", {cutoffTime})
  MySQL.query.await("DELETE FROM lunar_jobscreator_history WHERE timestamp < ?", {cutoffTime})

  historyLoaded = true
end)

lib.callback.register("lunar_unijob:getHistory", function(playerSource)
  if historyRequests[playerSource] then
    return
  end
  historyRequests[playerSource] = true

  while not historyLoaded do
    Wait(0)
  end

  return historyEntries
end)

function AddHistoryLog(playerSource, action)
  local historyRecord = {
    username = GetPlayerName(playerSource),
    action = action,
    timestamp = GetUnixTimestamp()
  }

  historyEntries[#historyEntries + 1] = historyRecord

  MySQL.insert.await(
    "INSERT INTO lunar_jobscreator_history (username, action, timestamp) VALUES (?, ?, ?)",
    {historyRecord.username, historyRecord.action, historyRecord.timestamp}
  )

  TriggerClientEvent("lunar_unijob:updateHistory", -1, historyEntries)
end
