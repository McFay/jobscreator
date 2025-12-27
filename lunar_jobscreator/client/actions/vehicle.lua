-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = NetworkGetNetworkIdFromEntity
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerServerEvent
  L4_2 = "lunar_unijob:performVehicleAction"
  L5_2 = L2_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L1_1 = RegisterNetEvent
L2_1 = "lunar_unijob:performVehicleAction"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = DoesEntityExist
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  if "hijack" == A1_2 then
    L3_2 = SetVehicleDoorsLocked
    L4_2 = L2_2
    L5_2 = 1
    L3_2(L4_2, L5_2)
    L3_2 = SetVehicleDoorsLockedForAllPlayers
    L4_2 = L2_2
    L5_2 = false
    L3_2(L4_2, L5_2)
  elseif "repair" == A1_2 then
    L3_2 = SetVehicleFixed
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = SetVehicleDeformationFixed
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = SetVehicleUndriveable
    L4_2 = L2_2
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = SetVehicleEngineOn
    L4_2 = L2_2
    L5_2 = true
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  elseif "clean" == A1_2 then
    L3_2 = SetVehicleDirtLevel
    L4_2 = L2_2
    L5_2 = 0.0
    L3_2(L4_2, L5_2)
  elseif "impound" == A1_2 then
    L3_2 = SetEntityAsMissionEntity
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = DeleteVehicle
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = Actions
L1_1 = L1_1.createVehicle
L2_1 = "hijack"
L3_1 = "user-ninja"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "lunar_unijob:hijackVehicle"
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = TaskStartScenarioInPlace
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = "PROP_HUMAN_BUM_BIN"
  L5_2 = 0
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  if L1_2 then
    L2_2 = Editable
    L2_2 = L2_2.lockpickMinigame
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = LR
      L2_2 = L2_2.progressBar
      L3_2 = locale
      L4_2 = "progress_hijack"
      L3_2 = L3_2(L4_2)
      L4_2 = Settings
      L4_2 = L4_2.durations
      L4_2 = L4_2.hijack
      L5_2 = false
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if L2_2 then
        L2_2 = L0_1
        L3_2 = A0_2
        L4_2 = "hijack"
        L2_2(L3_2, L4_2)
        L2_2 = LR
        L2_2 = L2_2.notify
        L3_2 = locale
        L4_2 = "hijacked"
        L3_2 = L3_2(L4_2)
        L4_2 = "success"
        L2_2(L3_2, L4_2)
      end
    end
  end
  L2_2 = ClearPedTasks
  L3_2 = cache
  L3_2 = L3_2.ped
  L2_2(L3_2)
end
L1_1(L2_1, L3_1, L4_1)
L1_1 = Actions
L1_1 = L1_1.createVehicle
L2_1 = "repair"
L3_1 = "screwdriver-wrench"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "lunar_unijob:repairVehicle"
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = LR
    L2_2 = L2_2.progressBar
    L3_2 = locale
    L4_2 = "progress_repair"
    L3_2 = L3_2(L4_2)
    L4_2 = Settings
    L4_2 = L4_2.durations
    L4_2 = L4_2.repair
    L5_2 = false
    L6_2 = {}
    L6_2.scenario = "PROP_HUMAN_BUM_BIN"
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if L2_2 then
      L2_2 = L0_1
      L3_2 = A0_2
      L4_2 = "repair"
      L2_2(L3_2, L4_2)
      L2_2 = LR
      L2_2 = L2_2.notify
      L3_2 = locale
      L4_2 = "repaired"
      L3_2 = L3_2(L4_2)
      L4_2 = "success"
      L2_2(L3_2, L4_2)
    end
  end
end
L1_1(L2_1, L3_1, L4_1)
L1_1 = Actions
L1_1 = L1_1.createVehicle
L2_1 = "clean"
L3_1 = "hand-sparkles"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "lunar_unijob:cleanVehicle"
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = LR
    L2_2 = L2_2.progressBar
    L3_2 = locale
    L4_2 = "progress_clean"
    L3_2 = L3_2(L4_2)
    L4_2 = Settings
    L4_2 = L4_2.durations
    L4_2 = L4_2.clean
    L5_2 = false
    L6_2 = {}
    L6_2.scenario = "WORLD_HUMAN_MAID_CLEAN"
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if L2_2 then
      L2_2 = L0_1
      L3_2 = A0_2
      L4_2 = "clean"
      L2_2(L3_2, L4_2)
      L2_2 = LR
      L2_2 = L2_2.notify
      L3_2 = locale
      L4_2 = "cleaned"
      L3_2 = L3_2(L4_2)
      L4_2 = "success"
      L2_2(L3_2, L4_2)
    end
  end
end
L1_1(L2_1, L3_1, L4_1)
L1_1 = Actions
L1_1 = L1_1.createVehicle
L2_1 = "impound"
L3_1 = "truck"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "lunar_unijob:impoundVehicle"
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = LR
    L2_2 = L2_2.progressBar
    L3_2 = locale
    L4_2 = "progress_impound"
    L3_2 = L3_2(L4_2)
    L4_2 = Settings
    L4_2 = L4_2.durations
    L4_2 = L4_2.impound
    L5_2 = false
    L6_2 = {}
    L6_2.scenario = "CODE_HUMAN_MEDIC_TEND_TO_DEAD"
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if L2_2 then
      L2_2 = L0_1
      L3_2 = A0_2
      L4_2 = "impound"
      L2_2(L3_2, L4_2)
      L2_2 = LR
      L2_2 = L2_2.notify
      L3_2 = locale
      L4_2 = "impounded"
      L3_2 = L3_2(L4_2)
      L4_2 = "success"
      L2_2(L3_2, L4_2)
    end
  end
end
L1_1(L2_1, L3_1, L4_1)
