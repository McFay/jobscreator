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
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.amount
    L0_2[L5_2] = L7_2
  end
  return L0_2
end
L3_1 = lib
L3_1 = L3_1.callback
L3_1 = L3_1.register
L4_1 = "lunar_unijob:getRegisters"
L5_1 = L2_1
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "lunar_unijob:setRegister"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  if L3_2 and L4_2 then
    L5_2 = L4_2.job
    L5_2 = L5_2.name
    L7_2 = L3_2
    L6_2 = L3_2.getJob
    L6_2 = L6_2(L7_2)
    if L5_2 == L6_2 then
      L5_2 = L4_2.amount
      if not (L5_2 or A1_2 <= 0) then
        goto lbl_24
      end
    end
  end
  do return end
  ::lbl_24::
  L5_2 = A1_2
  L4_2.author = L2_2
  L4_2.amount = L5_2
  L5_2 = TriggerClientEvent
  L6_2 = "lunar_unijob:syncRegister"
  L7_2 = -1
  L8_2 = A0_2
  L9_2 = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "lunar_unijob:clearRegister"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  if L2_2 and L3_2 then
    L4_2 = L3_2.job
    L4_2 = L4_2.name
    L6_2 = L2_2
    L5_2 = L2_2.getJob
    L5_2 = L5_2(L6_2)
    if L4_2 == L5_2 then
      L4_2 = L3_2.amount
      if L4_2 then
        goto lbl_22
      end
    end
  end
  do return end
  ::lbl_22::
  L4_2 = nil
  L3_2.author = nil
  L3_2.amount = L4_2
  L4_2 = TriggerClientEvent
  L5_2 = "lunar_unijob:syncRegister"
  L6_2 = -1
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
end
L3_1(L4_1, L5_1)
L3_1 = lib
L3_1 = L3_1.callback
L3_1 = L3_1.register
L4_1 = "lunar_unijob:payRegister"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L1_1
  L4_2 = L4_2[A1_2]
  if L4_2 then
    L5_2 = L4_2.amount
    if L5_2 then
      L5_2 = Config
      L5_2 = L5_2.accountsByKey
      L5_2 = L5_2[A2_2]
      if L5_2 then
        goto lbl_21
      end
    end
  end
  do return end
  ::lbl_21::
  L6_2 = L3_2
  L5_2 = L3_2.getAccountMoney
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L4_2.amount
  if L5_2 >= L6_2 then
    L6_2 = L3_2
    L5_2 = L3_2.removeAccountMoney
    L7_2 = A2_2
    L8_2 = L4_2.amount
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = Framework
    L5_2 = L5_2.getPlayerFromId
    L6_2 = L4_2.author
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = L4_2.register
      L6_2 = L6_2.employeePercentage
      if L6_2 then
        L6_2 = math
        L6_2 = L6_2.floor
        L7_2 = L4_2.amount
        L8_2 = L4_2.register
        L8_2 = L8_2.employeePercentage
        L7_2 = L7_2 * L8_2
        L7_2 = L7_2 / 100
        L6_2 = L6_2(L7_2)
        L8_2 = L5_2
        L7_2 = L5_2.addAccountMoney
        L9_2 = "money"
        L10_2 = L6_2
        L7_2(L8_2, L9_2, L10_2)
        L7_2 = Editable
        L7_2 = L7_2.addSocietyMoney
        L8_2 = L4_2.job
        L8_2 = L8_2.name
        L9_2 = L4_2.amount
        L9_2 = L9_2 - L6_2
        L7_2(L8_2, L9_2)
    end
    else
      L6_2 = Editable
      L6_2 = L6_2.addSocietyMoney
      L7_2 = L4_2.job
      L7_2 = L7_2.name
      L8_2 = L4_2.amount
      L6_2(L7_2, L8_2)
    end
    L6_2 = LR
    L6_2 = L6_2.notify
    L7_2 = L4_2.author
    L8_2 = locale
    L9_2 = "customer_paid"
    L8_2 = L8_2(L9_2)
    L9_2 = "success"
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = Webhooks
    L6_2 = L6_2.settings
    L6_2 = L6_2.registers
    if L6_2 then
      L6_2 = Logs
      L6_2 = L6_2.send
      L7_2 = A0_2
      L8_2 = L4_2.job
      L8_2 = L8_2.name
      L9_2 = "Paid %s$ at a register in %s."
      L10_2 = L9_2
      L9_2 = L9_2.format
      L11_2 = L4_2.amount
      L12_2 = L4_2.job
      L12_2 = L12_2.label
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
    L6_2 = nil
    L4_2.author = nil
    L4_2.amount = L6_2
    L6_2 = TriggerClientEvent
    L7_2 = "lunar_unijob:syncRegister"
    L8_2 = -1
    L9_2 = A1_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = true
    return L6_2
  end
  L5_2 = false
  L6_2 = locale
  L7_2 = "not_enough_"
  L8_2 = A2_2
  L7_2 = L7_2 .. L8_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
  return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
end
L3_1(L4_1, L5_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2.registers
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2.registers
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = ipairs
    L8_2 = L6_2.locations
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2 in L7_2, L8_2, L9_2, L10_2 do
      L12_2 = "%s_%s_%s"
      L13_2 = L12_2
      L12_2 = L12_2.format
      L14_2 = A0_2.name
      L15_2 = L5_2
      L16_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
      L13_2 = L1_1
      L14_2 = {}
      L14_2.job = A0_2
      L14_2.register = L6_2
      L13_2[L12_2] = L14_2
    end
  end
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_1 = A0_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L3_1
    L8_2 = L6_2
    L7_2(L8_2)
  end
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L3_1
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = L2_1
  L1_2 = L1_2()
  L2_2 = TriggerClientEvent
  L3_2 = "lunar_unijob:syncRegisters"
  L4_2 = -1
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L6_1 = {}
L6_1.init = L4_1
L6_1.update = L5_1
Registers = L6_1
