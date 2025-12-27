-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = "missmic2ig_11"
L1_1 = "mic_2_ig_11_intro_goon"
L2_1 = "mic_2_ig_11_intro_p_one"
L3_1 = false
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = HasAccess
  L1_2 = "tackle"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = L3_1
    if not L0_2 then
      L0_2 = IsPedInAnyVehicle
      L1_2 = cache
      L1_2 = L1_2.ped
      L2_2 = true
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        L0_2 = IsPedSprinting
        L1_2 = cache
        L1_2 = L1_2.ped
        L0_2 = L0_2(L1_2)
        if L0_2 then
          goto lbl_23
        end
      end
    end
  end
  do return end
  ::lbl_23::
  L0_2 = GetEntityForwardVector
  L1_2 = cache
  L1_2 = L1_2.ped
  L0_2 = L0_2(L1_2)
  L1_2 = GetEntityCoords
  L2_2 = cache
  L2_2 = L2_2.ped
  L1_2 = L1_2(L2_2)
  L2_2 = L0_2 * 2
  L1_2 = L1_2 + L2_2
  L2_2 = lib
  L2_2 = L2_2.getClosestPlayer
  L3_2 = L1_2
  L4_2 = Settings
  L4_2 = L4_2.tackleRadius
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L3_2 = true
  L3_1 = L3_2
  L3_2 = SetTimeout
  L4_2 = Settings
  L4_2 = L4_2.tackleCooldown
  function L5_2()
    local L0_3, L1_3
    L0_3 = false
    L3_1 = L0_3
  end
  L3_2(L4_2, L5_2)
  L3_2 = TriggerServerEvent
  L4_2 = "lunar_unijob:tacklePlayer"
  L5_2 = GetPlayerServerId
  L6_2 = L2_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = lib
  L3_2 = L3_2.requestAnimDict
  L4_2 = L0_1
  L3_2(L4_2)
  L3_2 = TaskPlayAnim
  L4_2 = cache
  L4_2 = L4_2.ped
  L5_2 = L0_1
  L6_2 = L1_1
  L7_2 = 8.0
  L8_2 = -8.0
  L9_2 = 3000
  L10_2 = 0
  L11_2 = 0
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = RemoveAnimDict
  L4_2 = L0_1
  L3_2(L4_2)
end
L5_1 = RegisterNetEvent
L6_1 = "lunar_unijob:playTackledAnim"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = lib
  L1_2 = L1_2.requestAnimDict
  L2_2 = L0_1
  L1_2(L2_2)
  L1_2 = GetPlayerPed
  L2_2 = GetPlayerFromServerId
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L2_2 = AttachEntityToEntity
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = L1_2
  L5_2 = 11816
  L6_2 = 0.25
  L7_2 = 0.5
  L8_2 = 0.0
  L9_2 = 0.5
  L10_2 = 0.5
  L11_2 = 180.0
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = 2
  L17_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L2_2 = TaskPlayAnim
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = L0_1
  L5_2 = L2_1
  L6_2 = 8.0
  L7_2 = -8.0
  L8_2 = 3000
  L9_2 = 0
  L10_2 = 0
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = Wait
  L3_2 = 3000
  L2_2(L3_2)
  L2_2 = DetachEntity
  L3_2 = cache
  L3_2 = L3_2.ped
  L2_2(L3_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = 1
    L1_3 = 30
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = SetPedToRagdoll
      L5_3 = cache
      L5_3 = L5_3.ped
      L6_3 = 1000
      L7_3 = 1000
      L8_3 = 0
      L9_3 = false
      L10_3 = false
      L11_3 = false
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L4_3 = Wait
      L5_3 = 100
      L4_3(L5_3)
    end
  end
  L2_2(L3_2)
  L2_2 = RemoveAnimDict
  L3_2 = L0_1
  L2_2(L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = lib
L5_1 = L5_1.addKeybind
L6_1 = {}
L6_1.defaultMapper = "keyboard"
L7_1 = Config
L7_1 = L7_1.tackleKeybind
L6_1.defaultKey = L7_1
L6_1.name = "tackle"
L6_1.description = "Player tackling"
L6_1.onReleased = L4_1
L5_1(L6_1)
