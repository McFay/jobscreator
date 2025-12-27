-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = nil
L1_1 = {}
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = false
  L3_2 = SetTimeout
  L4_2 = A1_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = L2_2
    if not L0_3 then
      L0_3 = A0_2
      L0_3()
    end
  end
  L3_2(L4_2, L5_2)
  L3_2 = {}
  function L4_2()
    local L0_3, L1_3
    L0_3 = true
    L2_2 = L0_3
  end
  L3_2.clear = L4_2
  return L3_2
end
L3_1 = RegisterNetEvent
L4_1 = "lunar_unijob:stopCrafting"
function L5_1()
  local L0_2, L1_2
  L0_2 = source
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2[L0_2]
    L1_2 = L1_2.timeout
    if L1_2 then
      L1_2 = L1_1
      L1_2 = L1_2[L0_2]
      L1_2 = L1_2.timeout
      L1_2 = L1_2.clear
      L1_2()
    end
    L1_2 = L1_1
    L1_2[L0_2] = nil
  end
end
L3_1(L4_1, L5_1)
L3_1 = lib
L3_1 = L3_1.callback
L3_1 = L3_1.register
L4_1 = "lunar_unijob:craft"
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = Framework
  L4_2 = L4_2.getPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L6_2 = L4_2
  L5_2 = L4_2.getJob
  L5_2 = L5_2(L6_2)
  L6_2 = L0_1
  L5_2 = L6_2[L5_2]
  if not L5_2 then
    return
  end
  L6_2 = L5_2.crafting
  L6_2 = L6_2[A1_2]
  L7_2 = L6_2
  if L7_2 then
    L7_2 = L7_2.locations
  end
  if L7_2 then
    L7_2 = L7_2[A2_2]
  end
  L8_2 = L6_2
  if L8_2 then
    L8_2 = L8_2.entries
  end
  if L8_2 then
    L8_2 = L8_2[A3_2]
  end
  if L6_2 and L7_2 and L8_2 then
    L9_2 = Utils
    L9_2 = L9_2.distanceCheck
    L10_2 = A0_2
    L11_2 = L7_2
    L12_2 = L6_2.radius
    if not L12_2 then
      L12_2 = Config
      L12_2 = L12_2.defaultRadius
    end
    L12_2 = L12_2 * 5
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    if L9_2 then
      L9_2 = L1_1
      L9_2 = L9_2[A0_2]
      if not L9_2 then
        goto lbl_56
      end
    end
  end
  do return end
  ::lbl_56::
  L9_2 = L8_2.blueprint
  if L9_2 then
    L10_2 = L4_2
    L9_2 = L4_2.hasItem
    L11_2 = L8_2.blueprint
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = false
      L10_2 = locale
      L11_2 = "missing_blueprint"
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2)
      return L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
    end
  end
  L9_2 = ipairs
  L10_2 = L8_2.requiredItems
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L16_2 = L4_2
    L15_2 = L4_2.getItemCount
    L17_2 = L14_2.name
    L15_2 = L15_2(L16_2, L17_2)
    L16_2 = L14_2.count
    if L15_2 < L16_2 then
      L15_2 = false
      L16_2 = locale
      L17_2 = "missing_required_items"
      L16_2, L17_2 = L16_2(L17_2)
      return L15_2, L16_2, L17_2
    end
  end
  L9_2 = L1_1
  L10_2 = {}
  L9_2[A0_2] = L10_2
  L9_2 = L1_1
  L9_2 = L9_2[A0_2]
  L10_2 = L2_1
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = A0_2
    L0_3 = L1_1
    L0_3 = L0_3[L1_3]
    if not L0_3 then
      return
    end
    L0_3 = Framework
    L0_3 = L0_3.getPlayerFromId
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L2_3 = A0_2
      L1_3 = L1_1
      L1_3[L2_3] = nil
      return
    end
    L1_3 = Utils
    L1_3 = L1_3.distanceCheck
    L2_3 = A0_2
    L3_3 = L7_2
    L4_3 = L6_2.radius
    if not L4_3 then
      L4_3 = Config
      L4_3 = L4_3.defaultRadius
    end
    L4_3 = L4_3 * 5
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    if not L1_3 then
      L2_3 = A0_2
      L1_3 = L1_1
      L1_3[L2_3] = nil
      return
    end
    L1_3 = ipairs
    L2_3 = L8_2.requiredItems
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L8_3 = L0_3
      L7_3 = L0_3.getItemCount
      L9_3 = L6_3.name
      L7_3 = L7_3(L8_3, L9_3)
      L8_3 = L6_3.count
      if L7_3 < L8_3 then
        L8_3 = A0_2
        L7_3 = L1_1
        L7_3[L8_3] = nil
        L7_3 = LR
        L7_3 = L7_3.notify
        L8_3 = A0_2
        L9_3 = locale
        L10_3 = "missing_required_items"
        L9_3 = L9_3(L10_3)
        L10_3 = "error"
        L7_3(L8_3, L9_3, L10_3)
        return
      end
    end
    L1_3 = ipairs
    L2_3 = L8_2.requiredItems
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L8_3 = L0_3
      L7_3 = L0_3.removeItem
      L9_3 = L6_3.name
      L10_3 = L6_3.count
      L7_3(L8_3, L9_3, L10_3)
    end
    L1_3 = ipairs
    L2_3 = L8_2.giveItems
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L8_3 = L0_3
      L7_3 = L0_3.addItem
      L9_3 = L6_3.name
      L10_3 = L6_3.count
      L7_3(L8_3, L9_3, L10_3)
    end
    L1_3 = Webhooks
    L1_3 = L1_3.settings
    L1_3 = L1_3.crafting
    if L1_3 then
      L1_3 = {}
      L2_3 = ipairs
      L3_3 = L8_2.giveItems
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = table
        L8_3 = L8_3.insert
        L9_3 = L1_3
        L10_3 = "%sx %s"
        L11_3 = L10_3
        L10_3 = L10_3.format
        L12_3 = L7_3.count
        L13_3 = L7_3.name
        L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3, L12_3, L13_3)
        L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
      end
      L2_3 = Logs
      L2_3 = L2_3.send
      L3_3 = A0_2
      L4_3 = L5_2.name
      L5_3 = "Crafted %s."
      L6_3 = L5_3
      L5_3 = L5_3.format
      L7_3 = table
      L7_3 = L7_3.concat
      L8_3 = L1_3
      L9_3 = ", "
      L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L7_3(L8_3, L9_3)
      L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    end
    L2_3 = A0_2
    L1_3 = L1_1
    L1_3[L2_3] = nil
  end
  L12_2 = L8_2.duration
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.timeout = L10_2
  L9_2 = true
  return L9_2
end
L3_1(L4_1, L5_1)
L3_1 = AddEventHandler
L4_1 = "playerDropped"
function L5_1()
  local L0_2, L1_2
  L0_2 = source
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2[L0_2]
    L1_2 = L1_2.timeout
    if L1_2 then
      L1_2 = L1_1
      L1_2 = L1_2[L0_2]
      L1_2 = L1_2.timeout
      L1_2 = L1_2.clear
      L1_2()
    end
    L1_2 = L1_1
    L1_2[L0_2] = nil
  end
end
L3_1(L4_1, L5_1)
L3_1 = {}
function L4_1(A0_2)
  local L1_2
  L0_1 = A0_2
end
L3_1.init = L4_1
Crafting = L3_1
