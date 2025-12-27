-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
L1_1 = {}
L2_1 = lib
L2_1 = L2_1.callback
L3_1 = "lunar_unijob:getRegisters"
L4_1 = false
function L5_1(A0_2)
  local L1_2
  L1_1 = A0_2
end
L2_1(L3_1, L4_1, L5_1)
L2_1 = RegisterNetEvent
L3_1 = "lunar_unijob:syncRegisters"
function L4_1(A0_2)
  local L1_2
  L1_1 = A0_2
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "lunar_unijob:syncRegister"
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = L1_1
  L2_2[A0_2] = A1_2
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = lib
  L1_2 = L1_2.inputDialog
  L2_2 = locale
  L3_2 = "register_header"
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = {}
  L4_2.type = "select"
  L5_2 = locale
  L6_2 = "payment_method"
  L5_2 = L5_2(L6_2)
  L4_2.label = L5_2
  L5_2 = Editable
  L5_2 = L5_2.getPaymentMethods
  L5_2 = L5_2()
  L4_2.options = L5_2
  L4_2.required = true
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = L1_2[1]
  end
  if not L1_2 then
    return
  end
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "lunar_unijob:payRegister"
  L4_2 = false
  L5_2 = A0_2
  L6_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L4_2 = LR
    L4_2 = L4_2.notify
    L5_2 = locale
    L6_2 = "paid_register"
    L5_2 = L5_2(L6_2)
    L6_2 = "success"
    L4_2(L5_2, L6_2)
  elseif L3_2 then
    L4_2 = LR
    L4_2 = L4_2.notify
    L5_2 = L3_2
    L6_2 = "error"
    L4_2(L5_2, L6_2)
  end
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = lib
  L1_2 = L1_2.inputDialog
  L2_2 = locale
  L3_2 = "register_header"
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = {}
  L4_2.type = "number"
  L5_2 = locale
  L6_2 = "register_amount"
  L5_2 = L5_2(L6_2)
  L4_2.label = L5_2
  L4_2.icon = "dollar-sign"
  L4_2.min = 1
  L4_2.required = true
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = L1_2[1]
  end
  if not L1_2 then
    return
  end
  L2_2 = TriggerServerEvent
  L3_2 = "lunar_unijob:setRegister"
  L4_2 = A0_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = LR
  L2_2 = L2_2.notify
  L3_2 = locale
  L4_2 = "set_register_notify"
  L3_2 = L3_2(L4_2)
  L4_2 = "success"
  L2_2(L3_2, L4_2)
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lib
  L1_2 = L1_2.alertDialog
  L2_2 = {}
  L3_2 = locale
  L4_2 = "register_header"
  L3_2 = L3_2(L4_2)
  L2_2.header = L3_2
  L3_2 = locale
  L4_2 = "register_clear_content"
  L3_2 = L3_2(L4_2)
  L2_2.content = L3_2
  L2_2.centered = true
  L2_2.cancel = true
  L1_2 = L1_2(L2_2)
  L1_2 = "confirm" == L1_2
  if not L1_2 then
    return
  end
  L2_2 = TriggerServerEvent
  L3_2 = "lunar_unijob:clearRegister"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = LR
  L2_2 = L2_2.notify
  L3_2 = locale
  L4_2 = "clear_register_notify"
  L3_2 = L3_2(L4_2)
  L4_2 = "success"
  L2_2(L3_2, L4_2)
end
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2.registers
  L3_2 = L3_2[A1_2]
  L4_2 = "%s_%s_%s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = A0_2.name
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = Utils
  L5_2 = L5_2.createInteractionPoint
  L6_2 = {}
  L7_2 = L3_2.locations
  L7_2 = L7_2[A2_2]
  L6_2.coords = L7_2
  L7_2 = L3_2.radius
  if not L7_2 then
    L7_2 = Config
    L7_2 = L7_2.defaultRadius
  end
  L6_2.radius = L7_2
  L7_2 = {}
  L8_2 = {}
  L9_2 = locale
  L10_2 = "pay_register"
  L9_2 = L9_2(L10_2)
  L8_2.label = L9_2
  L8_2.icon = "cash-register"
  function L9_2()
    local L0_3, L1_3
    L1_3 = L4_2
    L0_3 = L1_1
    L0_3 = L0_3[L1_3]
    return L0_3
  end
  L8_2.canInteract = L9_2
  L9_2 = L2_1
  L8_2.onSelect = L9_2
  L8_2.args = L4_2
  L9_2 = {}
  L10_2 = locale
  L11_2 = "set_register"
  L10_2 = L10_2(L11_2)
  L9_2.label = L10_2
  L9_2.icon = "cash-register"
  function L10_2()
    local L0_3, L1_3
    L1_3 = L4_2
    L0_3 = L1_1
    L0_3 = L0_3[L1_3]
    L0_3 = not L0_3
    return L0_3
  end
  L9_2.canInteract = L10_2
  L10_2 = L3_1
  L9_2.onSelect = L10_2
  L9_2.args = L4_2
  L10_2 = {}
  L11_2 = locale
  L12_2 = "clear_register"
  L11_2 = L11_2(L12_2)
  L10_2.label = L11_2
  L10_2.icon = "cash-register"
  function L11_2()
    local L0_3, L1_3
    L1_3 = L4_2
    L0_3 = L1_1
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L0_3 = A0_2.name
      L1_3 = Framework
      L1_3 = L1_3.getJob
      L1_3 = L1_3()
      L0_3 = L0_3 == L1_3
    end
    return L0_3
  end
  L10_2.canInteract = L11_2
  L11_2 = L4_1
  L10_2.onSelect = L11_2
  L10_2.args = L4_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L6_2.options = L7_2
  L7_2 = L3_2.target
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L0_1
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
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
  L0_2 = GetJobs
  L0_2 = L0_2()
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.registers
    if L7_2 then
      L7_2 = ipairs
      L8_2 = L6_2.registers
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = ipairs
        L14_2 = L12_2.locations
        L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
        for L17_2 in L13_2, L14_2, L15_2, L16_2 do
          L18_2 = L5_1
          L19_2 = L6_2
          L20_2 = L11_2
          L21_2 = L17_2
          L18_2(L19_2, L20_2, L21_2)
        end
      end
    end
  end
end
L7_1 = {}
L7_1.update = L6_1
Registers = L7_1
