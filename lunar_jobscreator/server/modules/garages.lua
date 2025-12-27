-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1
L0_1 = nil
L1_1 = lib
L1_1 = L1_1.callback
L1_1 = L1_1.register
L2_1 = "lunar_unijob:getVehicles"
L3_1 = Editable
L3_1 = L3_1.getVehicles
L1_1(L2_1, L3_1)
L1_1 = lib
L1_1 = L1_1.callback
L1_1 = L1_1.register
L2_1 = "lunar_unijob:saveVehicle"
L3_1 = Editable
L3_1 = L3_1.saveVehicle
L1_1(L2_1, L3_1)
L1_1 = lib
L1_1 = L1_1.callback
L1_1 = L1_1.register
L2_1 = "lunar_unijob:buyVehicle"
L3_1 = Editable
L3_1 = L3_1.buyVehicle
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "lunar_unijob:saveTemporaryVehicle"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = source
  L4_2 = Framework
  L4_2 = L4_2.getPlayerFromId
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L6_2 = L4_2
  L5_2 = L4_2.getJob
  L5_2 = L5_2(L6_2)
  L6_2 = L0_1
  L5_2 = L6_2[L5_2]
  L6_2 = L5_2.garages
  L6_2 = L6_2[A1_2]
  L7_2 = L6_2
  if L7_2 then
    L7_2 = L7_2.locations
  end
  if L7_2 then
    L7_2 = L7_2[A2_2]
  end
  if not L7_2 then
    return
  end
  L8_2 = NetworkGetEntityFromNetworkId
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = Wait
  L10_2 = 500
  L9_2(L10_2)
  L9_2 = DoesEntityExist
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    return
  end
  L9_2 = GetEntityCoords
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L10_2 = L7_2.coords
  L10_2 = L10_2.xyz
  L9_2 = L9_2 - L10_2
  L9_2 = #L9_2
  if L9_2 < 10.0 then
    L9_2 = DeleteEntity
    L10_2 = L8_2
    L9_2(L10_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = {}
function L2_1(A0_2)
  local L1_2
  L0_1 = A0_2
end
L1_1.init = L2_1
Garages = L1_1
