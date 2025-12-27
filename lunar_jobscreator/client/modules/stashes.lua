-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L1_1 = {}
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A0_2.stashes
  L2_2 = L2_2[A1_2]
  L3_2 = ipairs
  L4_2 = L2_2.locations
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L2_2.name
    if not L9_2 then
      L9_2 = "%s_stash_%s_%s"
      L10_2 = L9_2
      L9_2 = L9_2.format
      L11_2 = A0_2.name
      L12_2 = L2_2.name
      if not L12_2 then
        L12_2 = A1_2
      end
      L13_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    end
    L10_2 = Utils
    L10_2 = L10_2.createInteractionPoint
    L11_2 = {}
    L11_2.coords = L8_2
    L12_2 = L2_2.radius
    if not L12_2 then
      L12_2 = Config
      L12_2 = L12_2.defaultRadius
    end
    L11_2.radius = L12_2
    L12_2 = {}
    L13_2 = {}
    L14_2 = L2_2.label
    if not L14_2 then
      L14_2 = locale
      L15_2 = "open_stash"
      L14_2 = L14_2(L15_2)
    end
    L13_2.label = L14_2
    L14_2 = L2_2.icon
    if not L14_2 then
      L14_2 = "box-archive"
    end
    L13_2.icon = L14_2
    L14_2 = Editable
    L14_2 = L14_2.openStash
    L13_2.onSelect = L14_2
    L14_2 = {}
    L14_2.name = L9_2
    L14_2.data = L2_2
    L13_2.args = L14_2
    function L14_2()
      local L0_3, L1_3
      L0_3 = L2_2.global
      if not L0_3 then
        L0_3 = HasGrade
        L1_3 = L2_2.grade
        L0_3 = L0_3(L1_3)
      end
      return L0_3
    end
    L13_2.canInteract = L14_2
    L12_2[1] = L13_2
    L11_2.options = L12_2
    L12_2 = L2_2.target
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L2_2.global
    if L12_2 then
      L12_2 = L1_1
      if L12_2 then
        goto lbl_69
      end
    end
    L12_2 = L0_1
    ::lbl_69::
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.stashes
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2.stashes
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.global
    if not L7_2 then
      L7_2 = L2_1
      L8_2 = A0_2
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
end
function L4_1()
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
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = ipairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.remove
    L6_2()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L1_1
  L0_2(L1_2)
  L0_2 = GetJobs
  L0_2 = L0_2()
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.stashes
    if L7_2 then
      L7_2 = ipairs
      L8_2 = L6_2.stashes
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = L12_2.global
        if L13_2 then
          L13_2 = L2_1
          L14_2 = L6_2
          L15_2 = L11_2
          L13_2(L14_2, L15_2)
        end
      end
    end
  end
end
L6_1 = {}
L6_1.create = L3_1
L6_1.clear = L4_1
L6_1.update = L5_1
Stashes = L6_1
