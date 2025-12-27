
Webhooks = {}

local defaultWebhookSettings = {
  alarms = false,
  collecting = false,
  crafting = true,
  vehicleBought = true,
  registers = true,
  selling = true,
  shops = true,
  stashes = true
}

local function loadStoredWebhookSettings()
  local storedSettingsJson = GetResourceKvpString("webhookSettings")
  if not storedSettingsJson then
    return defaultWebhookSettings
  end

  local decodedSettings = json.decode(storedSettingsJson)
  if decodedSettings then
    return decodedSettings
  end

  return defaultWebhookSettings
end

Webhooks.globalWebhook = GetResourceKvpString("webhook")
Webhooks.settings = loadStoredWebhookSettings()
Webhooks.jobs = {}

local function loadJobWebhooksFromDatabase()
  Wait(1000)
  local webhookRows = MySQL.query.await("SELECT * FROM lunar_jobscreator_webhooks")
  for _, row in ipairs(webhookRows) do
    Webhooks.jobs[row.name] = row.url
  end
end

MySQL.ready(function()
  loadJobWebhooksFromDatabase()
end)

lib.callback.register("lunar_unijob:getWebhookData", function(playerSource)
  local player = Framework.getPlayerFromId(playerSource)
  if player and IsPlayerAdmin(player.source) then
    return Webhooks
  end
end)

RegisterNetEvent("lunar_unijob:updateWebhookData", function(updatedWebhookData)
  local player = Framework.getPlayerFromId(source)
  if not player or not IsPlayerAdmin(player.source) then
    return
  end

  Webhooks.globalWebhook = updatedWebhookData.globalWebhook
  Webhooks.settings = updatedWebhookData.settings

  if updatedWebhookData.globalWebhook then
    SetResourceKvp("webhook", updatedWebhookData.globalWebhook)
  end

  if updatedWebhookData.settings then
    SetResourceKvp("webhookSettings", json.encode(updatedWebhookData.settings))
  end
end)

RegisterNetEvent("lunar_unijob:updateJobWebhook", function(jobName, webhookUrl)
  local player = Framework.getPlayerFromId(source)
  if not player or not IsPlayerAdmin(player.source) then
    return
  end

  if webhookUrl:len() == 0 then
    return
  end

  Webhooks.jobs[jobName] = webhookUrl
  MySQL.update.await(
    "INSERT INTO lunar_jobscreator_webhooks (name, url) VALUES(?, ?) ON DUPLICATE KEY UPDATE url = VALUES(url)",
    {jobName, webhookUrl}
  )
end)
