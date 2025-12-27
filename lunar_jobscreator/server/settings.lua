local settingsLoaded = false
Settings = {}

local defaultSettings = {
  interactDistance = 3.0,
  impoundPrice = 500,
  handcuffItems = true,
  handcuffsItemName = "handcuffs",
  ziptiesItemName = "zipties",
  handcuffsSkillCheck = true,
  sprintWhileDrag = false,
  disableTargetInteractions = false,
  tackleCooldown = 10000,
  tackleRadius = 2.0,
  playerActions = {
    steal = false,
    handcuff = false,
    drag = false,
    carry = false,
    bill = false,
    revive = false,
    heal = false
  },
  vehicleActions = {
    putInsideVehicle = false,
    takeOutOfVehicle = false,
    hijack = false,
    repair = false,
    clean = false,
    impound = false
  },
  durations = {
    steal = 3000,
    revive = 10000,
    heal = 5000,
    hijack = 1000,
    repair = 10000,
    clean = 10000,
    impound = 10000
  }
}

function SaveSettingsToDatabase()
  local keyValuePairs = {}
  for settingKey, settingValue in pairs(Settings) do
    local encodedValue = json.encode(settingValue)
    keyValuePairs[#keyValuePairs + 1] = {encodedValue, settingKey}
  end
  MySQL.prepare.await("UPDATE lunar_jobscreator_settings SET `value` = ? WHERE `key` = ?", keyValuePairs)
end

MySQL.ready(function()
  Wait(1000)

  for settingKey, settingValue in pairs(defaultSettings) do
    Settings[settingKey] = settingValue
    MySQL.insert.await("INSERT IGNORE INTO lunar_jobscreator_settings (`key`, `value`) VALUES (?, ?)", {
      settingKey,
      json.encode(settingValue)
    })
  end

  local storedSettings = MySQL.query.await("SELECT * FROM lunar_jobscreator_settings")
  for _, row in ipairs(storedSettings) do
    Settings[row.key] = json.decode(row.value)
  end

  settingsLoaded = true
end)

RegisterNetEvent("lunar_unijob:updateSettings", function(updatedSettings)
  local player = Framework.getPlayerFromId(source)
  if not player or not IsPlayerAdmin(player.source) then
    return
  end

  Settings = updatedSettings
  TriggerClientEvent("lunar_unijob:updateSettings", -1, updatedSettings)
  SaveSettingsToDatabase()
end)

lib.callback.register("lunar_unijob:getSettings", function()
  while not settingsLoaded do
    Wait(100)
  end
  return Settings
end)
