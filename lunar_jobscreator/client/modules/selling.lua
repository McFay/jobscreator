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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = A0_2
  L1_2 = L4_2.data
  L2_2 = L4_2.index
  L3_2 = L4_2.locationIndex
  L4_2 = {}
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = L1_2.items
    L1_3 = L1_3[A0_3]
    L2_3 = locale
    L3_3 = "selling_header"
    L4_3 = Utils
    L4_3 = L4_3.getItemLabel
    L5_3 = L1_3.name
    L4_3 = L4_3(L5_3)
    L5_3 = L1_3.price
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L3_3 = lib
    L3_3 = L3_3.inputDialog
    L4_3 = L2_3
    L5_3 = {}
    L6_3 = {}
    L6_3.type = "number"
    L7_3 = locale
    L8_3 = "amount"
    L7_3 = L7_3(L8_3)
    L6_3.label = L7_3
    L6_3.min = 1
    L6_3.required = true
    L5_3[1] = L6_3
    L3_3 = L3_3(L4_3, L5_3)
    if L3_3 then
      L3_3 = L3_3[1]
    end
    if not L3_3 then
      L4_3 = lib
      L4_3 = L4_3.showContext
      L5_3 = "selling"
      L4_3(L5_3)
      return
    end
    L4_3 = lib
    L4_3 = L4_3.callback
    L4_3 = L4_3.await
    L5_3 = "lunar_unijob:startSelling"
    L6_3 = false
    L7_3 = L2_2
    L8_3 = L3_2
    L9_3 = A0_3
    L10_3 = L3_3
    L4_3, L5_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    if not L4_3 then
      L6_3 = LR
      L6_3 = L6_3.notify
      L7_3 = L5_3 or L7_3
      if not L5_3 then
        L7_3 = locale
        L8_3 = "cant_sell"
        L7_3 = L7_3(L8_3)
      end
      L8_3 = "error"
      L6_3(L7_3, L8_3)
      return
    end
    L6_3 = CreateThread
    function L7_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
      L0_4 = L1_2.animation
      L1_4 = L1_2.animationProp
      if L0_4 then
        L2_4 = Utils
        L2_4 = L2_4.playAnim
        L3_4 = L0_4
        L4_4 = L1_4
        L2_4(L3_4, L4_4)
      end
      L2_4 = L1_2.sellAtOnce
      if L2_4 then
        L2_4 = LR
        L2_4 = L2_4.progressBar
        L3_4 = L1_2.progress
        L4_4 = L1_2.duration
        L5_4 = false
        L2_4(L3_4, L4_4, L5_4)
      else
        L2_4 = true
        L0_1 = L2_4
        while true do
          L2_4 = L0_1
          if not L2_4 then
            break
          end
          L2_4 = LR
          L2_4 = L2_4.progressBar
          L3_4 = L1_2.progress
          L4_4 = L1_2.duration
          L5_4 = true
          L2_4 = L2_4(L3_4, L4_4, L5_4)
          if not L2_4 then
            L2_4 = TriggerServerEvent
            L3_4 = "lunar_unijob:stopSelling"
            L2_4(L3_4)
            L2_4 = false
            L0_1 = L2_4
          end
          L2_4 = L3_3
          L2_4 = L2_4 - 1
          L3_3 = L2_4
          L2_4 = L3_3
          if 0 == L2_4 then
            L2_4 = false
            L0_1 = L2_4
          end
          L2_4 = Wait
          L3_4 = 0
          L2_4(L3_4)
        end
      end
      L2_4 = ClearPedTasks
      L3_4 = cache
      L3_4 = L3_4.ped
      L2_4(L3_4)
    end
    L6_3(L7_3)
  end
  L6_2 = ipairs
  L7_2 = L1_2.items
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = nil
    L13_2 = type
    L14_2 = L11_2.price
    L13_2 = L13_2(L14_2)
    if "number" == L13_2 then
      L13_2 = locale
      L14_2 = "sell_price"
      L15_2 = L11_2.price
      L13_2 = L13_2(L14_2, L15_2)
      L12_2 = L13_2
    else
      L13_2 = locale
      L14_2 = "sell_price2"
      L15_2 = L11_2.price
      L15_2 = L15_2.min
      L16_2 = L11_2.price
      L16_2 = L16_2.max
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L12_2 = L13_2
    end
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = L4_2
    L15_2 = {}
    L16_2 = Utils
    L16_2 = L16_2.getItemLabel
    L17_2 = L11_2.name
    L16_2 = L16_2(L17_2)
    L15_2.title = L16_2
    L15_2.description = L12_2
    L16_2 = L11_2.icon
    L15_2.icon = L16_2
    L16_2 = L11_2.image
    L15_2.image = L16_2
    L15_2.onSelect = L5_2
    L15_2.args = L10_2
    L13_2(L14_2, L15_2)
  end
  L6_2 = lib
  L6_2 = L6_2.registerContext
  L7_2 = {}
  L7_2.id = "selling"
  L8_2 = locale
  L9_2 = "selling"
  L8_2 = L8_2(L9_2)
  L7_2.title = L8_2
  L7_2.options = L4_2
  L6_2(L7_2)
  L6_2 = lib
  L6_2 = L6_2.showContext
  L7_2 = "selling"
  L6_2(L7_2)
end
function L2_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "lunar_unijob:stopSelling"
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
L4_1 = "lunar_unijob:stopSelling"
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
  L1_2 = A0_2.selling
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2.selling
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
        L18_2 = "open_selling"
        L17_2 = L17_2(L18_2)
      end
      L16_2.label = L17_2
      L17_2 = L6_2.icon
      if not L17_2 then
        L17_2 = "dollar-sign"
      end
      L16_2.icon = L17_2
      function L17_2()
        local L0_3, L1_3
        L0_3 = L0_1
        L0_3 = HasGrade
        L1_3 = L6_2.grade
        L0_3 = not L0_3 and L0_3
        return L0_3
      end
      L16_2.canInteract = L17_2
      L17_2 = L1_1
      L16_2.onSelect = L17_2
      L17_2 = {}
      L17_2.data = L6_2
      L17_2.index = L5_2
      L17_2.locationIndex = L11_2
      L16_2.args = L17_2
      L17_2 = {}
      L18_2 = locale
      L19_2 = "cancel"
      L18_2 = L18_2(L19_2)
      L17_2.label = L18_2
      L17_2.icon = "xmark"
      function L18_2()
        local L0_3, L1_3
        L0_3 = L0_1
        if L0_3 then
          L0_3 = HasGrade
          L1_3 = L6_2.grade
          L0_3 = L0_3(L1_3)
        end
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
Selling = L6_1
