-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = false
L1_1 = nil
L2_1 = nil
L3_1 = {}
L3_1.handcuffs = -1281059971
L3_1.zipties = 623548567
L4_1 = {}
L5_1 = {}
L6_1 = vec3
L7_1 = 0.0
L8_1 = 0.07
L9_1 = 0.03
L6_1 = L6_1(L7_1, L8_1, L9_1)
L5_1.pos = L6_1
L6_1 = vec3
L7_1 = 10.0
L8_1 = 115.0
L9_1 = -65.0
L6_1 = L6_1(L7_1, L8_1, L9_1)
L5_1.rot = L6_1
L4_1.handcuffs = L5_1
L5_1 = {}
L6_1 = vec3
L7_1 = 0.05
L8_1 = 0.04
L9_1 = 0.055
L6_1 = L6_1(L7_1, L8_1, L9_1)
L5_1.pos = L6_1
L6_1 = vec3
L7_1 = -90.0
L8_1 = 110.0
L9_1 = -65.0
L6_1 = L6_1(L7_1, L8_1, L9_1)
L5_1.rot = L6_1
L4_1.zipties = L5_1
L5_1 = Actions
L5_1 = L5_1.createPlayer
L6_1 = "steal"
L7_1 = "eye"
L8_1 = Editable
L8_1 = L8_1.searchPlayer
L5_1(L6_1, L7_1, L8_1)
L5_1 = Actions
L5_1 = L5_1.createPlayer
L6_1 = "handcuff"
L7_1 = "handcuffs"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "lunar_unijob:cuffToggle"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L5_1(L6_1, L7_1, L8_1)
function L5_1(A0_2)
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
L6_1 = "mp_arrest_paired"
L7_1 = "mp_arresting"
L8_1 = "cop_p2_back_left"
L9_1 = "crook_p2_back_left"
L10_1 = "a_uncuff"
L11_1 = RegisterNetEvent
L12_1 = "lunar_unijob:cuffReceiver"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "lunar_unijob:getPlayerCuffState"
  L3_2 = false
  L4_2 = cache
  L4_2 = L4_2.serverId
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L5_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if L1_2 then
    L3_2 = SetEnableHandcuffs
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = DisablePlayerFiring
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = SetCurrentPedWeapon
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = -1569615261
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = SetPedCanPlayGestureAnims
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = lib
    L3_2 = L3_2.requestAnimDict
    L4_2 = L6_1
    L3_2(L4_2)
    L3_2 = AttachEntityToEntity
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = L2_2
    L6_2 = 11816
    L7_2 = -0.1
    L8_2 = 0.45
    L9_2 = 0.0
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = 20.0
    L13_2 = false
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L17_2 = 20
    L18_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L3_2 = TaskPlayAnim
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = L6_1
    L6_2 = L9_1
    L7_2 = 8.0
    L8_2 = -8.0
    L9_2 = 5500
    L10_2 = 33
    L11_2 = 0
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L3_2 = Wait
    L4_2 = 3500
    L3_2(L4_2)
    L3_2 = DetachEntity
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = true
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = RemoveAnimDict
    L4_2 = L6_1
    L3_2(L4_2)
    L3_2 = L3_1
    L3_2 = L3_2[L1_2]
    L4_2 = L4_1
    L4_2 = L4_2[L1_2]
    L7_2 = L4_2
    L5_2 = L7_2.pos
    L6_2 = L7_2.rot
    L7_2 = lib
    L7_2 = L7_2.requestModel
    L8_2 = L3_2
    L7_2(L8_2)
    L7_2 = CreateObject
    L8_2 = L3_2
    L9_2 = 0
    L10_2 = 0
    L11_2 = 0
    L12_2 = true
    L13_2 = true
    L14_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L2_1 = L7_2
    L7_2 = GetPedBoneIndex
    L8_2 = cache
    L8_2 = L8_2.ped
    L9_2 = 18905
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = AttachEntityToEntity
    L9_2 = L2_1
    L10_2 = cache
    L10_2 = L10_2.ped
    L11_2 = L7_2
    L12_2 = L5_2.x
    L13_2 = L5_2.y
    L14_2 = L5_2.z
    L15_2 = L6_2.x
    L16_2 = L6_2.y
    L17_2 = L6_2.z
    L18_2 = true
    L19_2 = true
    L20_2 = false
    L21_2 = true
    L22_2 = 1
    L23_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  else
    L3_2 = L1_1
    if L3_2 then
      L3_2 = DetachEntity
      L4_2 = cache
      L4_2 = L4_2.ped
      L3_2(L4_2)
      L3_2 = nil
      L1_1 = L3_2
    end
    L3_2 = AttachEntityToEntity
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = L2_2
    L6_2 = 11816
    L7_2 = -0.1
    L8_2 = 0.65
    L9_2 = 0.0
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = 20.0
    L13_2 = false
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L17_2 = 20
    L18_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L3_2 = Wait
    L4_2 = 2000
    L3_2(L4_2)
    L3_2 = DetachEntity
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = true
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = SetEnableHandcuffs
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = DisablePlayerFiring
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = SetCurrentPedWeapon
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = -1569615261
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = SetPedCanPlayGestureAnims
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = L2_1
    if L3_2 then
      L3_2 = DeleteEntity
      L4_2 = L2_1
      L3_2(L4_2)
    end
  end
  L0_1 = L1_2
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "lunar_unijob:cuffSender"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "lunar_unijob:getPlayerCuffState"
  L3_2 = false
  L4_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L2_2 = lib
    L2_2 = L2_2.requestAnimDict
    L3_2 = L6_1
    L2_2(L3_2)
    L2_2 = TaskPlayAnim
    L3_2 = cache
    L3_2 = L3_2.ped
    L4_2 = L6_1
    L5_2 = L8_1
    L6_2 = 8.0
    L7_2 = -8.0
    L8_2 = 5500
    L9_2 = 33
    L10_2 = 0
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L2_2 = Wait
    L3_2 = 3500
    L2_2(L3_2)
    L2_2 = ClearPedTasks
    L3_2 = cache
    L3_2 = L3_2.ped
    L2_2(L3_2)
    L2_2 = RemoveAnimDict
    L3_2 = L6_1
    L2_2(L3_2)
    L2_2 = Editable
    L2_2 = L2_2.actionPerformed
    L3_2 = "handcuff"
    L2_2(L3_2)
  else
    L2_2 = lib
    L2_2 = L2_2.requestAnimDict
    L3_2 = L7_1
    L2_2(L3_2)
    L2_2 = TaskPlayAnim
    L3_2 = cache
    L3_2 = L3_2.ped
    L4_2 = L7_1
    L5_2 = L10_1
    L6_2 = 8.0
    L7_2 = -8.0
    L8_2 = -1
    L9_2 = 2
    L10_2 = 0
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L2_2 = Wait
    L3_2 = 2000
    L2_2(L3_2)
    L2_2 = ClearPedTasks
    L3_2 = cache
    L3_2 = L3_2.ped
    L2_2(L3_2)
    L2_2 = RemoveAnimDict
    L3_2 = L7_1
    L2_2(L3_2)
    L2_2 = Editable
    L2_2 = L2_2.actionPerformed
    L3_2 = "unhandcuff"
    L2_2(L3_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "lunar_unijob:syncCuff"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = lib
  L0_2 = L0_2.callback
  L0_2 = L0_2.await
  L1_2 = "lunar_unijob:getPlayerCuffState"
  L2_2 = false
  L3_2 = cache
  L3_2 = L3_2.serverId
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  if not L0_2 then
    L1_2 = SetEnableHandcuffs
    L2_2 = cache
    L2_2 = L2_2.ped
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = DisablePlayerFiring
    L2_2 = cache
    L2_2 = L2_2.ped
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = SetCurrentPedWeapon
    L2_2 = cache
    L2_2 = L2_2.ped
    L3_2 = -1569615261
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = SetPedCanPlayGestureAnims
    L2_2 = cache
    L2_2 = L2_2.ped
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = L1_1
    if L1_2 then
      L1_2 = TriggerEvent
      L2_2 = "lunar_unijob:drag"
      L1_2(L2_2)
    end
  end
  L0_1 = L0_2
end
L11_1(L12_1, L13_1)
L11_1 = "anim@move_m@prisoner_cuffed"
L12_1 = "anim@move_m@trash"
L13_1 = RegisterNetEvent
L14_1 = "lunar_unijob:drag"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = L0_1
  if not L1_2 then
    return
  end
  L1_2 = L1_1
  if not L1_2 and A0_2 then
    L1_2 = L5_1
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      return
    end
    L2_2 = AttachEntityToEntity
    L3_2 = cache
    L3_2 = L3_2.ped
    L4_2 = L1_2
    L5_2 = 11816
    L6_2 = 0.2
    L7_2 = 0.45
    L8_2 = 0.0
    L9_2 = 0.0
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L15_2 = true
    L16_2 = 2
    L17_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  else
    L1_2 = DetachEntity
    L2_2 = cache
    L2_2 = L2_2.ped
    L1_2(L2_2)
    L1_2 = StopAnimTask
    L2_2 = cache
    L2_2 = L2_2.ped
    L3_2 = L11_1
    L4_2 = "walk"
    L5_2 = 3.0
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = StopAnimTask
    L2_2 = cache
    L2_2 = L2_2.ped
    L3_2 = L12_1
    L4_2 = "run"
    L5_2 = 3.0
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_1 = A0_2
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "lunar_unijob:putInVehicle"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1
  if L1_2 then
    L1_2 = L1_1
    if L1_2 then
      L1_2 = NetworkDoesEntityExistWithNetworkId
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_13
      end
    end
  end
  do return end
  ::lbl_13::
  L1_2 = NetworkGetEntityFromNetworkId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetVehicleMaxNumberOfPassengers
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 - 1
  L4_2 = 0
  L5_2 = -1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = IsVehicleSeatFree
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = TaskWarpPedIntoVehicle
      L8_2 = cache
      L8_2 = L8_2.ped
      L9_2 = L1_2
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
      break
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "lunar_unijob:outTheVehicle"
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1
  if L0_2 then
    L0_2 = IsPedSittingInAnyVehicle
    L1_2 = cache
    L1_2 = L1_2.ped
    L0_2 = L0_2(L1_2)
    if L0_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L0_2 = GetVehiclePedIsIn
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = TaskLeaveVehicle
  L2_2 = cache
  L2_2 = L2_2.ped
  L3_2 = L0_2
  L4_2 = 64
  L1_2(L2_2, L3_2, L4_2)
end
L13_1(L14_1, L15_1)
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = IsPedWalking
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = IsEntityPlayingAnim
    L2_2 = cache
    L2_2 = L2_2.ped
    L3_2 = L11_1
    L4_2 = "walk"
    L5_2 = 3
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = lib
      L1_2 = L1_2.requestAnimDict
      L2_2 = L11_1
      L1_2(L2_2)
      L1_2 = TaskPlayAnim
      L2_2 = cache
      L2_2 = L2_2.ped
      L3_2 = L11_1
      L4_2 = "walk"
      L5_2 = 3.0
      L6_2 = 3.0
      L7_2 = -1
      L8_2 = 1
      L9_2 = 0.0
      L10_2 = false
      L11_2 = false
      L12_2 = false
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L1_2 = RemoveAnimDict
      L2_2 = L11_1
      L1_2(L2_2)
    end
  else
    L1_2 = IsPedRunning
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedSprinting
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        goto lbl_82
      end
    end
    L1_2 = Settings
    L1_2 = L1_2.sprintWhileDrag
    if L1_2 then
      L1_2 = IsEntityPlayingAnim
      L2_2 = cache
      L2_2 = L2_2.ped
      L3_2 = L12_1
      L4_2 = "run"
      L5_2 = 3
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if not L1_2 then
        L1_2 = lib
        L1_2 = L1_2.requestAnimDict
        L2_2 = L12_1
        L1_2(L2_2)
        L1_2 = TaskPlayAnim
        L2_2 = cache
        L2_2 = L2_2.ped
        L3_2 = L12_1
        L4_2 = "run"
        L5_2 = 3.0
        L6_2 = 3.0
        L7_2 = -1
        L8_2 = 1
        L9_2 = 0.0
        L10_2 = false
        L11_2 = false
        L12_2 = false
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        L1_2 = RemoveAnimDict
        L2_2 = L12_1
        L1_2(L2_2)
      end
    ::lbl_82::
    else
      L1_2 = StopAnimTask
      L2_2 = cache
      L2_2 = L2_2.ped
      L3_2 = L11_1
      L4_2 = "walk"
      L5_2 = 3.0
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = StopAnimTask
      L2_2 = cache
      L2_2 = L2_2.ped
      L3_2 = L12_1
      L4_2 = "run"
      L5_2 = 3.0
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L14_1 = "mp_arresting"
L15_1 = false
L16_1 = false
L17_1 = SetInterval
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = L0_1
  if L0_2 then
    L0_2 = L1_1
    if L0_2 then
      L0_2 = L5_1
      L1_2 = L1_1
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        return
      end
      L1_2 = L13_1
      L2_2 = L0_2
      L1_2(L2_2)
    end
    L0_2 = IsEntityPlayingAnim
    L1_2 = cache
    L1_2 = L1_2.ped
    L2_2 = L14_1
    L3_2 = "idle"
    L4_2 = 3
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    if L0_2 then
      L0_2 = Config
      L0_2 = L0_2.forceCuffAnim
      if not L0_2 then
        L0_2 = L16_1
        if not L0_2 then
          goto lbl_57
        end
      end
    end
    L0_2 = lib
    L0_2 = L0_2.requestAnimDict
    L1_2 = L14_1
    L0_2(L1_2)
    L0_2 = TaskPlayAnim
    L1_2 = cache
    L1_2 = L1_2.ped
    L2_2 = L14_1
    L3_2 = "idle"
    L4_2 = 8.0
    L5_2 = -8
    L6_2 = -1
    L7_2 = 49
    L8_2 = 0.0
    L9_2 = false
    L10_2 = false
    L11_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L0_2 = RemoveAnimDict
    L1_2 = L14_1
    L0_2(L1_2)
    L0_2 = true
    L15_1 = L0_2
    L0_2 = false
    L16_1 = L0_2
    ::lbl_57::
    L0_2 = IsPedRagdoll
    L1_2 = cache
    L1_2 = L1_2.ped
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = true
      L16_1 = L0_2
    end
  else
    L0_2 = L15_1
    if L0_2 then
      L0_2 = IsEntityPlayingAnim
      L1_2 = cache
      L1_2 = L1_2.ped
      L2_2 = L14_1
      L3_2 = "idle"
      L4_2 = 3
      L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
      if L0_2 then
        L0_2 = ClearPedTasks
        L1_2 = cache
        L1_2 = L1_2.ped
        L0_2(L1_2)
        L0_2 = false
        L15_1 = L0_2
      end
    end
  end
end
L19_1 = 100
L17_1(L18_1, L19_1)
L17_1 = CreateThread
function L18_1()
  local L0_2, L1_2
  while true do
    L0_2 = L0_1
    if L0_2 then
      L0_2 = Editable
      L0_2 = L0_2.handcuffControls
      L0_2()
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
L17_1(L18_1)
function L17_1()
  local L0_2, L1_2
  L0_2 = L0_1
  return L0_2
end
IsHandcuffed = L17_1
function L17_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2 = nil ~= L0_2
  return L0_2
end
IsDragged = L17_1
L17_1 = exports
L18_1 = "isCuffed"
L19_1 = IsHandcuffed
L17_1(L18_1, L19_1)
L17_1 = exports
L18_1 = "isDragged"
L19_1 = IsDragged
L17_1(L18_1, L19_1)
