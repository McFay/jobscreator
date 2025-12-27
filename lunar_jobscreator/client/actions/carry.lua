-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = nil
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetPlayerFromServerId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = senderPed
  if 0 == L2_2 then
    return
  end
  L2_2 = GetPlayerPed
  L3_2 = L1_2
  return L2_2(L3_2)
end
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "lunar_unijob:stopCarry"
    L0_2(L1_2)
    L0_2 = Binds
    L0_2 = L0_2.interact
    L0_2 = L0_2.removeListener
    L1_2 = "stop_carry"
    L0_2(L1_2)
  end
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = Binds
  L0_2 = L0_2.interact
  L0_2 = L0_2.addListener
  L1_2 = "stop_carry"
  L2_2 = L2_1
  L0_2(L1_2, L2_2)
  L0_2 = LR
  L0_2 = L0_2.showUI
  L1_2 = locale
  L2_2 = "stop_carrying"
  L3_2 = Binds
  L3_2 = L3_2.interact
  L4_2 = L3_2
  L3_2 = L3_2.getCurrentKey
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  while true do
    L0_2 = L0_1
    if not L0_2 then
      break
    end
    L0_2 = IsEntityPlayingAnim
    L1_2 = cache
    L1_2 = L1_2.ped
    L2_2 = "missfinale_c2mcs_1"
    L3_2 = "fin_c2_mcs_1_camman"
    L4_2 = 3
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    if not L0_2 then
      L0_2 = lib
      L0_2 = L0_2.requestAnimDict
      L1_2 = "missfinale_c2mcs_1"
      L0_2(L1_2)
      L0_2 = TaskPlayAnim
      L1_2 = cache
      L1_2 = L1_2.ped
      L2_2 = "missfinale_c2mcs_1"
      L3_2 = "fin_c2_mcs_1_camman"
      L4_2 = 8.0
      L5_2 = -8.0
      L6_2 = -1
      L7_2 = 49
      L8_2 = 0
      L9_2 = false
      L10_2 = false
      L11_2 = false
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L0_2 = RemoveAnimDict
      L1_2 = "missfinale_c2mcs_1"
      L0_2(L1_2)
    end
    L0_2 = Wait
    L1_2 = 200
    L0_2(L1_2)
  end
  L0_2 = LR
  L0_2 = L0_2.hideUI
  L0_2()
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = Binds
  L0_2 = L0_2.interact
  L0_2 = L0_2.addListener
  L1_2 = "stop_carry"
  L2_2 = L2_1
  L0_2(L1_2, L2_2)
  L0_2 = LR
  L0_2 = L0_2.showUI
  L1_2 = locale
  L2_2 = "stop_carried"
  L3_2 = Binds
  L3_2 = L3_2.interact
  L4_2 = L3_2
  L3_2 = L3_2.getCurrentKey
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  while true do
    L0_2 = L0_1
    if not L0_2 then
      break
    end
    L0_2 = IsEntityPlayingAnim
    L1_2 = cache
    L1_2 = L1_2.ped
    L2_2 = "nm"
    L3_2 = "firemans_carry"
    L4_2 = 3
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    if not L0_2 then
      L0_2 = lib
      L0_2 = L0_2.requestAnimDict
      L1_2 = "nm"
      L0_2(L1_2)
      L0_2 = TaskPlayAnim
      L1_2 = cache
      L1_2 = L1_2.ped
      L2_2 = "nm"
      L3_2 = "firemans_carry"
      L4_2 = 8.0
      L5_2 = -8.0
      L6_2 = -1
      L7_2 = 33
      L8_2 = 0
      L9_2 = false
      L10_2 = false
      L11_2 = false
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L0_2 = RemoveAnimDict
      L1_2 = "nm"
      L0_2(L1_2)
    end
    L0_2 = IsPlayerDead
    L1_2 = cache
    L1_2 = L1_2.playerId
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = L2_1
      L0_2()
      break
    end
    L0_2 = Wait
    L1_2 = 200
    L0_2(L1_2)
  end
  L0_2 = LR
  L0_2 = L0_2.hideUI
  L0_2()
end
L5_1 = Actions
L5_1 = L5_1.createPlayer
L6_1 = "carry"
L7_1 = "hands"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L0_1 = A0_2
  L1_2 = TriggerServerEvent
  L2_2 = "lunar_unijob:carry"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = CreateThread
  L2_2 = L3_1
  L1_2(L2_2)
  L1_2 = Editable
  L1_2 = L1_2.actionPerformed
  L2_2 = "carry"
  L1_2(L2_2)
end
L5_1(L6_1, L7_1, L8_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_unijob:syncCarry"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_1 = A0_2
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = AttachEntityToEntity
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = L1_2
  L5_2 = 0
  L6_2 = 0.27
  L7_2 = 0.15
  L8_2 = 0.63
  L9_2 = 0.5
  L10_2 = 0.5
  L11_2 = 180
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = 2
  L17_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L2_2 = CreateThread
  L3_2 = L4_1
  L2_2(L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_unijob:stopCarry"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = nil
  L0_1 = L1_2
  if A0_2 then
    L1_2 = DetachEntity
    L2_2 = cache
    L2_2 = L2_2.ped
    L1_2(L2_2)
  end
  L1_2 = ClearPedSecondaryTask
  L2_2 = cache
  L2_2 = L2_2.ped
  L1_2(L2_2)
end
L5_1(L6_1, L7_1)
function L5_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = nil ~= L0_2
  return L0_2
end
IsCarryActive = L5_1
