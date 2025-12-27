-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = Actions
L0_1 = L0_1.createPlayer
L1_1 = "bill"
L2_1 = "file-invoice"
L3_1 = Editable
L3_1 = L3_1.giveInvoice
L0_1(L1_1, L2_1, L3_1)
L0_1 = Actions
L0_1 = L0_1.createPlayer
L1_1 = "revive"
L2_1 = "suitcase-medical"
L3_1 = Editable
L3_1 = L3_1.revivePlayer
L0_1(L1_1, L2_1, L3_1)
L0_1 = Actions
L0_1 = L0_1.createPlayer
L1_1 = "heal"
L2_1 = "bandage"
L3_1 = Editable
L3_1 = L3_1.healPlayer
L0_1(L1_1, L2_1, L3_1)
L0_1 = Actions
L0_1 = L0_1.createVehicle
L1_1 = "putInsideVehicle"
L2_1 = "user-plus"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetDraggedPed
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L2_2 = GetPlayerServerId
  L3_2 = NetworkGetPlayerIndexFromPed
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if 0 == L2_2 then
    return
  end
  L3_2 = TriggerServerEvent
  L4_2 = "lunar_unijob:putInVehicle"
  L5_2 = L2_2
  L6_2 = NetworkGetNetworkIdFromEntity
  L7_2 = A0_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = StopDrag
  L3_2()
  L3_2 = Editable
  L3_2 = L3_2.actionPerformed
  L4_2 = "putInVehicle"
  L3_2(L4_2)
end
function L4_1()
  local L0_2, L1_2
  L0_2 = GetDraggedPed
  L0_2 = L0_2()
  L0_2 = nil ~= L0_2
  return L0_2
end
L0_1(L1_1, L2_1, L3_1, L4_1)
L0_1 = Actions
L0_1 = L0_1.createVehicle
L1_1 = "takeOutOfVehicle"
L2_1 = "user-minus"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = GetVehicleMaxNumberOfPassengers
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 - 1
  L3_2 = L1_2 - 3
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = GetPedInVehicleSeat
    L7_2 = A0_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if 0 ~= L6_2 then
      L7_2 = IsPedAPlayer
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = GetPlayerServerId
        L8_2 = NetworkGetPlayerIndexFromPed
        L9_2 = L6_2
        L8_2, L9_2, L10_2 = L8_2(L9_2)
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        if 0 == L7_2 then
          return
        end
        L8_2 = TriggerServerEvent
        L9_2 = "lunar_unijob:outTheVehicle"
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
        L8_2 = Editable
        L8_2 = L8_2.actionPerformed
        L9_2 = "takeOutOfVehicle"
        L8_2(L9_2)
        break
      end
    end
  end
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetVehicleMaxNumberOfPassengers
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 - 1
  L3_2 = L1_2 - 3
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = GetPedInVehicleSeat
    L7_2 = A0_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if 0 ~= L6_2 then
      L7_2 = IsPedCuffed
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1(L1_1, L2_1, L3_1, L4_1)
