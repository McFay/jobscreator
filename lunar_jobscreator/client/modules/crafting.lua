-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = "%sx %s"
    L11_2 = L10_2
    L10_2 = L10_2.format
    L12_2 = L7_2.count
    L13_2 = Utils
    L13_2 = L13_2.getItemLabel
    L14_2 = L7_2.name
    L13_2, L14_2 = L13_2(L14_2)
    L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L2_2 = locale
  L3_2 = "required_items"
  L4_2 = table
  L4_2 = L4_2.concat
  L5_2 = L1_2
  L6_2 = ", "
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2, L6_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = A0_2
  L1_2 = L4_2.data
  L2_2 = L4_2.index
  L3_2 = L4_2.locationIndex
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = LR
    L1_3 = L1_3.progressActive
    L1_3 = L1_3()
    if L1_3 then
      return
    end
    L1_3 = L1_2.entries
    L1_3 = L1_3[A0_3]
    L2_3 = lib
    L2_3 = L2_3.callback
    L2_3 = L2_3.await
    L3_3 = "lunar_unijob:craft"
    L4_3 = false
    L5_3 = L2_2
    L6_3 = L3_2
    L7_3 = A0_3
    L2_3, L3_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    if not L2_3 then
      L4_3 = LR
      L4_3 = L4_3.notify
      L5_3 = L3_3 or L5_3
      if not L3_3 then
        L5_3 = locale
        L6_3 = "missing_required_items"
        L5_3 = L5_3(L6_3)
      end
      L6_3 = "error"
      L4_3(L5_3, L6_3)
      return
    end
    L4_3 = Utils
    L4_3 = L4_3.convertAnimProp
    L5_3 = L1_2.animationProp
    L4_3 = L4_3(L5_3)
    L5_3 = LR
    L5_3 = L5_3.progressBar
    L6_3 = L1_3.progress
    L7_3 = L1_3.duration
    L8_3 = true
    L9_3 = L1_2.animation
    L10_3 = L4_3
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    if not L5_3 then
      L6_3 = TriggerServerEvent
      L7_3 = "lunar_unijob:stopCrafting"
      L6_3(L7_3)
    end
    L6_3 = L1_2.animation
    if L6_3 then
      L6_3 = L6_3.scenario
    end
    if L6_3 then
      while true do
        L6_3 = Utils
        L6_3 = L6_3.isPlayingAnim
        L7_3 = L1_2.animation
        L6_3 = L6_3(L7_3)
        if not L6_3 then
          L6_3 = GetEntityCoords
          L7_3 = cache
          L7_3 = L7_3.ped
          L6_3 = L6_3(L7_3)
          L7_3 = ClearAreaOfObjects
          L8_3 = L6_3.x
          L9_3 = L6_3.y
          L10_3 = L6_3.z
          L11_3 = 2.0
          L12_3 = 0
          L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
          break
        end
        L6_3 = Wait
        L7_3 = 100
        L6_3(L7_3)
      end
    end
  end
  L5_2 = {}
  L6_2 = ipairs
  L7_2 = L1_2.entries
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L5_2
    L14_2 = {}
    L15_2 = L11_2.label
    if not L15_2 then
      L15_2 = Utils
      L15_2 = L15_2.getItemLabel
      L16_2 = L11_2.giveItems
      L16_2 = L16_2[1]
      L16_2 = L16_2.name
      L15_2 = L15_2(L16_2)
    end
    L14_2.title = L15_2
    L15_2 = L11_2.blueprint
    if L15_2 then
      L15_2 = locale
      L16_2 = "blueprint"
      L15_2 = L15_2(L16_2)
      if L15_2 then
        goto lbl_36
      end
    end
    L15_2 = ""
    ::lbl_36::
    L16_2 = L0_1
    L17_2 = L11_2.requiredItems
    L16_2 = L16_2(L17_2)
    L15_2 = L15_2 .. L16_2
    L14_2.description = L15_2
    L15_2 = L11_2.blueprint
    if L15_2 then
      L15_2 = Editable
      L15_2 = L15_2.getInventoryIcon
      L16_2 = L11_2.giveItems
      L16_2 = L16_2[1]
      L16_2 = L16_2.name
      L15_2 = L15_2(L16_2)
    end
    L14_2.icon = L15_2
    L15_2 = L11_2.blueprint
    if L15_2 then
      L15_2 = Editable
      L15_2 = L15_2.getInventoryIcon
      L16_2 = L11_2.blueprint
      L15_2 = L15_2(L16_2)
      if L15_2 then
        goto lbl_66
      end
    end
    L15_2 = Editable
    L15_2 = L15_2.getInventoryIcon
    L16_2 = L11_2.giveItems
    L16_2 = L16_2[1]
    L16_2 = L16_2.name
    L15_2 = L15_2(L16_2)
    ::lbl_66::
    L14_2.image = L15_2
    L14_2.args = L10_2
    L14_2.onSelect = L4_2
    L12_2(L13_2, L14_2)
  end
  L6_2 = lib
  L6_2 = L6_2.registerContext
  L7_2 = {}
  L7_2.id = "crafting"
  L8_2 = locale
  L9_2 = "crafting"
  L8_2 = L8_2(L9_2)
  L7_2.title = L8_2
  L7_2.options = L5_2
  L6_2(L7_2)
  L6_2 = lib
  L6_2 = L6_2.showContext
  L7_2 = "crafting"
  L6_2(L7_2)
end
L2_1 = {}
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = A0_2.crafting
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2.crafting
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
        L18_2 = "open_crafting"
        L17_2 = L17_2(L18_2)
      end
      L16_2.label = L17_2
      L17_2 = L6_2.icon
      if not L17_2 then
        L17_2 = "screwdriver-wrench"
      end
      L16_2.icon = L17_2
      L17_2 = L1_1
      L16_2.onSelect = L17_2
      L17_2 = {}
      L17_2.data = L6_2
      L17_2.index = L5_2
      L17_2.locationIndex = L11_2
      L16_2.args = L17_2
      function L17_2()
        local L0_3, L1_3
        L0_3 = LR
        L0_3 = L0_3.progressActive
        L0_3 = L0_3()
        L0_3 = HasGrade
        L1_3 = L6_2.grade
        L0_3 = not L0_3 and L0_3
        return L0_3
      end
      L16_2.canInteract = L17_2
      L17_2 = {}
      L18_2 = locale
      L19_2 = "stop_anim"
      L18_2 = L18_2(L19_2)
      L17_2.label = L18_2
      L17_2.icon = "circle-xmark"
      function L18_2()
        local L0_3, L1_3
        L0_3 = LR
        L0_3 = L0_3.progressActive
        L0_3 = L0_3()
        if L0_3 then
          L0_3 = LR
          L0_3 = L0_3.cancelProgress
          L0_3()
        end
      end
      L17_2.onSelect = L18_2
      function L18_2()
        local L0_3, L1_3
        L0_3 = LR
        L0_3 = L0_3.progressActive
        return L0_3()
      end
      L17_2.canInteract = L18_2
      L15_2[1] = L16_2
      L15_2[2] = L17_2
      L14_2.options = L15_2
      L15_2 = L6_2.target
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L2_1
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
  end
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ipairs
  L1_2 = L2_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.remove
    L6_2()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L2_1
  L0_2(L1_2)
end
L5_1 = {}
L5_1.create = L3_1
L5_1.clear = L4_1
Crafting = L5_1
