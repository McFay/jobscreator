-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = A0_2.bossMenus
  if L1_2 then
    L1_2 = A0_2.grades
    L2_2 = Framework
    L2_2 = L2_2.getJobGrade
    L2_2 = L2_2()
    L2_2 = L2_2 + 1
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L1_2 = L1_2.bossActions
    end
    if L1_2 then
      goto lbl_17
    end
  end
  do return end
  ::lbl_17::
  L1_2 = ipairs
  L2_2 = A0_2.bossMenus
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = ipairs
    L8_2 = L6_2.locations
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = Utils
      L13_2 = L13_2.createInteractionPoint
      L14_2 = {}
      L14_2.coords = L12_2
      L15_2 = L6_2.radius
      if not L15_2 then
        L15_2 = Config
        L15_2 = L15_2.defaultRadius
      end
      L14_2.radius = L15_2
      L15_2 = {}
      L16_2 = {}
      L17_2 = locale
      L18_2 = "open_boss_menu"
      L17_2 = L17_2(L18_2)
      L16_2.label = L17_2
      L17_2 = L6_2.icon
      if not L17_2 then
        L17_2 = "briefcase"
      end
      L16_2.icon = L17_2
      L17_2 = Editable
      L17_2 = L17_2.openBossMenu
      L16_2.onSelect = L17_2
      L15_2[1] = L16_2
      L14_2.options = L15_2
      L15_2 = L6_2.target
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L0_1
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
  end
end
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ipairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.remove
    L6_2()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L0_1
  L0_2(L1_2)
end
L3_1 = {}
L3_1.create = L1_1
L3_1.clear = L2_1
BossActions = L3_1
