-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = false
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = IsPedInAnyVehicle
  L2_2 = cache
  L2_2 = L2_2.ped
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  L1_2 = IsPedArmed
  L2_2 = cache
  L2_2 = L2_2.ped
  L3_2 = 6
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = GetSelectedPedWeapon
    L2_2 = cache
    L2_2 = L2_2.ped
    L1_2 = L1_2(L2_2)
    if -1569615261 ~= L1_2 then
      L1_2 = RemoveAllPedWeapons
      L2_2 = cache
      L2_2 = L2_2.ped
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = Wait
      L2_2 = 1000
      L1_2(L2_2)
    end
  end
  L4_2 = A0_2
  L1_2 = L4_2.data
  L2_2 = L4_2.index
  L3_2 = L4_2.locationIndex
  L4_2 = lib
  L4_2 = L4_2.callback
  L4_2 = L4_2.await
  L5_2 = "lunar_unijob:startCollecting"
  L6_2 = false
  L7_2 = L2_2
  L8_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L6_2 = LR
    L6_2 = L6_2.notify
    L7_2 = L5_2 or L7_2
    if not L5_2 then
      L7_2 = locale
      L8_2 = "cant_collect"
      L7_2 = L7_2(L8_2)
    end
    L8_2 = "error"
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = true
  L0_1 = L6_2
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = L1_2.animation
    L1_3 = L1_2.animationProp
    if L0_3 then
      L2_3 = Utils
      L2_3 = L2_3.playAnim
      L3_3 = L0_3
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    end
    while true do
      L2_3 = L0_1
      if not L2_3 then
        break
      end
      L2_3 = LR
      L2_3 = L2_3.progressBar
      L3_3 = L1_2.progress
      L4_3 = L1_2.duration
      L5_3 = true
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      if not L2_3 then
        L2_3 = TriggerServerEvent
        L3_3 = "lunar_unijob:stopCollecting"
        L2_3(L3_3)
        L2_3 = false
        L0_1 = L2_3
      end
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
    end
    while true do
      L2_3 = IsPedRagdoll
      L3_3 = cache
      L3_3 = L3_3.ped
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        L2_3 = IsPedFalling
        L3_3 = cache
        L3_3 = L3_3.ped
        L2_3 = L2_3(L3_3)
        if not L2_3 then
          L2_3 = IsPedVaulting
          L3_3 = cache
          L3_3 = L3_3.ped
          L2_3 = L2_3(L3_3)
          if not L2_3 then
            L2_3 = IsPedInMeleeCombat
            L3_3 = cache
            L3_3 = L3_3.ped
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              L2_3 = IsPedClimbing
              L3_3 = cache
              L3_3 = L3_3.ped
              L2_3 = L2_3(L3_3)
              if not L2_3 then
                L2_3 = IsPedInCover
                L3_3 = cache
                L3_3 = L3_3.ped
                L2_3 = L2_3(L3_3)
                if not L2_3 then
                  L2_3 = IsPedReloading
                  L3_3 = cache
                  L3_3 = L3_3.ped
                  L2_3 = L2_3(L3_3)
                  if not L2_3 then
                    L2_3 = IsPedGettingIntoAVehicle
                    L3_3 = cache
                    L3_3 = L3_3.ped
                    L2_3 = L2_3(L3_3)
                    if not L2_3 then
                      L2_3 = IsPedDiving
                      L3_3 = cache
                      L3_3 = L3_3.ped
                      L2_3 = L2_3(L3_3)
                      if not L2_3 then
                        L2_3 = IsPedBeingStunned
                        L3_3 = cache
                        L3_3 = L3_3.ped
                        L2_3 = L2_3(L3_3)
                        if not L2_3 then
                          break
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      L2_3 = Wait
      L3_3 = 100
      L2_3(L3_3)
    end
    L2_3 = ClearPedTasks
    L3_3 = cache
    L3_3 = L3_3.ped
    L2_3(L3_3)
    if L0_3 then
      L2_3 = L0_3
      if L2_3 then
        L2_3 = L2_3.scenario
      end
      if L2_3 then
        while true do
          L2_3 = Utils
          L2_3 = L2_3.isPlayingAnim
          L3_3 = L0_3
          L2_3 = L2_3(L3_3)
          if not L2_3 then
            L2_3 = GetEntityCoords
            L3_3 = cache
            L3_3 = L3_3.ped
            L2_3 = L2_3(L3_3)
            L3_3 = ClearAreaOfObjects
            L4_3 = L2_3.x
            L5_3 = L2_3.y
            L6_3 = L2_3.z
            L7_3 = 2.0
            L8_3 = 0
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
            break
          end
          L2_3 = Wait
          L3_3 = 100
          L2_3(L3_3)
        end
      end
    end
  end
  L6_2(L7_2)
end
function L2_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "lunar_unijob:stopCollecting"
  L0_2(L1_2)
  L0_2 = false
  L0_1 = L0_2
  L0_2 = LR
  L0_2 = L0_2.progressActive
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = LR
    L0_2 = L0_2.cancelProgress
    L0_2()
  end
end
L3_1 = RegisterNetEvent
L4_1 = "lunar_unijob:stopCollecting"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = false
  L0_1 = L1_2
  L1_2 = LR
  L1_2 = L1_2.progressActive
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = LR
    L1_2 = L1_2.cancelProgress
    L1_2()
  end
  if A0_2 then
    L1_2 = LR
    L1_2 = L1_2.notify
    L2_2 = A0_2
    L3_2 = "error"
    L1_2(L2_2, L3_2)
  end
end
L3_1(L4_1, L5_1)
L3_1 = {}
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = A0_2.collecting
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2.collecting
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
      L17_2 = L6_2.label
      if not L17_2 then
        L17_2 = locale
        L18_2 = "start_collecting"
        L17_2 = L17_2(L18_2)
      end
      L16_2.label = L17_2
      L17_2 = L6_2.icon
      if not L17_2 then
        L17_2 = "hand"
      end
      L16_2.icon = L17_2
      L17_2 = {}
      L17_2.data = L6_2
      L17_2.index = L5_2
      L17_2.locationIndex = L11_2
      L16_2.args = L17_2
      function L17_2()
        local L0_3, L1_3
        L0_3 = L0_1
        L0_3 = IsPedInMeleeCombat
        L1_3 = cache
        L1_3 = L1_3.ped
        L0_3 = L0_3(L1_3)
        L0_3 = not L0_3 and L0_3
        return L0_3
      end
      L16_2.canInteract = L17_2
      L17_2 = L1_1
      L16_2.onSelect = L17_2
      L17_2 = {}
      L18_2 = locale
      L19_2 = "cancel"
      L18_2 = L18_2(L19_2)
      L17_2.label = L18_2
      L17_2.icon = "circle-xmark"
      function L18_2()
        local L0_3, L1_3
        L0_3 = L0_1
        return L0_3
      end
      L17_2.canInteract = L18_2
      L18_2 = L2_1
      L17_2.onSelect = L18_2
      L15_2[1] = L16_2
      L15_2[2] = L17_2
      L14_2.options = L15_2
      L15_2 = L6_2.target
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L3_1
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
  end
end
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
end
L6_1 = {}
L6_1.create = L4_1
L6_1.clear = L5_1
Collecting = L6_1
