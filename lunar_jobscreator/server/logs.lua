
local logsTable = {}
Logs = logsTable

function SendLogToWebhooks(title, jobName, message)
  local jobWebhook = Webhooks.jobs[jobName]
  if jobWebhook and jobWebhook ~= "" then
    Utils.logToDiscord(title, jobWebhook, message)
  end

  local globalWebhook = Webhooks.globalWebhook
  if globalWebhook and globalWebhook ~= "" then
    Utils.logToDiscord(title, globalWebhook, message)
  end
end

logsTable.send = SendLogToWebhooks
