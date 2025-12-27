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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = IsPedInAnyVehicle
  L2_2 = cache
  L2_2 = L2_2.ped
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2.collecting
  L1_2 = L1_2.requiredItem
  if L1_2 then
    L1_2 = A0_2.collecting
    L1_2 = L1_2.requiredItem
    if "" ~= L1_2 then
      L1_2 = Framework
      L1_2 = L1_2.hasItem
      L2_2 = A0_2.collecting
      L2_2 = L2_2.requiredItem
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = LR
        L1_2 = L1_2.notify
        L2_2 = locale
        L3_2 = "missing_item"
        L4_2 = Utils
        L4_2 = L4_2.getItemLabel
        L5_2 = A0_2.collecting
        L5_2 = L5_2.requiredItem
        L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2(L5_2)
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        L3_2 = "error"
        L1_2(L2_2, L3_2)
        return
      end
    end
  end
  L5_2 = A0_2
  L1_2 = L5_2.collecting
  L2_2 = L5_2.name
  L3_2 = L5_2.index
  L4_2 = L5_2.coords
  L5_2 = lib
  L5_2 = L5_2.callback
  L5_2 = L5_2.await
  L6_2 = "lunar_unijob:harvestCollectable"
  L7_2 = false
  L8_2 = L2_2
  L9_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L6_2 = LR
    L6_2 = L6_2.notify
    L7_2 = msg
    L8_2 = "error"
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = Utils
  L6_2 = L6_2.makeEntityFaceCoords
  L7_2 = cache
  L7_2 = L7_2.ped
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = Utils
  L6_2 = L6_2.convertAnimProp
  L7_2 = L1_2.animationProp
  L6_2 = L6_2(L7_2)
  L7_2 = LR
  L7_2 = L7_2.progressBar
  L8_2 = L1_2.progress
  L9_2 = L1_2.duration
  L10_2 = false
  L11_2 = L1_2.animation
  L12_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = A0_2.advancedCollecting
  L5_2 = L5_2[A1_2]
  L6_2 = "%s_%s_%s"
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = A0_2.name
  L9_2 = A1_2
  L10_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L0_1
  L7_2 = L7_2[L6_2]
  if not L7_2 then
    L7_2 = L0_1
    L8_2 = {}
    L7_2[L6_2] = L8_2
  end
  L7_2 = L0_1
  L7_2 = L7_2[L6_2]
  L8_2 = nil
  L9_2 = nil
  L10_2 = L7_2[A4_2]
  if L10_2 then
    return
  end
  L10_2 = lib
  L10_2 = L10_2.points
  L10_2 = L10_2.new
  L11_2 = {}
  L11_2.coords = A3_2
  L11_2.distance = 100.0
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = lib
    L0_3 = L0_3.requestModel
    L1_3 = L5_2.propModel
    L0_3(L1_3)
    L0_3 = GetGroundZFor_3dCoord
    L1_3 = A3_2.x
    L2_3 = A3_2.y
    L3_3 = A3_2.z
    L4_3 = false
    L0_3, L1_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    L2_3 = 50.0
    while 0.0 == L1_3 do
      L3_3 = 500.0
      if not (L2_3 < L3_3) then
        break
      end
      L2_3 = L2_3 + 50.0
      L3_3 = GetGroundZFor_3dCoord
      L4_3 = A3_2.x
      L5_3 = A3_2.y
      L6_3 = A3_2.z
      L6_3 = L6_3 + L2_3
      L7_3 = false
      L3_3, L4_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
      L1_3 = L4_3
      L0_3 = L3_3
      L3_3 = Wait
      L4_3 = 0
      L3_3(L4_3)
    end
    L3_3 = CreateObjectNoOffset
    L4_3 = L5_2.propModel
    L5_3 = A3_2.x
    L6_3 = A3_2.y
    L7_3 = L1_3 + 1.0
    L8_3 = false
    L9_3 = false
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L8_2 = L3_3
    L3_3 = PlaceObjectOnGroundProperly
    L4_3 = L8_2
    L3_3(L4_3)
    L3_3 = Wait
    L4_3 = 0
    L3_3(L4_3)
    L3_3 = FreezeEntityPosition
    L4_3 = L8_2
    L5_3 = true
    L3_3(L4_3, L5_3)
    L3_3 = SetEntityHeading
    L4_3 = L8_2
    L5_3 = math
    L5_3 = L5_3.random
    L6_3 = 0
    L7_3 = 360
    L5_3 = L5_3(L6_3, L7_3)
    L5_3 = L5_3 + 0.0
    L3_3(L4_3, L5_3)
    L3_3 = SetEntityCoords
    L4_3 = L8_2
    L5_3 = GetOffsetFromEntityInWorldCoords
    L6_3 = L8_2
    L7_3 = 0.0
    L8_3 = 0.0
    L9_3 = -0.1
    L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L3_3 = GetEntityCoords
    L4_3 = L8_2
    L3_3 = L3_3(L4_3)
    L4_3 = L5_2.interactionOffset
    if not L4_3 then
      L4_3 = vector3
      L5_3 = 0.0
      L6_3 = 0.0
      L7_3 = 0.0
      L4_3 = L4_3(L5_3, L6_3, L7_3)
    end
    L5_3 = Utils
    L5_3 = L5_3.createInteractionPoint
    L6_3 = {}
    L7_3 = vector3
    L8_3 = L3_3.x
    L9_3 = L4_3.x
    L8_3 = L8_3 + L9_3
    L9_3 = L3_3.y
    L10_3 = L4_3.y
    L9_3 = L9_3 + L10_3
    L10_3 = L3_3.z
    L11_3 = L4_3.z
    L10_3 = L10_3 + L11_3
    L7_3 = L7_3(L8_3, L9_3, L10_3)
    L6_3.coords = L7_3
    L6_3.radius = 0.75
    L7_3 = {}
    L8_3 = {}
    L9_3 = L5_2.label
    if not L9_3 then
      L9_3 = locale
      L10_3 = "start_collecting"
      L9_3 = L9_3(L10_3)
    end
    L8_3.label = L9_3
    L9_3 = L5_2.icon
    if not L9_3 then
      L9_3 = "hand"
    end
    L8_3.icon = L9_3
    L9_3 = L1_1
    L8_3.onSelect = L9_3
    L9_3 = {}
    L10_3 = L5_2
    L9_3.collecting = L10_3
    L10_3 = L6_2
    L9_3.name = L10_3
    L10_3 = A4_2
    L9_3.index = L10_3
    L9_3.coords = L3_3
    L8_3.args = L9_3
    function L9_3()
      local L0_4, L1_4
      L0_4 = LR
      L0_4 = L0_4.progressActive
      L0_4 = L0_4()
      L0_4 = not L0_4
      return L0_4
    end
    L8_3.canInteract = L9_3
    L7_3[1] = L8_3
    L6_3.options = L7_3
    L5_3 = L5_3(L6_3)
    L9_2 = L5_3
  end
  L11_2.onEnter = L12_2
  function L12_2()
    local L0_3, L1_3
    L0_3 = DeleteEntity
    L1_3 = L8_2
    L0_3(L1_3)
    L0_3 = L9_2.remove
    L0_3()
  end
  L11_2.onExit = L12_2
  L10_2 = L10_2(L11_2)
  L7_2[A4_2] = L10_2
end
L3_1 = RegisterNetEvent
L4_1 = "lunar_unijob:spawnCollectable"
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  while true do
    L5_2 = GetJobs
    L5_2 = L5_2()
    L5_2 = L5_2[A0_2]
    if L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 100
    L5_2(L6_2)
  end
  L5_2 = GetJobs
  L5_2 = L5_2()
  L5_2 = L5_2[A0_2]
  L6_2 = L2_1
  L7_2 = L5_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L3_1(L4_1, L5_1)
L3_1 = lib
L3_1 = L3_1.callback
L4_1 = "lunar_unijob:getCollectables"
L5_1 = false
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2.spawned
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      while true do
        L13_2 = GetJobs
        L13_2 = L13_2()
        L14_2 = L6_2.jobName
        L13_2 = L13_2[L14_2]
        if L13_2 then
          break
        end
        L13_2 = Wait
        L14_2 = 100
        L13_2(L14_2)
      end
      L13_2 = L2_1
      L14_2 = GetJobs
      L14_2 = L14_2()
      L15_2 = L6_2.jobName
      L14_2 = L14_2[L15_2]
      L15_2 = L6_2.index
      L16_2 = L6_2.locationIndex
      L17_2 = L12_2
      L18_2 = L11_2
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    end
  end
end
L3_1(L4_1, L5_1, L6_1)
L3_1 = RegisterNetEvent
L4_1 = "lunar_unijob:removeCollectable"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.onExit
  L2_2(L3_2)
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.remove
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "lunar_unijob:clearAdvancedCollecting"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L0_1
    L7_2 = L7_2[L6_2]
    if L7_2 then
      L7_2 = pairs
      L8_2 = L0_1
      L8_2 = L8_2[L6_2]
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L14_2 = L12_2
        L13_2 = L12_2.onExit
        L13_2(L14_2)
        L14_2 = L12_2
        L13_2 = L12_2.remove
        L13_2(L14_2)
      end
      L7_2 = L0_1
      L7_2[L6_2] = nil
    end
  end
end
L3_1(L4_1, L5_1)
