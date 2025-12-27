-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
UI = L0_1
L0_1 = UI
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = A0_2
  L3_2.data = A1_2
  L2_2(L3_2)
end
L0_1.sendMessage = L1_1
L0_1 = UI
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = UI
  L1_2 = L1_2.sendMessage
  L2_2 = "updateJob"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.updateJob = L1_1
L0_1 = UI
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = UI
  L1_2 = L1_2.sendMessage
  L2_2 = "removeJob"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.removeJob = L1_1
L0_1 = UI
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L1_2[L8_2] = L7_2
  end
  L2_2 = UI
  L2_2 = L2_2.sendMessage
  L3_2 = "updateJobs"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1.updateJobs = L1_1
L0_1 = RegisterNUICallback
L1_1 = "getJobs"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = GetJobs
  L2_2 = L2_2()
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = #L3_2
    L10_2 = L10_2 + 1
    L3_2[L10_2] = L9_2
  end
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "createJob"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "lunar_unijob:createJob"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updateJobField"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A0_2
  L2_2 = L5_2.name
  L3_2 = L5_2.field
  L4_2 = L5_2.data
  L5_2 = TriggerServerEvent
  L6_2 = "lunar_unijob:updateJobField"
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A1_2
  L6_2 = {}
  L5_2(L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updateJob"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "lunar_unijob:updateJob"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "removeJob"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "lunar_unijob:removeJob"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "hideFrame"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updateWebhookData"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "lunar_unijob:updateWebhookData"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updateJobWebhook"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "lunar_unijob:updateJobWebhook"
  L4_2 = A0_2.name
  L5_2 = A0_2.url
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = nil
L1_1 = lib
L1_1 = L1_1.callback
L2_1 = "lunar_unijob:getHistory"
L3_1 = false
function L4_1(A0_2)
  local L1_2
  L0_1 = A0_2
end
L1_1(L2_1, L3_1, L4_1)
L1_1 = RegisterNetEvent
L2_1 = "lunar_unijob:updateHistory"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L0_1 = A0_2
  L1_2 = UI
  L1_2 = L1_2.sendMessage
  L2_2 = "updateHistory"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "getHistory"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  while true do
    L2_2 = L0_1
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = A1_2
  L3_2 = L0_1
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = nil
L2_1 = lib
L2_1 = L2_1.callback
L3_1 = "lunar_unijob:getStats"
L4_1 = false
function L5_1(A0_2)
  local L1_2
  L1_1 = A0_2
end
L2_1(L3_1, L4_1, L5_1)
L2_1 = RegisterNUICallback
L3_1 = "getStats"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  while true do
    L2_2 = L1_1
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = A1_2
  L3_2 = L1_1
  L2_2(L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "lunar_unijob:updateStats"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_1 = A0_2
  L1_2 = UI
  L1_2 = L1_2.sendMessage
  L2_2 = "updateStats"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "getFramework"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = Framework
  L3_2 = L3_2.name
  L2_2(L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "getLanguage"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = Config
  L3_2 = L3_2.uiLanguage
  L2_2(L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "getProfile"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L3_2 = {}
  L4_2 = cache
  L4_2 = L4_2.serverId
  L3_2.serverId = L4_2
  L4_2 = GetPlayerName
  L5_2 = cache
  L5_2 = L5_2.playerId
  L4_2 = L4_2(L5_2)
  L3_2.username = L4_2
  L3_2.avatarUrl = nil
  L2_2(L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = false
L3_1 = RegisterCommand
L4_1 = Config
L4_1 = L4_1.command
if not L4_1 then
  L4_1 = "jobscreator"
end
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = lib
  L0_2 = L0_2.callback
  L0_2 = L0_2.await
  L1_2 = "lunar_unijob:getWebhookData"
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    return
  end
  L1_2 = L2_1
  if not L1_2 then
    L1_2 = lib
    L1_2 = L1_2.callback
    L2_2 = "lunar_unijob:getDiscordIcon"
    L3_2 = false
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      L1_3 = UI
      L1_3 = L1_3.sendMessage
      L2_3 = "updateProfile"
      L3_3 = {}
      L4_3 = cache
      L4_3 = L4_3.serverId
      L3_3.serverId = L4_3
      L4_3 = GetPlayerName
      L5_3 = cache
      L5_3 = L5_3.playerId
      L4_3 = L4_3(L5_3)
      L3_3.username = L4_3
      L3_3.avatarUrl = A0_3
      L1_3(L2_3, L3_3)
    end
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = true
    L2_1 = L1_2
  end
  L1_2 = UI
  L1_2 = L1_2.sendMessage
  L2_2 = "updateWebhookData"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = UI
  L1_2 = L1_2.sendMessage
  L2_2 = "open"
  L1_2(L2_2)
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterCommand
L4_1 = "edit"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "lunar_unijob:getWebhookData"
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L4_2 = A1_2[1]
  L5_2 = GetJobs
  L5_2 = L5_2()
  L6_2 = L5_2[L4_2]
  if not L6_2 then
    L6_2 = LR
    L6_2 = L6_2.notify
    L7_2 = locale
    L8_2 = "invalid_job_name"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = UI
  L6_2 = L6_2.sendMessage
  L7_2 = "updateWebhookData"
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = UI
  L6_2 = L6_2.sendMessage
  L7_2 = "openEditJob"
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = UI
  L6_2 = L6_2.sendMessage
  L7_2 = "open"
  L6_2(L7_2)
  L6_2 = SetNuiFocus
  L7_2 = true
  L8_2 = true
  L6_2(L7_2, L8_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "teleport"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L3_2 = RequestCollisionAtCoord
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L6_2 = L2_2.z
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Wait
  L4_2 = 500
  L3_2(L4_2)
  L3_2 = SetEntityCoords
  L4_2 = cache
  L4_2 = L4_2.ped
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L7_2 = L7_2 + 1.0
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L2_2.w
  if L3_2 then
    L3_2 = SetEntityHeading
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = L2_2.w
    L3_2(L4_2, L5_2)
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L3_1(L4_1, L5_1)
