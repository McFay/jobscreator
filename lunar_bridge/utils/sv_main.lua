-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
L1_1 = false
function L2_1()
  local L0_2, L1_2
  L0_2 = L1_1
  if not L0_2 then
    L0_2 = true
    L1_1 = L0_2
    L0_2 = L0_1
    return L0_2
  end
end
GetUtils = L2_1
L2_1 = GetCurrentResourceName
L2_1 = L2_1()
L3_1 = tonumber
L4_1 = tostring
L5_1 = GetUtils
L4_1 = L4_1(L5_1)
L5_1 = L4_1
L4_1 = L4_1.sub
L6_1 = 11
L4_1 = L4_1(L5_1, L6_1)
L5_1 = 16
L3_1 = L3_1(L4_1, L5_1)
L0_1.id = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if not A2_2 then
    L3_2 = Config
    A2_2 = L3_2.MaxDistance
  end
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "number" ~= L3_2 then
    L3_2 = type
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if "string" ~= L3_2 then
      goto lbl_26
    end
  end
  L3_2 = GetPlayerPed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if 0 == L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  ::lbl_26::
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "number" ~= L3_2 then
    L3_2 = type
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if "string" ~= L3_2 then
      goto lbl_47
    end
  end
  L3_2 = GetPlayerPed
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if 0 == L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  ::lbl_47::
  L3_2 = A0_2.xyz
  L4_2 = A1_2.xyz
  L3_2 = L3_2 - L4_2
  L3_2 = #L3_2
  L3_2 = A2_2 >= L3_2
  return L3_2
end
L0_1.distanceCheck = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
L0_1.getTableSize = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = #A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2[L1_2]
  return L2_2
end
L0_1.randomFromTable = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = GetInvokingResource
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = "lunar_bridge"
  end
  L4_2 = Framework
  L4_2 = L4_2.getPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L5_2 = Config
  L5_2 = L5_2.Logging
  if "custom" == L5_2 then
    L5_2 = CustomLogging
    L6_2 = L4_2
    L7_2 = L3_2
    L8_2 = A2_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = {}
  L6_2 = {}
  L6_2.color = "16768885"
  L7_2 = GetPlayerName
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = " ("
  L10_2 = L4_2
  L9_2 = L4_2.getIdentifier
  L9_2 = L9_2(L10_2)
  L10_2 = ")"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
  L6_2.title = L7_2
  L6_2.description = A2_2
  L7_2 = {}
  L8_2 = os
  L8_2 = L8_2.date
  L9_2 = "%H:%M - %d. %m. %Y"
  L10_2 = os
  L10_2 = L10_2.time
  L10_2, L11_2 = L10_2()
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.text = L8_2
  L7_2.icon_url = "https://cdn.discordapp.com/attachments/793081015433560075/1048643072952647700/lunar.png"
  L6_2.footer = L7_2
  L5_2[1] = L6_2
  L6_2 = PerformHttpRequest
  L7_2 = A1_2
  function L8_2(A0_3, A1_3, A2_3)
  end
  L9_2 = "POST"
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = {}
  L11_2.username = L3_2
  L11_2.embeds = L5_2
  L10_2 = L10_2(L11_2)
  L11_2 = {}
  L11_2["Content-Type"] = "application/json"
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.logToDiscord = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = true
  L3_2 = {}
  function L4_2()
    local L0_3, L1_3
    L0_3 = false
    L2_2 = L0_3
  end
  L3_2.cancel = L4_2
  L4_2 = SetTimeout
  L5_2 = A0_2
  function L6_2()
    local L0_3, L1_3
    L0_3 = L2_2
    if L0_3 then
      L0_3 = A1_2
      L0_3()
    end
  end
  L4_2(L5_2, L6_2)
  return L3_2
end
L0_1.setTimeout = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = nil
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = {}
    L1_2 = L2_2
    L2_2 = ipairs
    L3_2 = A0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L1_2[L7_2] = true
    end
  else
    L2_2 = type
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if "string" == L2_2 then
      L2_2 = {}
      L2_2[A0_2] = true
      L1_2 = L2_2
    end
  end
  L2_2 = Framework
  L2_2 = L2_2.getPlayers
  L2_2 = L2_2()
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.job
    if L10_2 then
      L10_2 = L9_2.job
      L10_2 = L10_2.name
      if L10_2 then
        goto lbl_46
      end
    end
    L10_2 = L9_2.PlayerData
    L10_2 = L10_2.job
    L10_2 = L10_2.name
    ::lbl_46::
    L11_2 = L9_2.job
    if L11_2 then
      L11_2 = true
      if L11_2 then
        goto lbl_55
      end
    end
    L11_2 = L9_2.PlayerData
    L11_2 = L11_2.job
    L11_2 = L11_2.onduty
    ::lbl_55::
    if nil ~= L10_2 and L11_2 then
      L12_2 = L1_2[L10_2]
      if true == L12_2 then
        L3_2 = L3_2 + 1
      end
    end
  end
  return L3_2
end
L0_1.getJobCount = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1.getJobCount
  L1_2 = Config
  L1_2 = L1_2.Dispatch
  L1_2 = L1_2.Jobs
  return L0_2(L1_2)
end
L0_1.getPoliceCount = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "string" == L3_2 then
    L3_2 = {}
    L4_2 = A1_2
    L3_2[1] = L4_2
    A1_2 = L3_2
  end
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L10_2 = L2_2
    L9_2 = L2_2.getJob
    L9_2 = L9_2(L10_2)
    if L9_2 == L8_2 then
      L9_2 = true
      return L9_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1.hasJobs = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.hasJobs
  L2_2 = A0_2
  L3_2 = Config
  L3_2 = L3_2.Dispatch
  L3_2 = L3_2.Jobs
  return L1_2(L2_2, L3_2)
end
L0_1.isPolice = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetResourceMetadata
  L2_2 = A0_2
  L3_2 = "version"
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.match
    L4_2 = "%d+%.%d+%.%d+"
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  if not L1_2 then
    L2_2 = error
    L3_2 = "Unable to determine %s version."
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = A0_2
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    return L2_2(L3_2, L4_2, L5_2)
  end
  return L1_2
end
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = "https://raw.githubusercontent.com/Lunar-Scripts/versions/main/%s"
    L1_3 = L0_3
    L0_3 = L0_3.format
    L2_3 = A0_2
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = Wait
    L2_3 = 5000
    L1_3(L2_3)
    L1_3 = PerformHttpRequest
    L2_3 = L0_3
    function L3_3(A0_4, A1_4, A2_4)
      local L3_4, L4_4, L5_4, L6_4, L7_4
      L3_4 = L3_1
      L4_4 = A0_2
      L3_4 = L3_4(L4_4)
      if not A1_4 then
        L4_4 = warn
        L5_4 = "Couldn't check version for resource: %s"
        L6_4 = L5_4
        L5_4 = L5_4.format
        L7_4 = A0_2
        L5_4, L6_4, L7_4 = L5_4(L6_4, L7_4)
        L4_4(L5_4, L6_4, L7_4)
        return
      end
      L5_4 = A1_4
      L4_4 = A1_4.sub
      L6_4 = 1
      L7_4 = 5
      L4_4 = L4_4(L5_4, L6_4, L7_4)
      A1_4 = L4_4
      if L3_4 ~= A1_4 then
        L4_4 = print
        L5_4 = "^0[^3WARNING^0] %s is outdated and should be updated!"
        L6_4 = L5_4
        L5_4 = L5_4.format
        L7_4 = A0_2
        L5_4, L6_4, L7_4 = L5_4(L6_4, L7_4)
        L4_4(L5_4, L6_4, L7_4)
        L4_4 = print
        L5_4 = "^0[^3WARNING^0] Download the latest version ^5%s^0 through keymaster."
        L6_4 = L5_4
        L5_4 = L5_4.format
        L7_4 = A1_4
        L5_4, L6_4, L7_4 = L5_4(L6_4, L7_4)
        L4_4(L5_4, L6_4, L7_4)
      else
        L4_4 = print
        L5_4 = "^0[^2INFO^0] %s is up-to-date."
        L6_4 = L5_4
        L5_4 = L5_4.format
        L7_4 = A0_2
        L5_4, L6_4, L7_4 = L5_4(L6_4, L7_4)
        L4_4(L5_4, L6_4, L7_4)
      end
    end
    L4_3 = "GET"
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2(L2_2)
end
L0_1.checkVersion = L4_1
L4_1 = CreateThread
function L5_1()
  local L0_2, L1_2
  L0_2 = L0_1.checkVersion
  L1_2 = "lunar_bridge"
  L0_2(L1_2)
end
L4_1(L5_1)
L4_1 = nil
L5_1 = nil
L6_1 = CreateThread
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  while true do
    L0_2 = L4_1
    if L0_2 then
      L0_2 = L0_1.getTableSize
      L1_2 = L4_1
      L0_2 = L0_2(L1_2)
      if 0 ~= L0_2 then
        break
      end
    end
    L0_2 = Framework
    L0_2 = L0_2.getItems
    L0_2 = L0_2()
    L1_2 = {}
    L2_2 = pairs
    L3_2 = L0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.name
      if not L8_2 then
        L8_2 = L6_2
      end
      L9_2 = L7_2.label
      if not L9_2 then
        L9_2 = "NULL"
      end
      L1_2[L8_2] = L9_2
    end
    L4_1 = L1_2
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
  end
  L0_2 = true
  L5_1 = L0_2
end
L6_1(L7_1)
L6_1 = lib
L6_1 = L6_1.callback
L6_1 = L6_1.register
L7_1 = "lunar_bridge:getItemLabels"
function L8_1()
  local L0_2, L1_2
  while true do
    L0_2 = L5_1
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  L0_2 = L4_1
  return L0_2
end
L6_1(L7_1, L8_1)
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L4_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.upper
    L1_2 = L1_2(L2_2)
    L2_2 = L4_1
    L1_2 = L2_2[L1_2]
    if not L1_2 then
      L1_2 = "ITEM_NOT_FOUND"
    end
  end
  return L1_2
end
L0_1.getItemLabel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = "https://lunar-scripts.com/%s"
  L2_2 = L1_2
  L1_2 = L1_2.format
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1.getImageUrl = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = math
  L5_2 = L5_2.rad
  L6_2 = A0_2.w
  L5_2 = L5_2(L6_2)
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L6_2 = A1_2 * L6_2
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L7_2 = A2_2 * L7_2
  L6_2 = L6_2 - L7_2
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L7_2 = A1_2 * L7_2
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L8_2 = A2_2 * L8_2
  L7_2 = L7_2 + L8_2
  L8_2 = A3_2
  L9_2 = A0_2.x
  L9_2 = L9_2 + L6_2
  L10_2 = A0_2.y
  L10_2 = L10_2 + L7_2
  L11_2 = A0_2.z
  L11_2 = L11_2 + L8_2
  L12_2 = vector4
  L13_2 = L9_2
  L14_2 = L10_2
  L15_2 = L11_2
  L16_2 = A0_2.w
  L17_2 = A4_2 or L17_2
  if not A4_2 then
    L17_2 = 0.0
  end
  L16_2 = L16_2 + L17_2
  return L12_2(L13_2, L14_2, L15_2, L16_2)
end
L0_1.offsetCoords = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = CreateVehicleServerSetter
  L4_2 = A0_2
  L5_2 = A2_2
  L6_2 = A1_2.x
  L7_2 = A1_2.y
  L8_2 = A1_2.z
  L8_2 = L8_2 - 0.7
  L9_2 = A1_2.w
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = -1
  L5_2 = 6
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = GetPedInVehicleSeat
    L9_2 = L3_2
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = GetEntityPopulationType
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 > 0 and L9_2 < 6 then
      L10_2 = DeleteEntity
      L11_2 = L8_2
      L10_2(L11_2)
    end
  end
  return L3_2
end
L0_1.createVehicle = L6_1
