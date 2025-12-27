-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = pairs
L1_1 = Config
L1_1 = L1_1.usableItems
L0_1, L1_1, L2_1, L3_1 = L0_1(L1_1)
for L4_1 in L0_1, L1_1, L2_1, L3_1 do
  L5_1 = Framework
  L5_1 = L5_1.registerUsableItem
  L6_1 = L4_1
  function L7_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2
    L1_2 = Framework
    L1_2 = L1_2.getPlayerFromId
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L3_2 = L1_2
      L2_2 = L1_2.removeItem
      L4_2 = L4_1
      L5_2 = 1
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = TriggerClientEvent
      L3_2 = "lunar_unijob:useConsumable"
      L4_2 = A0_2
      L5_2 = L4_1
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L5_1(L6_1, L7_1)
end
