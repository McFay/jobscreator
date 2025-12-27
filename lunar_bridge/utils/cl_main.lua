-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = {}
L1_1 = false
function L2_1()
  local L0_2, L1_2
  L0_2 = L1_1
  if not L0_2 then
    L0_2 = true
    L1_1 = L0_2
    L0_2 = L0_1
    return L0_2
  end
end
GetUtils = L2_1
L2_1 = tonumber
L3_1 = tostring
L4_1 = GetUtils
L3_1 = L3_1(L4_1)
L4_1 = L3_1
L3_1 = L3_1.sub
L5_1 = 11
L3_1 = L3_1(L4_1, L5_1)
L4_1 = 16
L2_1 = L2_1(L3_1, L4_1)
L0_1.id = L2_1
L2_1 = {}
L3_1 = {}
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
L0_1.getTableSize = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = #A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2[L1_2]
  return L2_2
end
L0_1.randomFromTable = L4_1
L4_1 = {}
L5_1 = "WORLD_HUMAN_AA_COFFEE"
L6_1 = "WORLD_HUMAN_AA_SMOKE"
L7_1 = "WORLD_HUMAN_SMOKING"
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L4_2 = A1_2 or L4_2
  if "table" ~= L4_2 or not A1_2 then
    L4_2 = {}
    L4_2.model = A1_2
  end
  L5_2 = IsModelValid
  L6_2 = L4_2.model
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = error
    L6_2 = "Invalid ped model: %s"
    L7_2 = model
    L5_2(L6_2, L7_2)
  end
  L5_2 = {}
  L6_2 = lib
  L6_2 = L6_2.points
  L6_2 = L6_2.new
  L7_2 = {}
  L8_2 = A0_2.xyz
  L7_2.coords = L8_2
  L8_2 = Config
  L8_2 = L8_2.SpawnDistance
  if not L8_2 then
    L8_2 = 100.0
  end
  L7_2.distance = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = lib
    L0_3 = L0_3.requestModel
    L1_3 = L4_2.model
    L0_3(L1_3)
    L0_3 = CreatePed
    L1_3 = 4
    L2_3 = L4_2.model
    L3_3 = A0_2.x
    L4_3 = A0_2.y
    L5_3 = A0_2.z
    L5_3 = L5_3 - 1.0
    L6_3 = A0_2.w
    if not L6_3 then
      L6_3 = 0.0
    end
    L6_3 = L6_3 + 0.0
    L7_3 = false
    L8_3 = false
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L5_2.value = L0_3
    L0_3 = SetEntityInvincible
    L1_3 = L5_2.value
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = SetBlockingOfNonTemporaryEvents
    L1_3 = L5_2.value
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = TaskStartScenarioInPlace
    L1_3 = L5_2.value
    L2_3 = L4_2.scenario
    if not L2_3 then
      L2_3 = L0_1.randomFromTable
      L3_3 = L4_1
      L2_3 = L2_3(L3_3)
    end
    L0_3(L1_3, L2_3)
    L0_3 = FreezeEntityPosition
    L1_3 = L5_2.value
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = L4_2.offset
    if L0_3 then
      L0_3 = GetOffsetFromEntityInWorldCoords
      L1_3 = L5_2.value
      L2_3 = L4_2.offset
      L2_3 = L2_3.x
      L3_3 = L4_2.offset
      L3_3 = L3_3.y
      L4_3 = L4_2.offset
      L4_3 = L4_3.z
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      L1_3 = SetEntityCoords
      L2_3 = L5_2.value
      L3_3 = L0_3.x
      L4_3 = L0_3.y
      L5_3 = L0_3.z
      L5_3 = L5_3 - 1.0
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
    L0_3 = L4_2.heading
    if L0_3 then
      L0_3 = SetEntityHeading
      L1_3 = L5_2.value
      L2_3 = A0_2.w
      if not L2_3 then
        L2_3 = L4_2.heading
        L2_3 = 0.0 + L2_3
        L2_3 = L2_3 + 0.0
      end
      L0_3(L1_3, L2_3)
    end
    L0_3 = A2_2
    if not L0_3 then
      L0_3 = L5_2.options
      if not L0_3 then
        goto lbl_102
      end
    end
    L0_3 = L0_1.createEntityPoint
    L1_3 = {}
    L2_3 = L5_2.value
    L1_3.entity = L2_3
    L1_3.bone = 24816
    L1_3.radius = 2.0
    L2_3 = A2_2
    if not L2_3 then
      L2_3 = L5_2.options
    end
    L1_3.options = L2_3
    L2_3 = A3_2
    if not L2_3 then
      L2_3 = L5_2.target
    end
    L0_3 = L0_3(L1_3, L2_3)
    L5_2.zone = L0_3
    ::lbl_102::
  end
  L7_2.onEnter = L8_2
  function L8_2()
    local L0_3, L1_3
    L0_3 = L5_2.value
    if L0_3 then
      L0_3 = DeleteEntity
      L1_3 = L5_2.value
      L0_3(L1_3)
      L5_2.value = nil
      L0_3 = L5_2.zone
      if L0_3 then
        L0_3 = L5_2.zone
        L1_3 = L0_3
        L0_3 = L0_3.remove
        L0_3(L1_3)
        L5_2.zone = nil
      end
    end
    L0_3 = SetModelAsNoLongerNeeded
    L1_3 = L4_2.model
    L0_3(L1_3)
  end
  L7_2.onExit = L8_2
  L6_2 = L6_2(L7_2)
  function L7_2()
    local L0_3, L1_3
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.onExit
    L0_3(L1_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.remove
    L0_3(L1_3)
  end
  L5_2.remove = L7_2
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L5_2.options = A0_3
    L5_2.target = A1_3
    L2_3 = L5_2.value
    if L2_3 then
      L2_3 = L0_1.createEntityPoint
      L3_3 = {}
      L4_3 = L5_2.value
      L3_3.entity = L4_3
      L3_3.radius = 2.0
      L4_3 = L5_2.options
      L3_3.options = L4_3
      L4_3 = L5_2.target
      L2_3 = L2_3(L3_3, L4_3)
      L5_2.zone = L2_3
    end
    L2_3 = L5_2
    return L2_3
  end
  L5_2.addOptions = L7_2
  function L7_2()
    local L0_3, L1_3
    L0_3 = L5_2.zone
    if L0_3 then
      L0_3 = L5_2.zone
      L1_3 = L0_3
      L0_3 = L0_3.remove
      L0_3(L1_3)
      L5_2.zone = nil
    end
  end
  L5_2.disableOptions = L7_2
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = L5_2.zone
    if L0_3 then
      L0_3 = L5_2.zone
      L1_3 = L0_3
      L0_3 = L0_3.remove
      L0_3(L1_3)
      L5_2.zone = nil
    end
    L0_3 = SetEntityInvincible
    L1_3 = L5_2.value
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = SetBlockingOfNonTemporaryEvents
    L1_3 = L5_2.value
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = FreezeEntityPosition
    L1_3 = L5_2.value
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = SetEntityAsNoLongerNeeded
    L1_3 = L5_2.value
    L0_3(L1_3)
    L0_3 = L6_2
    L1_3 = L0_3
    L0_3 = L0_3.remove
    L0_3(L1_3)
  end
  L5_2.free = L7_2
  function L7_2()
    local L0_3, L1_3
    L0_3 = L5_2.disableOptions
    L0_3()
    L0_3 = L6_2.onExit
    function L1_3()
      local L0_4, L1_4
      L0_4 = L0_3
      L0_4()
      L0_4 = L6_2
      L1_4 = L0_4
      L0_4 = L0_4.remove
      L0_4(L1_4)
    end
    L6_2.onExit = L1_3
  end
  L5_2.markAsNotNeeded = L7_2
  function L7_2()
    local L0_3, L1_3
    L0_3 = L5_2.value
    return L0_3
  end
  L5_2.get = L7_2
  L7_2 = GetInvokingResource
  L7_2 = L7_2()
  L8_2 = L2_1
  L8_2 = L8_2[L7_2]
  if not L8_2 then
    L8_2 = L2_1
    L9_2 = {}
    L8_2[L7_2] = L9_2
  end
  L8_2 = table
  L8_2 = L8_2.insert
  L9_2 = L2_1
  L9_2 = L9_2[L7_2]
  L10_2 = L5_2
  L8_2(L9_2, L10_2)
  return L5_2
end
L0_1.createPed = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = IsModelValid
  L5_2 = A1_2.model
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = error
    L5_2 = "Invalid prop model: %s"
    L6_2 = L5_2
    L5_2 = L5_2.format
    L7_2 = A1_2.model
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L4_2 = vector4
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L8_2 = A0_2.w
  if not L8_2 then
    L8_2 = 0.0
  end
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  A0_2 = L4_2
  L4_2 = {}
  L5_2 = lib
  L5_2 = L5_2.points
  L5_2 = L5_2.new
  L6_2 = {}
  L7_2 = A0_2.xyz
  L6_2.coords = L7_2
  L7_2 = Config
  L7_2 = L7_2.SpawnDistance
  if not L7_2 then
    L7_2 = 100.0
  end
  L6_2.distance = L7_2
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = lib
    L0_3 = L0_3.requestModel
    L1_3 = A1_2.model
    L0_3(L1_3)
    L0_3 = CreateObjectNoOffset
    L1_3 = A1_2.model
    L2_3 = A0_2.x
    L3_3 = A0_2.y
    L4_3 = A0_2.z
    L5_3 = false
    L6_3 = false
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    L4_2.value = L0_3
    L0_3 = FreezeEntityPosition
    L1_3 = L4_2.value
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.w
    if L0_3 then
      L0_3 = SetEntityHeading
      L1_3 = L4_2.value
      L2_3 = A0_2.w
      L2_3 = L2_3 + 0.0
      L0_3(L1_3, L2_3)
    end
    L0_3 = A1_2.offset
    if L0_3 then
      L0_3 = L0_1.offsetCoords
      L1_3 = A0_2
      L2_3 = A1_2.offset
      L2_3 = L2_3.x
      L3_3 = A1_2.offset
      L3_3 = L3_3.y
      L4_3 = A1_2.offset
      L4_3 = L4_3.z
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      L1_3 = SetEntityCoordsNoOffset
      L2_3 = L4_2.value
      L3_3 = L0_3.x
      L4_3 = L0_3.y
      L5_3 = L0_3.z
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
    L0_3 = A1_2.rotation
    if L0_3 then
      L0_3 = SetEntityRotation
      L1_3 = L4_2.value
      L2_3 = A1_2.rotation
      L2_3 = L2_3.x
      L3_3 = A1_2.rotation
      L3_3 = L3_3.y
      L4_3 = A0_2.w
      L4_3 = L4_3 + 0.0
      L5_3 = A1_2.rotation
      L5_3 = L5_3.z
      L4_3 = L4_3 + L5_3
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L0_3 = A2_2
    if not L0_3 then
      L0_3 = L4_2.options
      if not L0_3 then
        goto lbl_85
      end
    end
    L0_3 = L0_1.createInteractionPoint
    L1_3 = {}
    L2_3 = A0_2
    L1_3.coords = L2_3
    L1_3.radius = 2.0
    L2_3 = A2_2
    if not L2_3 then
      L2_3 = L4_2.options
    end
    L1_3.options = L2_3
    L2_3 = A3_2
    if not L2_3 then
      L2_3 = L4_2.target
    end
    L0_3 = L0_3(L1_3, L2_3)
    L4_2.zone = L0_3
    ::lbl_85::
  end
  L6_2.onEnter = L7_2
  function L7_2()
    local L0_3, L1_3
    L0_3 = L4_2.value
    if L0_3 then
      L0_3 = DeleteEntity
      L1_3 = L4_2.value
      L0_3(L1_3)
      L4_2.value = nil
      L0_3 = L4_2.zone
      if L0_3 then
        L0_3 = L4_2.zone
        L1_3 = L0_3
        L0_3 = L0_3.remove
        L0_3(L1_3)
        L4_2.zone = nil
      end
    end
    L0_3 = SetModelAsNoLongerNeeded
    L1_3 = A1_2.model
    L0_3(L1_3)
  end
  L6_2.onExit = L7_2
  L5_2 = L5_2(L6_2)
  function L6_2()
    local L0_3, L1_3
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.onExit
    L0_3(L1_3)
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.remove
    L0_3(L1_3)
  end
  L4_2.remove = L6_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L4_2.options = A0_3
    L4_2.target = A1_3
    L2_3 = L4_2.value
    if L2_3 then
      L2_3 = L0_1.createInteractionPoint
      L3_3 = {}
      L4_3 = A0_2
      L3_3.coords = L4_3
      L3_3.radius = 2.0
      L4_3 = L4_2.options
      L3_3.options = L4_3
      L4_3 = L4_2.target
      L2_3 = L2_3(L3_3, L4_3)
      L4_2.zone = L2_3
    end
    L2_3 = L4_2
    return L2_3
  end
  L4_2.addOptions = L6_2
  function L6_2()
    local L0_3, L1_3
    L0_3 = L4_2.zone
    if L0_3 then
      L0_3 = L4_2.zone
      L1_3 = L0_3
      L0_3 = L0_3.remove
      L0_3(L1_3)
      L4_2.zone = nil
    end
  end
  L4_2.disableOptions = L6_2
  function L6_2()
    local L0_3, L1_3
    L0_3 = L4_2.value
    return L0_3
  end
  L4_2.get = L6_2
  L6_2 = GetInvokingResource
  L6_2 = L6_2()
  L7_2 = L2_1
  L7_2 = L7_2[L6_2]
  if not L7_2 then
    L7_2 = L2_1
    L8_2 = {}
    L7_2[L6_2] = L8_2
  end
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L2_1
  L8_2 = L8_2[L6_2]
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  return L4_2
end
L0_1.createProp = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if not A2_2 then
    L3_2 = Config
    A2_2 = L3_2.MaxDistance
  end
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = GetEntityCoords
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    A0_2 = L3_2
  end
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = GetEntityCoords
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    A1_2 = L3_2
  end
  if not A0_2 or not A1_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = A0_2.xyz
  L4_2 = A1_2.xyz
  L3_2 = L3_2 - L4_2
  L3_2 = #L3_2
  L3_2 = A2_2 >= L3_2
  return L3_2
end
L0_1.distanceCheck = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  while true do
    L2_2 = GetEntityCoords
    L3_2 = cache
    L3_2 = L3_2.ped
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2.xyz
    L2_2 = L2_2 - L3_2
    L2_2 = #L2_2
    if not (A1_2 < L2_2) then
      break
    end
    L2_2 = Wait
    L3_2 = 200
    L2_2(L3_2)
  end
end
L0_1.distanceWait = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = {}
  L2_2.value = 0
  function L3_2()
    local L0_3, L1_3
    L0_3 = RemoveBlip
    L1_3 = L2_2.value
    L0_3(L1_3)
  end
  L2_2.remove = L3_2
  if not A1_2 then
    return L2_2
  end
  L3_2 = AddBlipForCoord
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.value = L3_2
  L3_2 = SetBlipSprite
  L4_2 = L2_2.value
  L5_2 = A1_2.Sprite
  if not L5_2 then
    L5_2 = A1_2.sprite
  end
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipDisplay
  L4_2 = L2_2.value
  L5_2 = 4
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipScale
  L4_2 = L2_2.value
  L5_2 = A1_2.Size
  if not L5_2 then
    L5_2 = A1_2.size
  end
  L5_2 = L5_2 + 0.0
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipColour
  L4_2 = L2_2.value
  L5_2 = A1_2.Color
  if not L5_2 then
    L5_2 = A1_2.color
  end
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipAsShortRange
  L4_2 = L2_2.value
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = BeginTextCommandSetBlipName
  L4_2 = "STRING"
  L3_2(L4_2)
  L3_2 = AddTextComponentSubstringPlayerName
  L4_2 = A1_2.Name
  if not L4_2 then
    L4_2 = A1_2.name
  end
  L3_2(L4_2)
  L3_2 = EndTextCommandSetBlipName
  L4_2 = L2_2.value
  L3_2(L4_2)
  L3_2 = GetInvokingResource
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = L3_1
    L4_2 = L4_2[L3_2]
    if not L4_2 then
      L4_2 = L3_1
      L5_2 = {}
      L4_2[L3_2] = L5_2
    end
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L3_1
    L5_2 = L5_2[L3_2]
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
  return L2_2
end
L0_1.createBlip = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = {}
  function L5_2()
    local L0_3, L1_3
    L0_3 = RemoveBlip
    L1_3 = L4_2.value
    L0_3(L1_3)
  end
  L4_2.remove = L5_2
  L5_2 = AddBlipForRadius
  L6_2 = A0_2.x
  L7_2 = A0_2.y
  L8_2 = A0_2.z
  L9_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2.value = L5_2
  L5_2 = SetBlipDisplay
  L6_2 = L4_2.value
  L7_2 = 4
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipScale
  L6_2 = L4_2.value
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipColour
  L6_2 = L4_2.value
  L7_2 = A3_2
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipAsShortRange
  L6_2 = L4_2.value
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipAlpha
  L6_2 = L4_2.value
  L7_2 = 150
  L5_2(L6_2, L7_2)
  L5_2 = GetInvokingResource
  L5_2 = L5_2()
  if L5_2 then
    L6_2 = L3_1
    L6_2 = L6_2[L5_2]
    if not L6_2 then
      L6_2 = L3_1
      L7_2 = {}
      L6_2[L5_2] = L7_2
    end
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L3_1
    L7_2 = L7_2[L5_2]
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  return L4_2
end
L0_1.createRadiusBlip = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = {}
  function L3_2()
    local L0_3, L1_3
    L0_3 = RemoveBlip
    L1_3 = L2_2.value
    L0_3(L1_3)
  end
  L2_2.remove = L3_2
  L3_2 = AddBlipForEntity
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.value = L3_2
  L3_2 = SetBlipSprite
  L4_2 = L2_2.value
  L5_2 = A1_2.Sprite
  if not L5_2 then
    L5_2 = A1_2.sprite
  end
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipDisplay
  L4_2 = L2_2.value
  L5_2 = 4
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipScale
  L4_2 = L2_2.value
  L5_2 = A1_2.Size
  if not L5_2 then
    L5_2 = A1_2.size
  end
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipColour
  L4_2 = L2_2.value
  L5_2 = A1_2.Color
  if not L5_2 then
    L5_2 = A1_2.color
  end
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipAsShortRange
  L4_2 = L2_2.value
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = BeginTextCommandSetBlipName
  L4_2 = "STRING"
  L3_2(L4_2)
  L3_2 = AddTextComponentSubstringPlayerName
  L4_2 = A1_2.Name
  if not L4_2 then
    L4_2 = A1_2.name
  end
  L3_2(L4_2)
  L3_2 = EndTextCommandSetBlipName
  L4_2 = L2_2.value
  L3_2(L4_2)
  L3_2 = GetInvokingResource
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = L3_1
    L4_2 = L4_2[L3_2]
    if not L4_2 then
      L4_2 = L3_1
      L5_2 = {}
      L4_2[L3_2] = L5_2
    end
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L3_1
    L5_2 = L5_2[L3_2]
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
  return L2_2
end
L0_1.createEntityBlip = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetEntityCoords
  L4_2 = A1_2
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.x
  L5_2 = L2_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = L3_2.y
  L6_2 = L2_2.y
  L5_2 = L5_2 - L6_2
  L6_2 = GetHeadingFromVector_2d
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = SetEntityHeading
  L8_2 = A0_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L0_1.makeEntityFaceEntity = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2.x
  L4_2 = L2_2.x
  L3_2 = L3_2 - L4_2
  L4_2 = A1_2.y
  L5_2 = L2_2.y
  L4_2 = L4_2 - L5_2
  L5_2 = GetHeadingFromVector_2d
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = SetEntityHeading
  L7_2 = A0_2
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end
L0_1.makeEntityFaceCoords = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2.x
  L4_2 = L2_2.x
  L3_2 = L3_2 - L4_2
  L4_2 = A1_2.y
  L5_2 = L2_2.y
  L4_2 = L4_2 - L5_2
  L5_2 = GetHeadingFromVector_2d
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  return L5_2
end
L0_1.getHeadingToCoords = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = {}
    L2_2 = A0_2
    L1_2[1] = L2_2
    A0_2 = L1_2
  end
  L1_2 = ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Framework
    L7_2 = L7_2.getJob
    L7_2 = L7_2()
    if L7_2 == L6_2 then
      L7_2 = true
      return L7_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1.hasJobs = L5_1
function L5_1()
  local L0_2, L1_2
  L0_2 = L0_1.hasJobs
  L1_2 = Config
  L1_2 = L1_2.Dispatch
  L1_2 = L1_2.Jobs
  return L0_2(L1_2)
end
L0_1.isPolice = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = lib
  L1_2 = L1_2.addKeybind
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = L2_2
    function L3_3(A0_4)
      local L1_4, L2_4
      L1_4 = CreateThread
      function L2_4()
        local L0_5, L1_5
        L0_5 = A1_3
        L1_5 = A0_4
        L0_5(L1_5)
      end
      L1_4(L2_4)
    end
    L2_3[A0_3] = L3_3
  end
  L1_2.addListener = L3_2
  function L3_2(A0_3)
    local L1_3
    L1_3 = L2_2
    L1_3[A0_3] = nil
  end
  L1_2.removeListener = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = pairs
    L2_3 = L2_2
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L6_3
      L7_3()
    end
  end
  L1_2.onReleased = L3_2
  L3_2 = L1_2.getCurrentKey
  L1_2.getCurrentKey = L3_2
  return L1_2
end
L0_1.addKeybind = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = true
  L3_2 = {}
  function L4_2()
    local L0_3, L1_3
    L0_3 = false
    L2_2 = L0_3
  end
  L3_2.cancel = L4_2
  L4_2 = SetTimeout
  L5_2 = A0_2
  function L6_2()
    local L0_3, L1_3
    L0_3 = L2_2
    if L0_3 then
      L0_3 = A1_2
      L0_3()
    end
  end
  L4_2(L5_2, L6_2)
  return L3_2
end
L0_1.setTimeout = L5_1
L5_1 = nil
L6_1 = {}
L7_1 = GetCurrentResourceName
L7_1 = L7_1()
L8_1 = L7_1
L7_1 = L7_1.gsub
L9_1 = " "
L10_1 = ""
L7_1 = L7_1(L8_1, L9_1, L10_1)
L8_1 = "interact"
L7_1 = L7_1 .. L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L6_1
  L1_2 = #L1_2
  L1_2 = A0_2 - L1_2
  if L1_2 > 0 then
    L2_2 = 1
    L3_2 = L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L6_1
      L6_2 = #L6_2
      L6_2 = L6_2 + 1
      L7_2 = false
      L8_2 = lib
      L8_2 = L8_2.addKeybind
      L9_2 = {}
      L10_2 = L7_1
      L11_2 = L6_2
      L10_2 = L10_2 .. L11_2
      L9_2.name = L10_2
      L10_2 = Config
      L10_2 = L10_2.Keybinds
      L10_2 = L10_2[L6_2]
      L9_2.defaultKey = L10_2
      L9_2.description = "Interaction key"
      function L10_2()
