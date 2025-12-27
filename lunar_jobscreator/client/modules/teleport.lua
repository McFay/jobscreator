-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A1_2 then
    L2_2 = lib
    L2_2 = L2_2.requestAnimDict
    L3_2 = "anim@heists@keycard@"
    L2_2(L3_2)
    L2_2 = TaskPlayAnim
    L3_2 = cache
    L3_2 = L3_2.ped
    L4_2 = "anim@heists@keycard@"
    L5_2 = "exit"
    L6_2 = 5.0
    L7_2 = 1.0
    L8_2 = -1
    L9_2 = 16
    L10_2 = 0
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L2_2 = DoScreenFadeOut
  L3_2 = 750
  L2_2(L3_2)
  L2_2 = RequestCollisionAtCoord
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Wait
  L3_2 = 1000
  L2_2(L3_2)
  L2_2 = SetArtificialLightsState
  L3_2 = false
  L2_2(L3_2)
  L2_2 = SetEntityCoords
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetEntityHeading
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = A0_2.w
  L2_2(L3_2, L4_2)
  L2_2 = SetGameplayCamRelativeHeading
  L3_2 = 0.0
  L2_2(L3_2)
  L2_2 = PlaceObjectOnGroundProperly
  L3_2 = cache
  L3_2 = L3_2.ped
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 1750
  L2_2(L3_2)
  L2_2 = DoScreenFadeIn
  L3_2 = 500
  L2_2(L3_2)
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L1_2 = L3_2.job
  L2_2 = L3_2.index
  L3_2 = L1_2.teleports
  L3_2 = L3_2[L2_2]
  L4_2 = nil
  L5_2 = L1_1
  L6_2 = L3_2.to
  L6_2 = L6_2.coords
  L7_2 = L3_2.disableAnim
  L5_2(L6_2, L7_2)
  L5_2 = TriggerServerEvent
  L6_2 = "lunar_unijob:teleport"
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L5_2 = Utils
  L5_2 = L5_2.createInteractionPoint
  L6_2 = {}
  L7_2 = L3_2.to
  L7_2 = L7_2.target
  L6_2.coords = L7_2
  L7_2 = L3_2.radius
  if not L7_2 then
    L7_2 = Config
    L7_2 = L7_2.defaultRadius
  end
  L6_2.radius = L7_2
  L7_2 = {}
  L8_2 = {}
  L9_2 = L3_2.to
  L9_2 = L9_2.label
  if not L9_2 then
    L9_2 = locale
    L10_2 = "go_outside"
    L9_2 = L9_2(L10_2)
  end
  L8_2.label = L9_2
  L9_2 = L3_2.to
  L9_2 = L9_2.icon
  if not L9_2 then
    L9_2 = "door-open"
  end
  L8_2.icon = L9_2
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_1
    L1_3 = L3_2.from
    L1_3 = L1_3.coords
    L2_3 = L3_2.disableAnim
    L0_3(L1_3, L2_3)
    L0_3 = TriggerServerEvent
    L1_3 = "lunar_unijob:exitTeleport"
    L0_3(L1_3)
    L0_3 = L4_2
    if L0_3 then
      L0_3 = L4_2.remove
      L0_3()
    end
  end
  L8_2.onSelect = L9_2
  L7_2[1] = L8_2
  L6_2.options = L7_2
  L5_2 = L5_2(L6_2)
  L4_2 = L5_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2.teleports
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2.teleports
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Utils
    L7_2 = L7_2.createInteractionPoint
    L8_2 = {}
    L9_2 = L6_2.from
    L9_2 = L9_2.target
    L8_2.coords = L9_2
    L9_2 = L6_2.radius
    if not L9_2 then
      L9_2 = Config
      L9_2 = L9_2.defaultRadius
    end
    L8_2.radius = L9_2
    L9_2 = {}
    L10_2 = {}
    L11_2 = L6_2.from
    L11_2 = L11_2.label
    if not L11_2 then
      L11_2 = locale
      L12_2 = "go_inside"
      L11_2 = L11_2(L12_2)
    end
    L10_2.label = L11_2
    L11_2 = L6_2.from
    L11_2 = L11_2.icon
    if not L11_2 then
      L11_2 = "door-open"
    end
    L10_2.icon = L11_2
    L11_2 = L2_1
    L10_2.onSelect = L11_2
    L11_2 = {}
    L11_2.job = A0_2
    L11_2.index = L5_2
    L10_2.args = L11_2
    function L11_2()
      local L0_3, L1_3
      L0_3 = HasGrade
      L1_3 = L6_2.grade
      return L0_3(L1_3)
    end
    L10_2.canInteract = L11_2
    L9_2[1] = L10_2
    L8_2.options = L9_2
    L9_2 = L6_2.target
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L0_1
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
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
L5_1 = {}
L5_1.create = L3_1
L5_1.clear = L4_1
Teleports = L5_1
