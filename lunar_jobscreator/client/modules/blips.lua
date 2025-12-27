-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.blips
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2.blips
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.global
    if not L7_2 then
      L7_2 = L6_2.size
      L7_2 = L7_2 + 0.0
      L6_2.size = L7_2
      L7_2 = table
      L7_2 = L7_2.clone
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = Config
      L8_2 = L8_2.blipsFont
      if L8_2 then
        L8_2 = Config
        L8_2 = L8_2.blipsFont
        L9_2 = L8_2
        L8_2 = L8_2.len
        L8_2 = L8_2(L9_2)
        if L8_2 > 0 then
          L8_2 = "<font face=\"%s\">%s</font>"
          L9_2 = L8_2
          L8_2 = L8_2.format
          L10_2 = Config
          L10_2 = L10_2.blipsFont
          L11_2 = L7_2.name
          L8_2 = L8_2(L9_2, L10_2, L11_2)
          L7_2.name = L8_2
        end
      end
      L8_2 = Utils
      L8_2 = L8_2.createBlip
      L9_2 = L7_2.coords
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L0_1
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
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
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = ipairs
  L1_2 = L3_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.remove
    L6_2()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L3_1
  L0_2(L1_2)
  L0_2 = GetJobs
  L0_2 = L0_2()
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.blips
    if L7_2 then
      L7_2 = ipairs
      L8_2 = L6_2.blips
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = L12_2.global
        if L13_2 then
          L13_2 = L12_2.coords
          if L13_2 then
            L13_2 = L12_2.size
            L13_2 = L13_2 + 0.0
            L12_2.size = L13_2
            L13_2 = table
            L13_2 = L13_2.clone
            L14_2 = L12_2
            L13_2 = L13_2(L14_2)
            L14_2 = Config
            L14_2 = L14_2.blipsFont
            if L14_2 then
              L14_2 = Config
              L14_2 = L14_2.blipsFont
              L15_2 = L14_2
              L14_2 = L14_2.len
              L14_2 = L14_2(L15_2)
              if L14_2 > 0 then
                L14_2 = "<font face=\"%s\">%s</font>"
                L15_2 = L14_2
                L14_2 = L14_2.format
                L16_2 = Config
                L16_2 = L16_2.blipsFont
                L17_2 = L13_2.name
                L14_2 = L14_2(L15_2, L16_2, L17_2)
                L13_2.name = L14_2
              end
            end
            L14_2 = Utils
            L14_2 = L14_2.createBlip
            L15_2 = L13_2.coords
            L16_2 = L13_2
            L14_2 = L14_2(L15_2, L16_2)
            L15_2 = table
            L15_2 = L15_2.insert
            L16_2 = L3_1
            L17_2 = L14_2
            L15_2(L16_2, L17_2)
          end
        end
      end
    end
  end
end
L5_1 = {}
L5_1.create = L1_1
L5_1.clear = L2_1
L5_1.update = L4_1
Blips = L5_1
