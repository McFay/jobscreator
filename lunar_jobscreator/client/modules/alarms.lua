-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "lunar_unijob:triggerAlarm"
  L3_2 = false
  L4_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L2_2 = LR
    L2_2 = L2_2.progressBar
    L3_2 = locale
    L4_2 = "triggering_alarm"
    L3_2 = L3_2(L4_2)
    L4_2 = 1000
    L5_2 = false
    L6_2 = {}
    L6_2.dict = "mini@repair"
    L6_2.clip = "fixing_a_ped"
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = LR
    L2_2 = L2_2.notify
    L3_2 = locale
    L4_2 = "alarm_triggered"
    L3_2 = L3_2(L4_2)
    L4_2 = "success"
    L2_2(L3_2, L4_2)
  else
    L2_2 = LR
    L2_2 = L2_2.notify
    L3_2 = locale
    L4_2 = "cannot_alarm"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    L2_2(L3_2, L4_2)
  end
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = A0_2.alarms
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2.alarms
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.global
    if not L7_2 then
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
        L17_2 = label
        if not L17_2 then
          L17_2 = locale
          L18_2 = "trigger_alarm"
          L17_2 = L17_2(L18_2)
        end
        L16_2.label = L17_2
        L16_2.icon = "bell"
        L17_2 = L1_1
        L16_2.onSelect = L17_2
        L17_2 = {}
        L18_2 = A0_2.name
        L17_2.job = L18_2
        L17_2.index = L5_2
        L17_2.locationIndex = L11_2
        L16_2.args = L17_2
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
end
function L3_1()
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
L4_1 = {}
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L0_2 = ipairs
  L1_2 = L4_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.remove
    L6_2()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L4_1
  L0_2(L1_2)
  L0_2 = GetJobs
  L0_2 = L0_2()
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.alarms
    if L7_2 then
      L7_2 = ipairs
      L8_2 = L6_2.alarms
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = L12_2.global
        if L13_2 then
          L13_2 = ipairs
          L14_2 = L12_2.locations
          L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
          for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
            L19_2 = Utils
            L19_2 = L19_2.createInteractionPoint
            L20_2 = {}
            L20_2.coords = L18_2
            L21_2 = L12_2.radius
            if not L21_2 then
              L21_2 = Config
              L21_2 = L21_2.defaultRadius
            end
            L20_2.radius = L21_2
            L21_2 = {}
            L22_2 = {}
            L23_2 = L12_2.label
            if not L23_2 then
              L23_2 = locale
              L24_2 = "trigger_alarm"
              L23_2 = L23_2(L24_2)
            end
            L22_2.label = L23_2
            L22_2.icon = "bell"
            L23_2 = L1_1
            L22_2.onSelect = L23_2
            L23_2 = {}
            L24_2 = L6_2.name
            L23_2.job = L24_2
            L23_2.index = L11_2
            L23_2.locationIndex = L17_2
            L22_2.args = L23_2
            L21_2[1] = L22_2
            L20_2.options = L21_2
            L19_2 = L19_2(L20_2)
            L20_2 = table
            L20_2 = L20_2.insert
            L21_2 = L4_1
            L22_2 = L19_2
            L20_2(L21_2, L22_2)
          end
        end
      end
    end
  end
end
L6_1 = {}
L6_1.create = L2_1
L6_1.clear = L3_1
L6_1.update = L5_1
Alarms = L6_1
