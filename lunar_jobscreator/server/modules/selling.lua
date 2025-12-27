-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = nil
L1_1 = {}
L2_1 = {}
L3_1 = RegisterNetEvent
L4_1 = "lunar_unijob:stopSelling"
function L5_1()
  local L0_2, L1_2
  L0_2 = source
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = L2_1
    L1_2[L0_2] = true
  end
end
L3_1(L4_1, L5_1)
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "lunar_unijob:stopSelling"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L1_1
  L3_2 = L2_1
  L4_2 = nil
  L3_2[A0_2] = nil
  L2_2[A0_2] = L4_2
end
L4_1 = lib
L4_1 = L4_1.callback
L4_1 = L4_1.register
L5_1 = "lunar_unijob:startSelling"
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = Framework
  L5_2 = L5_2.getPlayerFromId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    return
  end
  L7_2 = L5_2
  L6_2 = L5_2.getJob
  L6_2 = L6_2(L7_2)
  L7_2 = L0_1
  L6_2 = L7_2[L6_2]
  if not L6_2 then
    return
  end
  L7_2 = L6_2.selling
  L7_2 = L7_2[A1_2]
  L8_2 = L7_2
  if L8_2 then
    L8_2 = L8_2.locations
  end
  if L8_2 then
    L8_2 = L8_2[A2_2]
  end
  if L7_2 and L8_2 then
    L9_2 = Utils
    L9_2 = L9_2.distanceCheck
    L10_2 = A0_2
    L11_2 = L8_2
    L12_2 = L7_2.radius
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
        L9_2 = L2_1
        L9_2 = L9_2[A0_2]
        if not (L9_2 or A4_2 <= 0) then
          goto lbl_53
        end
      end
    end
  end
  do return end
  ::lbl_53::
  L9_2 = L7_2.items
  L9_2 = L9_2[A3_2]
  L11_2 = L5_2
  L10_2 = L5_2.getItemCount
  L12_2 = L9_2.name
  L10_2 = L10_2(L11_2, L12_2)
  if A4_2 > L10_2 then
    L10_2 = false
    L11_2 = locale
    L12_2 = "not_enough_items"
    L11_2, L12_2, L13_2 = L11_2(L12_2)
    return L10_2, L11_2, L12_2, L13_2
  end
  L10_2 = L7_2.sellAtOnce
  if L10_2 then
    L11_2 = L5_2
    L10_2 = L5_2.removeItem
    L12_2 = L9_2.name
    L13_2 = A4_2
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = SetTimeout
    L11_2 = L7_2.duration
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
      L0_3 = type
      L1_3 = L9_2.price
      L0_3 = L0_3(L1_3)
      if "number" == L0_3 then
        L0_3 = L9_2.price
        if L0_3 then
          goto lbl_16
        end
      end
      L0_3 = math
      L0_3 = L0_3.random
      L1_3 = L9_2.price
      L1_3 = L1_3.min
      L2_3 = L9_2.price
      L2_3 = L2_3.max
      L0_3 = L0_3(L1_3, L2_3)
      ::lbl_16::
      L1_3 = A4_2
      L0_3 = L0_3 * L1_3
      L1_3 = L9_2.currency
      if not L1_3 then
        L1_3 = "money"
      end
      if L0_3 <= 0 then
        return
      end
      if "society" == L1_3 then
        L2_3 = L7_2.employeePercentage
        if L2_3 then
          L2_3 = math
          L2_3 = L2_3.floor
          L3_3 = L7_2.employeePercentage
          L3_3 = L0_3 * L3_3
          L3_3 = L3_3 / 100
          L2_3 = L2_3(L3_3)
          L3_3 = L5_2
          L4_3 = L3_3
          L3_3 = L3_3.addAccountMoney
          L5_3 = "money"
          L6_3 = L2_3
          L3_3(L4_3, L5_3, L6_3)
          L3_3 = Editable
          L3_3 = L3_3.addSocietyMoney
          L4_3 = L6_2.name
          L5_3 = L0_3 - L2_3
          L3_3(L4_3, L5_3)
        else
          L2_3 = Editable
          L2_3 = L2_3.addSocietyMoney
          L3_3 = L6_2.name
          L4_3 = L0_3
          L2_3(L3_3, L4_3)
        end
      else
        L2_3 = L5_2
        L3_3 = L2_3
        L2_3 = L2_3.addAccountMoney
        L4_3 = L1_3
        L5_3 = L0_3
        L2_3(L3_3, L4_3, L5_3)
      end
      L2_3 = LR
      L2_3 = L2_3.notify
      L3_3 = A0_2
      L4_3 = locale
      L5_3 = A4_2
      if 1 == L5_3 then
        L5_3 = "sold_item"
        if L5_3 then
          goto lbl_73
        end
      end
      L5_3 = "sold_items"
      ::lbl_73::
      L6_3 = L0_3
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = "success"
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = Webhooks
      L2_3 = L2_3.settings
      L2_3 = L2_3.selling
      if L2_3 then
        L2_3 = Logs
        L2_3 = L2_3.send
        L3_3 = A0_2
        L4_3 = L6_2.name
        L5_3 = "Sold %sx %s for %s$."
        L6_3 = L5_3
        L5_3 = L5_3.format
        L7_3 = A4_2
        L8_3 = Utils
        L8_3 = L8_3.getItemLabel
        L9_3 = L9_2.name
        L8_3 = L8_3(L9_3)
        L9_3 = L0_3
        L5_3, L6_3, L7_3, L8_3, L9_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      end
    end
    L10_2(L11_2, L12_2)
    L10_2 = true
    return L10_2
  end
  L10_2 = L1_1
  L10_2[A0_2] = true
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L1_3 = A0_2
      L0_3 = L1_1
      L0_3 = L0_3[L1_3]
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = L7_2.duration
      L1_3 = L1_3 + 100
      L0_3(L1_3)
      L1_3 = A0_2
      L0_3 = L1_1
      L0_3 = L0_3[L1_3]
      if L0_3 then
        L1_3 = A0_2
        L0_3 = L2_1
        L0_3 = L0_3[L1_3]
        if not L0_3 then
          goto lbl_28
        end
      end
      L1_3 = A0_2
      L0_3 = L1_1
      L0_3[L1_3] = nil
      L1_3 = A0_2
      L0_3 = L2_1
      L0_3[L1_3] = nil
      do return end
      ::lbl_28::
      L0_3 = A4_2
      L0_3 = L0_3 - 1
      A4_2 = L0_3
      L0_3 = Utils
      L0_3 = L0_3.distanceCheck
      L1_3 = A0_2
      L2_3 = L8_2
      L3_3 = L7_2.radius
      if not L3_3 then
        L3_3 = Config
        L3_3 = L3_3.defaultRadius
      end
      L3_3 = L3_3 * 5
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      if not L0_3 then
        L0_3 = L3_1
        L1_3 = A0_2
        L2_3 = locale
        L3_3 = "too_far"
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L2_3(L3_3)
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        return
      end
      L0_3 = L5_2
      L1_3 = L0_3
      L0_3 = L0_3.getItemCount
      L2_3 = L9_2.name
      L0_3 = L0_3(L1_3, L2_3)
      if 0 == L0_3 then
        L0_3 = L3_1
        L1_3 = A0_2
        L0_3(L1_3)
        return
      end
      L0_3 = L5_2
      L1_3 = L0_3
      L0_3 = L0_3.removeItem
      L2_3 = L9_2.name
      L3_3 = 1
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = type
      L1_3 = L9_2.price
      L0_3 = L0_3(L1_3)
      if "number" == L0_3 then
        L0_3 = L9_2.price
        if L0_3 then
          goto lbl_83
        end
      end
      L0_3 = math
      L0_3 = L0_3.random
      L1_3 = L9_2.price
      L1_3 = L1_3.min
      L2_3 = L9_2.price
      L2_3 = L2_3.max
      L0_3 = L0_3(L1_3, L2_3)
      ::lbl_83::
      L1_3 = L9_2.currency
      if not L1_3 then
        L1_3 = "money"
      end
      if "society" == L1_3 then
        L2_3 = L7_2.employeePercentage
        if L2_3 then
          L2_3 = math
          L2_3 = L2_3.floor
          L3_3 = L7_2.employeePercentage
          L3_3 = L0_3 * L3_3
          L3_3 = L3_3 / 100
          L2_3 = L2_3(L3_3)
          L3_3 = L5_2
          L4_3 = L3_3
          L3_3 = L3_3.addAccountMoney
          L5_3 = "money"
          L6_3 = L2_3
          L3_3(L4_3, L5_3, L6_3)
          L3_3 = Editable
          L3_3 = L3_3.addSocietyMoney
          L4_3 = L6_2.name
          L5_3 = L0_3 - L2_3
          L3_3(L4_3, L5_3)
        else
          L2_3 = Editable
          L2_3 = L2_3.addSocietyMoney
          L3_3 = L6_2.name
          L4_3 = L0_3
          L2_3(L3_3, L4_3)
        end
      else
        L2_3 = L5_2
        L3_3 = L2_3
        L2_3 = L2_3.addAccountMoney
        L4_3 = L1_3
        L5_3 = L0_3
        L2_3(L3_3, L4_3, L5_3)
      end
      L2_3 = LR
      L2_3 = L2_3.notify
      L3_3 = A0_2
      L4_3 = locale
      L5_3 = "sold_item"
      L6_3 = L0_3
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = "success"
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = Webhooks
      L2_3 = L2_3.settings
      L2_3 = L2_3.selling
      if L2_3 then
        L2_3 = Logs
        L2_3 = L2_3.send
        L3_3 = A0_2
        L4_3 = L6_2.name
        L5_3 = "Sold %s for %s$."
        L6_3 = L5_3
        L5_3 = L5_3.format
        L7_3 = Utils
        L7_3 = L7_3.getItemLabel
        L8_3 = L9_2.name
        L7_3 = L7_3(L8_3)
        L8_3 = L0_3
        L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3, L7_3, L8_3)
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      end
      L2_3 = A4_2
      if 0 == L2_3 then
        L2_3 = L3_1
        L3_3 = A0_2
        L2_3(L3_3)
        return
      end
    end
  end
  L10_2(L11_2)
  L10_2 = true
  return L10_2
end
L4_1(L5_1, L6_1)
L4_1 = {}
function L5_1(A0_2)
  local L1_2
  L0_1 = A0_2
end
L4_1.init = L5_1
Selling = L4_1
