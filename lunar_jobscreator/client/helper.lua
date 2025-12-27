-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = LR
  L0_2 = L0_2.showUI
  L1_2 = "[E] - Select point"
  L0_2(L1_2)
  while true do
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 38
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 105
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = IsDisabledControlJustReleased
    L1_2 = 0
    L2_2 = 38
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = GetEntityCoords
      L1_2 = cache
      L1_2 = L1_2.ped
      L0_2 = L0_2(L1_2)
      L1_2 = GetEntityHeading
      L2_2 = cache
      L2_2 = L2_2.ped
      L1_2 = L1_2(L2_2)
      L2_2 = LR
      L2_2 = L2_2.hideUI
      L2_2()
      L2_2 = vector4
      L3_2 = L0_2.x
      L4_2 = L0_2.y
      L5_2 = L0_2.z
      L6_2 = L1_2
      return L2_2(L3_2, L4_2, L5_2, L6_2)
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
end
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L2_2 = nil
  L3_2 = 0.0
  L4_2 = #A0_2
  L4_2 = L4_2 > 0
  L5_2 = {}
  L6_2 = {}
  L7_2 = GetEntityCoords
  L8_2 = cache
  L8_2 = L8_2.ped
  L7_2 = L7_2(L8_2)
  L8_2 = false
  L9_2 = 0.0
  L10_2 = 1
  L11_2 = #A1_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = GetModelDimensions
    L15_2 = A1_2[1]
    L15_2 = L15_2.model
    L14_2, L15_2 = L14_2(L15_2)
    L16_2 = L15_2.z
    L17_2 = L14_2.z
    L16_2 = L16_2 - L17_2
    if L16_2 >= 1.0 then
      L8_2 = true
    end
    L17_2 = L14_2.z
    if L9_2 > L17_2 then
      L9_2 = L14_2.z
    end
    L17_2 = Utils
    L17_2 = L17_2.createProp
    L18_2 = vector3
    L19_2 = L7_2.x
    L20_2 = L7_2.y
    L21_2 = L7_2.z
    L21_2 = L21_2 - 10.0
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L19_2 = A1_2[L13_2]
    L17_2 = L17_2(L18_2, L19_2)
    L5_2[L13_2] = L17_2
  end
  L10_2 = 1
  L11_2 = #A0_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = Utils
    L14_2 = L14_2.createPed
    L15_2 = vector3
    L16_2 = L7_2.x
    L17_2 = L7_2.y
    L18_2 = L7_2.z
    L18_2 = L18_2 - 10.0
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L16_2 = A0_2[L13_2]
    L14_2 = L14_2(L15_2, L16_2)
    L6_2[L13_2] = L14_2
    L8_2 = true
  end
  L10_2 = SetInterval
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = lib
    L0_3 = L0_3.raycast
    L0_3 = L0_3.cam
    L1_3 = 17
    L2_3 = 1
    L3_3 = 10.0
    L0_3, L1_3, L2_3 = L0_3(L1_3, L2_3, L3_3)
    if L0_3 then
      L2_2 = L2_3
    end
  end
  L12_2 = 0
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = LR
  L11_2 = L11_2.showUI
  L12_2 = "[LMOUSE] - Select point"
  L11_2(L12_2)
  while true do
    L11_2 = DisableControlAction
    L12_2 = 0
    L13_2 = 24
    L14_2 = true
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = DisableControlAction
    L12_2 = 0
    L13_2 = 105
    L14_2 = true
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = DisableControlAction
    L12_2 = 0
    L13_2 = 73
    L14_2 = true
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = IsDisabledControlJustReleased
    L12_2 = 0
    L13_2 = 24
    L11_2 = L11_2(L12_2, L13_2)
    if L11_2 and L2_2 then
      L11_2 = ClearInterval
      L12_2 = L10_2
      L11_2(L12_2)
      L11_2 = LR
      L11_2 = L11_2.hideUI
      L11_2()
      L11_2 = 1
      L12_2 = #L5_2
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = L5_2[L14_2]
        L15_2 = L15_2.remove
        L15_2()
      end
      L11_2 = 1
      L12_2 = #L6_2
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = L6_2[L14_2]
        L15_2 = L15_2.remove
        L15_2()
      end
      L11_2 = vector4
      L12_2 = L2_2.x
      L13_2 = L2_2.y
      L14_2 = L2_2.z
      if L4_2 and L8_2 then
        L15_2 = 1.0
        if L15_2 then
          goto lbl_136
        end
      end
      L15_2 = -L9_2
      ::lbl_136::
      L14_2 = L14_2 + L15_2
      L15_2 = L3_2
      return L11_2(L12_2, L13_2, L14_2, L15_2)
    end
    L11_2 = IsDisabledControlJustReleased
    L12_2 = 0
    L13_2 = 14
    L11_2 = L11_2(L12_2, L13_2)
    if L11_2 then
      L3_2 = L3_2 + 5.0
    end
    L11_2 = IsDisabledControlJustReleased
    L12_2 = 0
    L13_2 = 15
    L11_2 = L11_2(L12_2, L13_2)
    if L11_2 then
      L3_2 = L3_2 - 5.0
    end
    if L2_2 then
      if not L4_2 then
        L11_2 = DrawSphere
        L12_2 = L2_2.x
        L13_2 = L2_2.y
        L14_2 = L2_2.z
        L15_2 = 0.1
        L16_2 = 255
        L17_2 = 0
        L18_2 = 255
        L19_2 = 0.5
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L11_2 = Utils
        L11_2 = L11_2.offsetCoords
        L12_2 = vector4
        L13_2 = L2_2.x
        L14_2 = L2_2.y
        L15_2 = L2_2.z
        L16_2 = L3_2
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
        L13_2 = 0.0
        L14_2 = 0.15
        L15_2 = 0.0
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
        L12_2 = DrawLine
        L13_2 = L2_2.x
        L14_2 = L2_2.y
        L15_2 = L2_2.z
        L16_2 = L11_2.x
        L17_2 = L11_2.y
        L18_2 = L11_2.z
        L19_2 = 255
        L20_2 = 100
        L21_2 = 255
        L22_2 = 0.5
        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      else
        L11_2 = 1
        L12_2 = #L5_2
        L13_2 = 1
        for L14_2 = L11_2, L12_2, L13_2 do
          L15_2 = L5_2[L14_2]
          L15_2 = L15_2.get
          L15_2 = L15_2()
          L16_2 = A1_2[L14_2]
          L17_2 = L16_2.offset
          if L15_2 then
            L18_2 = vector3
            L19_2 = L2_2.x
            L20_2 = L2_2.y
            L21_2 = L2_2.z
            if L8_2 then
              L22_2 = 1.0
              if L22_2 then
                goto lbl_217
              end
            end
            L22_2 = -L9_2
            ::lbl_217::
            L21_2 = L21_2 + L22_2
            L18_2 = L18_2(L19_2, L20_2, L21_2)
            if L17_2 then
              L19_2 = Utils
              L19_2 = L19_2.offsetCoords
              L20_2 = vector4
              L21_2 = L18_2.x
              L22_2 = L18_2.y
              L23_2 = L18_2.z
              L24_2 = GetEntityHeading
              L25_2 = L15_2
              L24_2 = L24_2(L25_2)
              L25_2 = L16_2.rotation
              if L25_2 then
                L25_2 = L16_2.rotation
                L25_2 = L25_2.z
                if L25_2 then
                  goto lbl_239
                end
              end
              L25_2 = 0.0
              ::lbl_239::
              L24_2 = L24_2 + L25_2
              L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
              L21_2 = L17_2.x
              if not L21_2 then
                L21_2 = 0
              end
              L22_2 = L17_2.y
              if not L22_2 then
                L22_2 = 0
              end
              L23_2 = L17_2.z
              if not L23_2 then
                L23_2 = 0
              end
              L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2)
              L18_2 = L19_2
            end
            L19_2 = SetEntityCoords
            L20_2 = L15_2
            L21_2 = L18_2.x
            L22_2 = L18_2.y
            L23_2 = L18_2.z
            L19_2(L20_2, L21_2, L22_2, L23_2)
            L19_2 = SetEntityAlpha
            L20_2 = L15_2
            L21_2 = 200
            L22_2 = false
            L19_2(L20_2, L21_2, L22_2)
            L19_2 = SetEntityCollision
            L20_2 = L15_2
            L21_2 = false
            L22_2 = false
            L19_2(L20_2, L21_2, L22_2)
            L19_2 = SetEntityRotation
            L20_2 = L15_2
            L21_2 = L16_2.rotation
            if L21_2 then
              L21_2 = L16_2.rotation
              L21_2 = L21_2.x
              if L21_2 then
                goto lbl_282
              end
            end
            L21_2 = 0.0
            ::lbl_282::
            L22_2 = L16_2.rotation
            if L22_2 then
              L22_2 = L16_2.rotation
              L22_2 = L22_2.y
              if L22_2 then
                goto lbl_290
              end
            end
            L22_2 = 0.0
            ::lbl_290::
            L23_2 = L16_2.rotation
            if L23_2 then
              L23_2 = L16_2.rotation
              L23_2 = L23_2.z
              if L23_2 then
                goto lbl_298
              end
            end
            L23_2 = 0.0
            ::lbl_298::
            L23_2 = L3_2 + L23_2
            L19_2(L20_2, L21_2, L22_2, L23_2)
          end
        end
        L11_2 = 1
        L12_2 = #L6_2
        L13_2 = 1
        for L14_2 = L11_2, L12_2, L13_2 do
          L15_2 = L6_2[L14_2]
          L15_2 = L15_2.get
          L15_2 = L15_2()
          L16_2 = A0_2[L14_2]
          L16_2 = L16_2.offset
          if L15_2 then
            L17_2 = L2_2
            if L16_2 then
              L18_2 = Utils
              L18_2 = L18_2.offsetCoords
              L19_2 = vector4
              L20_2 = L17_2.x
              L21_2 = L17_2.y
              L22_2 = L17_2.z
              L23_2 = GetEntityHeading
              L24_2 = L15_2
              L23_2, L24_2, L25_2 = L23_2(L24_2)
              L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
              L20_2 = L16_2.x
              L20_2 = -L20_2
              if not L20_2 then
                L20_2 = 0
              end
              L21_2 = L16_2.y
              L21_2 = -L21_2
              if not L21_2 then
                L21_2 = 0
              end
              L22_2 = L16_2.z
              if not L22_2 then
                L22_2 = 0
              end
              L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
              L17_2 = L18_2
            end
            L18_2 = SetEntityCoords
            L19_2 = L15_2
            L20_2 = L17_2.x
            L21_2 = L17_2.y
            L22_2 = L17_2.z
            L18_2(L19_2, L20_2, L21_2, L22_2)
            L18_2 = SetEntityAlpha
            L19_2 = L15_2
            L20_2 = 200
            L21_2 = false
            L18_2(L19_2, L20_2, L21_2)
            L18_2 = SetEntityCollision
            L19_2 = L15_2
            L20_2 = false
            L21_2 = false
            L18_2(L19_2, L20_2, L21_2)
            L18_2 = SetEntityHeading
            L19_2 = L15_2
            L20_2 = A0_2[L14_2]
            L20_2 = L20_2.heading
            if not L20_2 then
              L20_2 = 0.0
            end
            L20_2 = L3_2 + L20_2
            L18_2(L19_2, L20_2)
          end
        end
      end
    end
    L11_2 = Wait
    L12_2 = 0
    L11_2(L12_2)
  end
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tonumber
  L2_2 = "%.4f"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  return L1_2(L2_2, L3_2, L4_2)
end
L3_1 = exports
L3_1 = L3_1.lunar_bridge
L4_1 = L3_1
L3_1 = L3_1.getConfig
L3_1 = L3_1(L4_1)
L4_1 = L3_1.Prompts
L4_1 = L4_1.Enabled
L5_1 = RegisterNUICallback
L6_1 = "getCoordsInput"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L7_2 = A0_2
  L2_2 = L7_2.target
  L3_2 = L7_2.forceDisableTarget
  L4_2 = L7_2.is4D
  L5_2 = L7_2.ped
  L6_2 = L7_2.prop
  L7_2 = L5_2 or L7_2
  if not L5_2 then
    L7_2 = {}
  end
  if not L6_2 then
    L8_2 = {}
    L6_2 = L8_2
  end
  L5_2 = L7_2
  if false == L2_2 then
    L7_2 = #L5_2
    if not (L7_2 > 0) then
      L7_2 = #L6_2
      if not (L7_2 > 0) then
        L7_2 = L4_1
      end
    end
  end
  if L7_2 and not L3_2 then
    L7_2 = L1_1
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      goto lbl_42
    end
  end
  L7_2 = L0_1
  L7_2 = L7_2()
  ::lbl_42::
  L8_2 = lib
  L8_2 = L8_2.setClipboard
  L9_2 = tostring
  L10_2 = L7_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = A1_2
  L9_2 = {}
  L10_2 = L2_1
  L11_2 = L7_2.x
  L10_2 = L10_2(L11_2)
  L9_2.x = L10_2
  L10_2 = L2_1
  L11_2 = L7_2.y
  L10_2 = L10_2(L11_2)
  L9_2.y = L10_2
  L10_2 = L2_1
  L11_2 = L7_2.z
  L10_2 = L10_2(L11_2)
  L9_2.z = L10_2
  L10_2 = L2_1
  L11_2 = L7_2.w
  L10_2 = L10_2(L11_2)
  L9_2.w = L10_2
  L8_2(L9_2)
  L8_2 = SetNuiFocus
  L9_2 = true
  L10_2 = true
  L8_2(L9_2, L10_2)
end
L5_1(L6_1, L7_1)
