-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = nil
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "lunar_unijob:drag"
    L0_2(L1_2)
    L0_2 = Binds
    L0_2 = L0_2.interact
    L0_2 = L0_2.removeListener
    L1_2 = "stop_drag"
    L0_2(L1_2)
    L0_2 = ClearPedSecondaryTask
    L1_2 = cache
    L1_2 = L1_2.ped
    L0_2(L1_2)
    L0_2 = LR
    L0_2 = L0_2.hideUI
    L0_2()
    L0_2 = nil
    L0_1 = L0_2
  end
end
StopDrag = L1_1
L1_1 = "amb@world_human_drinking@coffee@male@base"
L2_1 = "base"
L3_1 = SetInterval
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = L0_1
  if not L0_2 then
    return
  end
  L0_2 = DoesEntityExist
  L1_2 = L0_1
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = IsEntityDead
    L1_2 = L0_1
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      goto lbl_19
    end
  end
  L0_2 = StopDrag
  L0_2()
  L0_2 = nil
  L0_1 = L0_2
  ::lbl_19::
  L0_2 = IsEntityPlayingAnim
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = L1_1
  L3_2 = L2_1
  L4_2 = 3
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  if not L0_2 then
    L0_2 = lib
    L0_2 = L0_2.requestAnimDict
    L1_2 = L1_1
    L0_2(L1_2)
    L0_2 = TaskPlayAnim
    L1_2 = cache
    L1_2 = L1_2.ped
    L2_2 = L1_1
    L3_2 = L2_1
    L4_2 = 4.0
    L5_2 = 4.0
    L6_2 = -1
    L7_2 = 49
    L8_2 = 0.0
    L9_2 = false
    L10_2 = false
    L11_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L0_2 = RemoveAnimDict
    L1_2 = L1_1
    L0_2(L1_2)
  end
end
L5_1 = 200
L3_1(L4_1, L5_1)
L3_1 = Settings
L3_1 = L3_1.sprintWhileDrag
if not L3_1 then
  L3_1 = CreateThread
  function L4_1()
    local L0_2, L1_2, L2_2
    while true do
      L0_2 = L0_1
      if L0_2 then
        L0_2 = DisableControlAction
        L1_2 = 0
        L2_2 = 21
        L0_2(L1_2, L2_2)
        L0_2 = SetPlayerSprint
        L1_2 = cache
        L1_2 = L1_2.playerId
        L2_2 = false
        L0_2(L1_2, L2_2)
        L0_2 = Wait
        L1_2 = 0
        L0_2(L1_2)
      else
        L0_2 = Wait
        L1_2 = 500
        L0_2(L1_2)
      end
    end
  end
  L3_1(L4_1)
end
L3_1 = Actions
L3_1 = L3_1.createPlayer
L4_1 = "drag"
L5_1 = "hand"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerServerEvent
  L3_2 = "lunar_unijob:drag"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = LR
  L2_2 = L2_2.showUI
  L3_2 = locale
  L4_2 = "stop_drag"
  L5_2 = Binds
  L5_2 = L5_2.interact
  L6_2 = L5_2
  L5_2 = L5_2.getCurrentKey
  L5_2, L6_2 = L5_2(L6_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = Binds
  L2_2 = L2_2.interact
  L2_2 = L2_2.addListener
  L3_2 = "stop_drag"
  L4_2 = StopDrag
  L2_2(L3_2, L4_2)
  L2_2 = Editable
  L2_2 = L2_2.actionPerformed
  L3_2 = "drag"
  L2_2(L3_2)
  L0_1 = A1_2
end
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = IsPedCuffed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = IsCarryActive
    L1_2 = L1_2()
    L1_2 = not L1_2
  end
  return L1_2
end
L3_1(L4_1, L5_1, L6_1, L7_1)
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1
  return L0_2
end
GetDraggedPed = L3_1
