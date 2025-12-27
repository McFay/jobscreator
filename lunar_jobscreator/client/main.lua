-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = {}
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1
  return L0_2
end
GetJobs = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = Framework
  L0_2 = L0_2.getJob
  L0_2 = L0_2()
  L1_2 = L0_1
  L0_2 = L1_2[L0_2]
  return L0_2
end
GetCurrentJob = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = not A0_2
  return L1_2
end
HasGrade = L1_1
L1_1 = {}
L2_1 = Alarms
L3_1 = BossActions
L4_1 = Blips
L5_1 = Cloakrooms
L6_1 = Collecting
L7_1 = Crafting
L8_1 = Garages
L9_1 = Selling
L10_1 = Shops
L11_1 = Stashes
L12_1 = Registers
L13_1 = AnimationZones
L14_1 = MusicPlayers
L15_1 = Teleports
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L1_1[7] = L8_1
L1_1[8] = L9_1
L1_1[9] = L10_1
L1_1[10] = L11_1
L1_1[11] = L12_1
L1_1[12] = L13_1
L1_1[13] = L14_1
L1_1[14] = L15_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L1_2 = Framework
  L1_2 = L1_2.getJob
  L1_2 = L1_2()
  L2_2 = L0_1
  L1_2 = L2_2[L1_2]
  if A0_2 then
    L2_2 = ipairs
    L3_2 = L1_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.update
      if L8_2 then
        L8_2 = L7_2.update
        L8_2()
      end
    end
    L2_2 = Utils
    L2_2 = L2_2.removeEntities
    L2_2()
    L2_2 = pairs
    L3_2 = L0_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = pairs
      L9_2 = L7_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = type
        L15_2 = L13_2
        L14_2 = L14_2(L15_2)
        if "table" == L14_2 then
          L14_2 = table
          L14_2 = L14_2.type
          L15_2 = L13_2
          L14_2 = L14_2(L15_2)
          if "array" ~= L14_2 then
          else
            L14_2 = ipairs
            L15_2 = L13_2
            L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
            for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
              L20_2 = L19_2.locations
              if L20_2 then
                L20_2 = ipairs
                L21_2 = L19_2.locations
                L20_2, L21_2, L22_2, L23_2 = L20_2(L21_2)
                for L24_2, L25_2 in L20_2, L21_2, L22_2, L23_2 do
                  L26_2 = L19_2.prop
                  if L26_2 then
                    L26_2 = Utils
                    L26_2 = L26_2.createProps
                    L27_2 = type
                    L28_2 = L25_2
                    L27_2 = L27_2(L28_2)
                    if "table" == L27_2 then
                      L27_2 = L25_2.coords
                      if L27_2 then
                        goto lbl_68
                      end
                    end
                    L27_2 = L25_2
                    ::lbl_68::
                    L28_2 = L19_2
                    L26_2(L27_2, L28_2)
                  end
                  L26_2 = L19_2.ped
                  if L26_2 then
                    L26_2 = Utils
                    L26_2 = L26_2.createPeds
                    L27_2 = type
                    L28_2 = L25_2
                    L27_2 = L27_2(L28_2)
                    if "table" == L27_2 then
                      L27_2 = L25_2.coords
                      if L27_2 then
                        goto lbl_84
                      end
                    end
                    L27_2 = L25_2
                    ::lbl_84::
                    L28_2 = L19_2
                    L26_2(L27_2, L28_2)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L2_2 = Actions
  L2_2 = L2_2.updateRadial
  L2_2()
  if L1_2 then
    L2_2 = ipairs
    L3_2 = L1_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.clear
      if L8_2 then
        L8_2 = L7_2.clear
        L8_2()
        L8_2 = L7_2.create
        L9_2 = L1_2
        L8_2(L9_2)
      end
    end
    return
  end
  L2_2 = ipairs
  L3_2 = L1_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.clear
    if L8_2 then
      L8_2 = L7_2.clear
      L8_2()
    end
  end
end
L3_1 = false
L4_1 = RegisterNetEvent
L5_1 = "lunar_unijob:syncJobs"
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = true
  L3_1 = L1_2
  L0_1 = A0_2
  L1_2 = UI
  L1_2 = L1_2.updateJobs
  L2_2 = L0_1
  L1_2(L2_2)
  L1_2 = L2_1
  L2_2 = true
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "lunar_unijob:syncJob"
function L6_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    return
  end
  L2_2 = A0_2.name
  L1_2 = L0_1
  L1_2[L2_2] = A0_2
  L1_2 = UI
  L1_2 = L1_2.updateJob
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = L2_1
  L2_2 = true
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "lunar_unijob:syncRemoveJob"
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L1_2[A0_2] = nil
  L1_2 = UI
  L1_2 = L1_2.removeJob
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = L2_1
  L2_2 = true
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "lunar_unijob:syncJobField"
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if not A2_2 then
    return
  end
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  L3_2[A1_2] = A2_2
  L4_2 = UI
  L4_2 = L4_2.updateJob
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = L2_1
  L5_2 = true
  L4_2(L5_2)
end
L4_1(L5_1, L6_1)
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = Framework
L7_1 = L7_1.onPlayerLoaded
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = L3_1
  if not L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "lunar_unijob:requestJobs"
    L0_2(L1_2)
  end
  L0_2 = SetInterval
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = Framework
    L0_3 = L0_3.getJob
    L0_3 = L0_3()
    L1_3 = Framework
    L1_3 = L1_3.getJobGrade
    L1_3 = L1_3()
    L2_3 = L4_1
    if L0_3 == L2_3 then
      L2_3 = L5_1
      if L1_3 == L2_3 then
        goto lbl_16
      end
    end
    L2_3 = L2_1
    L3_3 = false
    L2_3(L3_3)
    ::lbl_16::
    L4_1 = L0_3
    L5_1 = L1_3
  end
  L2_2 = 500
  L0_2 = L0_2(L1_2, L2_2)
  L6_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = UI
      if L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 100
      L0_3(L1_3)
    end
    L0_3 = UI
    L0_3 = L0_3.updateJobs
    L1_3 = L0_1
    L0_3(L1_3)
  end
  L0_2(L1_2)
end
L7_1(L8_1)
L7_1 = Framework
L7_1 = L7_1.onPlayerLogout
function L8_1()
  local L0_2, L1_2
  L0_2 = L6_1
  if L0_2 then
    L0_2 = ClearInterval
    L1_2 = L6_1
    L0_2(L1_2)
    L0_2 = nil
    L6_1 = L0_2
  end
end
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "onClientResourceStart"
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "lunar_unijob:requestJobs"
    L1_2(L2_2)
  end
end
L7_1(L8_1, L9_1)
