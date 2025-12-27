-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = nil
L1_1 = nil
L2_1 = nil
L3_1 = {}
L4_1 = "GENERIC_HI"
L5_1 = "GENERIC_HOWS_IT_GOING"
L6_1 = "CHAT_RESP"
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L4_1 = exports
L5_1 = "openPedInteractionMenu"
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = GetOffsetFromEntityInWorldCoords
  L5_2 = A0_2
  L6_2 = 0.0
  L7_2 = 0.9
  L8_2 = 0.55
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = GetEntityCoords
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = CreateCam
  L7_2 = "DEFAULT_SCRIPTED_CAMERA"
  L8_2 = true
  L6_2 = L6_2(L7_2, L8_2)
  L1_1 = L6_2
  L6_2 = SetCamCoord
  L7_2 = L1_1
  L8_2 = L4_2.x
  L9_2 = L4_2.y
  L10_2 = L4_2.z
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = PointCamAtCoord
  L7_2 = L1_1
  L8_2 = L5_2.x
  L9_2 = L5_2.y
  L10_2 = L5_2.z
  L10_2 = L10_2 + 0.4
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = RenderScriptCams
  L7_2 = true
  L8_2 = true
  L9_2 = 1000
  L10_2 = true
  L11_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = Wait
  L7_2 = 500
  L6_2(L7_2)
  L6_2 = math
  L6_2 = L6_2.random
  L7_2 = L3_1
  L7_2 = #L7_2
  L6_2 = L6_2(L7_2)
  L7_2 = L3_1
  L6_2 = L7_2[L6_2]
  L7_2 = PlayPedAmbientSpeechNative
  L8_2 = A0_2
  L9_2 = L6_2
  L10_2 = "SPEECH_PARAMS_FORCE_NORMAL_CLEAR"
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = SetNuiFocus
  L8_2 = true
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = SendNUIMessage
  L8_2 = {}
  L8_2.action = "show_npc"
  L8_2.header = A1_2
  L9_2 = A2_2.question
  L8_2.question = L9_2
  L9_2 = A2_2.answers
  L8_2.answers = L9_2
  L9_2 = A2_2.answerItems
  L8_2.answerItems = L9_2
  L9_2 = A2_2.answerNumberInput
  L8_2.answerNumberInput = L9_2
  L7_2(L8_2)
  L0_1 = A0_2
  L2_1 = A3_2
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "npc_response"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L2_1
  if L2_2 then
    L2_2 = L0_1
    if L2_2 then
      L2_2 = L1_1
      if L2_2 then
        goto lbl_15
      end
    end
  end
  L2_2 = A1_2
  L3_2 = {}
  do return L2_2(L3_2) end
  ::lbl_15::
  L2_2 = L2_1
  L3_2 = A0_2.type
  L3_2 = A0_2 or L3_2
  if "escape" == L3_2 or not A0_2 then
    L3_2 = nil
  end
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2.type
    if "escape" ~= L3_2 then
      L3_2 = SendNUIMessage
      L4_2 = {}
      L4_2.action = "next_question"
      L5_2 = L2_2.question
      L4_2.question = L5_2
      L5_2 = L2_2.answers
      L4_2.answers = L5_2
      L5_2 = L2_2.answerItems
      L4_2.answerItems = L5_2
      L5_2 = L2_2.answerNumberInput
      L4_2.answerNumberInput = L5_2
      L3_2(L4_2)
  end
  else
    L3_2 = A0_2.type
    if "escape" ~= L3_2 then
      L3_2 = SendNUIMessage
      L4_2 = {}
      L4_2.action = "hide_npc"
      L3_2(L4_2)
    end
    L3_2 = SetNuiFocus
    L4_2 = false
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = SetCamActive
    L4_2 = L1_1
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = RenderScriptCams
    L4_2 = false
    L5_2 = true
    L6_2 = 1000
    L7_2 = true
    L8_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = nil
    L2_1 = L3_2
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L4_1(L5_1, L6_1)
