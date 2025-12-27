-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
L1_1 = {}
L2_1 = nil
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L2_1
  if not L0_2 then
    return
  end
  L0_2 = LR
  L0_2 = L0_2.hideUI
  L0_2()
  L0_2 = Binds
  L0_2 = L0_2.interact
  L0_2 = L0_2.removeListener
  L1_2 = "stop_anim"
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "lunar_unijob:stopAnimation"
  L2_2 = L2_1.name
  L0_2(L1_2, L2_2)
  L0_2 = ClearPedTasks
  L1_2 = cache
  L1_2 = L1_2.ped
  L0_2(L1_2)
  L0_2 = L2_1.lastCoords
  if L0_2 then
    L0_2 = SetEntityCoords
    L1_2 = cache
    L1_2 = L1_2.ped
    L2_2 = L2_1.lastCoords
    L2_2 = L2_2.x
    L3_2 = L2_1.lastCoords
    L3_2 = L3_2.y
    L4_2 = L2_1.lastCoords
    L4_2 = L4_2.z
    L4_2 = L4_2 - 1.0
    L0_2(L1_2, L2_2, L3_2, L4_2)
    L0_2 = SetEntityHeading
    L1_2 = cache
    L1_2 = L1_2.ped
    L2_2 = L2_1.lastCoords
    L2_2 = L2_2.w
    L0_2(L1_2, L2_2)
  end
  L0_2 = FreezeEntityPosition
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = nil
  L2_1 = L0_2
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetEntityCoords
  L1_2 = cache
  L1_2 = L1_2.ped
  L0_2 = L0_2(L1_2)
  L1_2 = GetEntityHeading
  L2_2 = cache
  L2_2 = L2_2.ped
  L1_2 = L1_2(L2_2)
  L2_2 = vector4
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L6_2 = L1_2
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L2_1
  if L1_2 then
    return
  end
  L4_2 = A0_2
  L1_2 = L4_2.name
  L2_2 = L4_2.animationZone
  L3_2 = L4_2.coords
  L4_2 = L2_2.checkOccupied
  if L4_2 then
    L4_2 = lib
    L4_2 = L4_2.callback
    L4_2 = L4_2.await
    L5_2 = "lunar_unijob:startAnimation"
    L6_2 = false
    L7_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if not L4_2 then
      return
    end
  end
  L4_2 = {}
  L4_2.name = L1_2
  L5_2 = L2_2.back
  if L5_2 then
    L5_2 = L4_1
    L5_2 = L5_2()
    if L5_2 then
      goto lbl_33
    end
  end
  L5_2 = nil
  ::lbl_33::
  L4_2.lastCoords = L5_2
  L2_1 = L4_2
  L4_2 = L2_2.disableFreeze
  if not L4_2 then
    L4_2 = FreezeEntityPosition
    L5_2 = cache
    L5_2 = L5_2.ped
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
  L4_2 = L2_2.move
  if L4_2 then
    L4_2 = SetEntityCoords
    L5_2 = cache
    L5_2 = L5_2.ped
    L6_2 = L3_2.x
    L7_2 = L3_2.y
    L8_2 = L3_2.z
    L8_2 = L8_2 - 1.0
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = L3_2.w
    if L4_2 then
      L4_2 = SetEntityHeading
      L5_2 = cache
      L5_2 = L5_2.ped
      L6_2 = L3_2.w
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = L2_2.duration
  if L4_2 then
    L4_2 = L2_2.progress
    if L4_2 then
      L4_2 = LR
      L4_2 = L4_2.progressBar
      L5_2 = L2_2.progress
      L6_2 = L2_2.duration
      L7_2 = false
      L8_2 = L2_2.animation
      L9_2 = Utils
      L9_2 = L9_2.convertAnimProp
      L10_2 = L2_2.animationProp
      L9_2, L10_2 = L9_2(L10_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    else
      L4_2 = Utils
      L4_2 = L4_2.playAnim
      L5_2 = L2_2.animation
      L6_2 = L2_2.animationProp
      L4_2(L5_2, L6_2)
      L4_2 = Wait
      L5_2 = L2_2.duration
      L4_2(L5_2)
    end
    L4_2 = L2_2.notify
    if L4_2 then
      L4_2 = LR
      L4_2 = L4_2.notify
      L5_2 = L2_2.notify
      L6_2 = "success"
      L4_2(L5_2, L6_2)
    end
    L4_2 = L3_1
    L4_2()
  else
    L4_2 = Utils
    L4_2 = L4_2.playAnim
    L5_2 = L2_2.animation
    L6_2 = L2_2.animationProp
    L4_2(L5_2, L6_2)
    L4_2 = LR
    L4_2 = L4_2.showUI
    L5_2 = "[%s] - %s"
    L6_2 = L5_2
    L5_2 = L5_2.format
    L7_2 = Binds
    L7_2 = L7_2.interact
    L8_2 = L7_2
    L7_2 = L7_2.getCurrentKey
    L7_2 = L7_2(L8_2)
    L8_2 = L2_2.stop
    if not L8_2 then
      L8_2 = locale
      L9_2 = "stop_anim"
      L8_2 = L8_2(L9_2)
    end
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = Binds
    L4_2 = L4_2.interact
    L4_2 = L4_2.addListener
    L5_2 = "stop_anim"
    L6_2 = L3_1
    L4_2(L5_2, L6_2)
  end
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A0_2.animationZones
  L2_2 = L2_2[A1_2]
  L3_2 = ipairs
  L4_2 = L2_2.locations
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L2_2.offset
    if L9_2 then
      L10_2 = L8_2.w
      if L10_2 then
        L10_2 = vector4
        L11_2 = L8_2.x
        L12_2 = L9_2.x
        L11_2 = L11_2 + L12_2
        L12_2 = L8_2.y
        L13_2 = L9_2.y
        L12_2 = L12_2 + L13_2
        L13_2 = L8_2.z
        L14_2 = L9_2.z
        L13_2 = L13_2 + L14_2
        L14_2 = L8_2.w
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
        L8_2 = L10_2
      else
        L10_2 = vector3
        L11_2 = L8_2.x
        L12_2 = L9_2.x
        L11_2 = L11_2 + L12_2
        L12_2 = L8_2.y
        L13_2 = L9_2.y
        L12_2 = L12_2 + L13_2
        L13_2 = L8_2.z
        L14_2 = L9_2.z
        L13_2 = L13_2 + L14_2
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L8_2 = L10_2
      end
    end
    L10_2 = "%s_%s_%s"
    L11_2 = L10_2
    L10_2 = L10_2.format
    L12_2 = A0_2.name
    L13_2 = A1_2
    L14_2 = L7_2
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L11_2 = Utils
    L11_2 = L11_2.createInteractionPoint
    L12_2 = {}
    L12_2.coords = L8_2
    L13_2 = L2_2.radius
    if not L13_2 then
      L13_2 = Config
      L13_2 = L13_2.defaultRadius
    end
    L12_2.radius = L13_2
    L13_2 = {}
    L14_2 = {}
    L15_2 = L2_2.label
    L14_2.label = L15_2
    L15_2 = L2_2.icon
    L14_2.icon = L15_2
    L15_2 = L5_1
    L14_2.onSelect = L15_2
    L15_2 = {}
    L15_2.name = L10_2
    L15_2.animationZone = L2_2
    L15_2.coords = L8_2
    L14_2.args = L15_2
    function L15_2()
      local L0_3, L1_3
      L0_3 = L2_1
      L0_3 = nil == L0_3
      return L0_3
    end
    L14_2.canInteract = L15_2
    L13_2[1] = L14_2
    L12_2.options = L13_2
    L13_2 = L2_2.target
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L2_2.global
    if L13_2 then
      L13_2 = L1_1
      if L13_2 then
        goto lbl_93
      end
    end
    L13_2 = L0_1
    ::lbl_93::
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.animationZones
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2.animationZones
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.global
    if not L7_2 then
      L7_2 = L6_1
      L8_2 = A0_2
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
end
function L8_1()
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
function L9_1()
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
    L7_2 = L6_2.animationZones
    if L7_2 then
      L7_2 = ipairs
      L8_2 = L6_2.animationZones
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = L12_2.global
        if L13_2 then
          L13_2 = L6_1
          L14_2 = L6_2
          L15_2 = L11_2
          L13_2(L14_2, L15_2)
        end
      end
    end
  end
end
L10_1 = {}
L10_1.create = L7_1
L10_1.clear = L8_1
L10_1.update = L9_1
AnimationZones = L10_1
