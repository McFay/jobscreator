-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
L1_1 = 700
L2_1 = CreateDui
L3_1 = "https://cfx-nui-%s/web/index.html"
L4_1 = L3_1
L3_1 = L3_1.format
L5_1 = cache
L5_1 = L5_1.resource
L3_1 = L3_1(L4_1, L5_1)
L4_1 = L1_1
L5_1 = 700
L2_1 = L2_1(L3_1, L4_1, L5_1)
L3_1 = GetDuiHandle
L4_1 = L2_1
L3_1 = L3_1(L4_1)
L4_1 = CreateRuntimeTxd
L5_1 = "lunar_prompt"
L4_1 = L4_1(L5_1)
L5_1 = CreateRuntimeTextureFromDuiHandle
L6_1 = L4_1
L7_1 = "main"
L8_1 = L3_1
L5_1(L6_1, L7_1, L8_1)
L5_1 = Framework
L5_1 = L5_1.onPlayerLoaded
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SetDuiUrl
  L1_2 = L2_1
  L2_2 = "https://cfx-nui-%s/web/index.html"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = cache
  L4_2 = L4_2.resource
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L5_1(L6_1)
L3_1 = {}
L4_1 = 1
L5_1 = 1
L6_1 = {}
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SendDuiMessage
  L2_2 = L2_1
  L3_2 = json
  L3_2 = L3_2.encode
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = {}
    L11_2 = L7_2.label
    L10_2.label = L11_2
    L11_2 = L7_2.icon
    L11_2 = "" ~= L11_2 and L11_2
    L10_2.icon = L11_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = L7_1
  L3_2 = {}
  L3_2.action = "set_options"
  L3_2.options = L1_2
  L2_2(L3_2)
  L3_1 = A0_2
  L2_2 = 1
  L5_1 = L2_2
end
L0_1.setOptions = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L6_1
  L0_2(L1_2)
  L0_2 = 0
  L1_2 = ipairs
  L2_2 = L3_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.canInteract
    L7_2 = L6_2.canInteract
    L7_2 = L7_2()
    L7_2 = not L7_2
    L7_2 = not L7_2 or L7_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L6_1
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    if L7_2 then
      L0_2 = L0_2 + 1
    end
  end
  L1_2 = L7_1
  L2_2 = {}
  L2_2.action = "update_options"
  L3_2 = L6_1
  L2_2.canInteract = L3_2
  L1_2(L2_2)
  L1_2 = L5_1
  if L0_2 < L1_2 then
    L1_2 = L0_1.setIndex
    L2_2 = L0_2
    L1_2(L2_2)
  else
    L1_2 = L0_1.setIndex
    L2_2 = L4_1
    L1_2(L2_2)
  end
  L5_1 = L0_2
end
L0_1.updateOptions = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  if not (A0_2 <= 0) then
    L1_2 = L5_1
    if not (A0_2 > L1_2) then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L4_1 = A0_2
  L1_2 = L7_1
  L2_2 = {}
  L2_2.action = "set_index"
  L3_2 = L4_1
  L3_2 = L3_2 - 1
  L2_2.index = L3_2
  L1_2(L2_2)
end
L0_1.setIndex = L8_1
function L8_1()
  local L0_2, L1_2
  L0_2 = L7_1
  L1_2 = {}
  L1_2.action = "show"
  L0_2(L1_2)
end
L0_1.show = L8_1
function L8_1()
  local L0_2, L1_2
  L0_2 = L7_1
  L1_2 = {}
  L1_2.action = "hide"
  L0_2(L1_2)
  L0_2 = {}
  L3_1 = L0_2
  L0_2 = 1
  L4_1 = L0_2
end
L0_1.hide = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = 0.27999999999999997
  L1_2 = GetAspectRatio
  L2_2 = false
  L1_2 = L1_2(L2_2)
  L1_2 = 0.27999999999999997 * L1_2
  L2_2 = DrawSprite
  L3_2 = "lunar_prompt"
  L4_2 = "main"
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = L0_2
  L8_2 = L1_2
  L9_2 = 0.0
  L10_2 = 255
  L11_2 = 255
  L12_2 = 255
  L13_2 = 255
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1.draw = L8_1
L8_1 = lib
L8_1 = L8_1.addKeybind
L9_1 = {}
L9_1.name = "interact_prompt"
L9_1.description = "Main interaction keybind"
L9_1.defaultMapper = "keyboard"
L9_1.defaultKey = "E"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L3_1
  if not L0_2 then
    return
  end
  L0_2 = 1
  L1_2 = ipairs
  L2_2 = L3_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_1
    L7_2 = L7_2[L5_2]
    if L7_2 then
      L7_2 = L4_1
      if L0_2 == L7_2 then
        L7_2 = L6_2.onSelect
        L8_2 = L6_2.args
        L7_2(L8_2)
        return
      end
      L0_2 = L0_2 + 1
    end
  end
end
L9_1.onReleased = L10_1
L8_1(L9_1)
L8_1 = RegisterCommand
L9_1 = "interact_scroll_up"
function L10_1()
  local L0_2, L1_2
  L0_2 = L3_1
  if not L0_2 then
    return
  end
  L0_2 = L0_1.setIndex
  L1_2 = L4_1
  L1_2 = L1_2 - 1
  L0_2(L1_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterCommand
L9_1 = "interact_scroll_down"
function L10_1()
  local L0_2, L1_2
  L0_2 = L3_1
  if not L0_2 then
    return
  end
  L0_2 = L0_1.setIndex
  L1_2 = L4_1
  L1_2 = L1_2 + 1
  L0_2(L1_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterKeyMapping
L9_1 = "interact_scroll_up"
L10_1 = "Interaction scroll up"
L11_1 = "MOUSE_WHEEL"
L12_1 = "IOM_WHEEL_UP"
L8_1(L9_1, L10_1, L11_1, L12_1)
L8_1 = RegisterKeyMapping
L9_1 = "interact_scroll_down"
L10_1 = "Interaction scroll down"
L11_1 = "MOUSE_WHEEL"
L12_1 = "IOM_WHEEL_DOWN"
L8_1(L9_1, L10_1, L11_1, L12_1)
function L8_1()
  local L0_2, L1_2
  L0_2 = L0_1
  return L0_2
end
GetPrompt = L8_1
