-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = GetPrompt
L0_1 = L0_1()
L1_1 = nil
L2_1 = Config
L2_1 = L2_1.Prompts
L2_1 = L2_1.RenderDistance
L3_1 = Config
L3_1 = L3_1.Prompts
L3_1 = L3_1.Dict
if not L3_1 then
  L3_1 = "prompt"
end
L4_1 = Config
L4_1 = L4_1.Prompts
L4_1 = L4_1.SpriteSize
L5_1 = Config
L5_1 = L5_1.Prompts
L5_1 = L5_1.SpriteSize
L6_1 = GetAspectRatio
L7_1 = false
L6_1 = L6_1(L7_1)
L5_1 = L5_1 * L6_1
L6_1 = Config
L6_1 = L6_1.Prompts
L6_1 = L6_1.SpriteColor
L6_1 = L6_1.r
L7_1 = Config
L7_1 = L7_1.Prompts
L7_1 = L7_1.SpriteColor
L7_1 = L7_1.g
L8_1 = Config
L8_1 = L8_1.Prompts
L8_1 = L8_1.SpriteColor
L8_1 = L8_1.b
L9_1 = Config
L9_1 = L9_1.Prompts
L9_1 = L9_1.SpriteColor
L9_1 = L9_1.a
if not L9_1 then
  L9_1 = 255
end
L10_1 = {}
L11_1 = 0
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = L11_1
  L1_2 = L1_2 + 1
  L11_1 = L1_2
  L2_2 = L11_1
  L1_2 = L10_1
  L1_2[L2_2] = A0_2
  L1_2 = L11_1
  return L1_2
end
AddEntity = L12_1
function L12_1(A0_2)
  local L1_2
  L1_2 = L10_1
  L1_2[A0_2] = nil
end
RemoveEntity = L12_1
L12_1 = {}
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.valid
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = ipairs
  L2_2 = A0_2.options
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.canInteract
    if L7_2 then
      L7_2 = L6_2.canInteract
      L7_2 = L7_2()
      L7_2 = not L7_2
      if L7_2 then
        goto lbl_20
      end
    end
    L7_2 = true
    do return L7_2 end
    ::lbl_20::
  end
  L1_2 = false
  return L1_2
end
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.hide
  L1_2()
  L1_2 = Wait
  L2_2 = 200
  L1_2(L2_2)
  if not A0_2 then
    return
  end
  L1_2 = L0_1.setOptions
  L2_2 = A0_2.options
  L1_2(L2_2)
  L1_2 = SetTimeout
  L2_2 = 200
  function L3_2()
    local L0_3, L1_3
    L0_3 = L1_1
    L1_3 = A0_2
    if L0_3 == L1_3 then
      L0_3 = L0_1.setIndex
      L1_3 = 1
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = SetTimeout
  L2_2 = 300
  function L3_2()
    local L0_3, L1_3
    L0_3 = L1_1
    L1_3 = A0_2
    if L0_3 == L1_3 then
      L0_3 = L0_1.show
      L0_3()
    end
  end
  L1_2(L2_2, L3_2)
end
L15_1 = nil
L16_1 = {}
L17_1 = {}
L18_1 = CreateThread
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  while true do
    L0_2 = L15_1
    if not L0_2 then
      L0_2 = lib
      L0_2 = L0_2.requestStreamedTextureDict
      L1_2 = L3_1
      L0_2 = L0_2(L1_2)
    end
    L15_1 = L0_2
    L0_2 = {}
    L1_2 = math
    L1_2 = L1_2.huge
    L0_2.dist = L1_2
    L1_2 = pairs
    L2_2 = lib
    L2_2 = L2_2.points
    L2_2 = L2_2.getAllPoints
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.options
      if L7_2 then
        L7_2 = L6_2.dist
        if L7_2 then
          L8_2 = L6_2.distance
          if L7_2 < L8_2 then
            L8_2 = L0_2.dist
            if L7_2 < L8_2 then
              L8_2 = L13_1
              L9_2 = L6_2
              L8_2 = L8_2(L9_2)
              if L8_2 then
                L0_2.point = L6_2
                L0_2.dist = L7_2
              end
            end
          end
        end
      end
    end
    L1_2 = pairs
    L2_2 = L10_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.dist
      L8_2 = L6_2.radius
      if not L8_2 then
        L8_2 = L6_2.distance
      end
      if L7_2 and L7_2 < L8_2 then
        L9_2 = L0_2.dist
        if L7_2 < L9_2 then
          L9_2 = L13_1
          L10_2 = L6_2
          L9_2 = L9_2(L10_2)
          if L9_2 then
            L0_2.point = L6_2
            L0_2.dist = L7_2
          end
        end
      end
    end
    L1_2 = L1_1
    L2_2 = L0_2.point
    if L1_2 ~= L2_2 then
      L1_2 = L14_1
      L2_2 = L0_2.point
      L1_2(L2_2)
    end
    L1_2 = L0_2.point
    L1_1 = L1_2
    L1_2 = L1_1
    if L1_2 then
      L1_2 = L0_1.updateOptions
      L1_2()
    end
    L1_2 = Wait
    L2_2 = L16_1
    L2_2 = #L2_2
    if 0 == L2_2 then
      L2_2 = 1000
      if L2_2 then
        goto lbl_92
      end
    end
    L2_2 = 100
    ::lbl_92::
    L1_2(L2_2)
  end
end
L18_1(L19_1)
L18_1 = CreateThread
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  while true do
    L0_2 = table
    L0_2 = L0_2.wipe
    L1_2 = L16_1
    L0_2(L1_2)
    L0_2 = GetEntityCoords
    L1_2 = cache
    L1_2 = L1_2.ped
    L0_2 = L0_2(L1_2)
    L1_2 = pairs
    L2_2 = lib
    L2_2 = L2_2.points
    L2_2 = L2_2.getAllPoints
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.coords
      L7_2 = L7_2.xyz
      L7_2 = L0_2 - L7_2
      L7_2 = #L7_2
      L6_2.dist = L7_2
      L7_2 = L6_2.options
      if L7_2 then
        L7_2 = L6_2.dist
        L8_2 = L2_1
        L8_2 = L8_2 * 2
        if L7_2 < L8_2 then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = L16_1
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
          L7_2 = L12_1
          L7_2 = L7_2[L6_2]
          if not L7_2 then
            L7_2 = L12_1
            L7_2[L6_2] = 0
          end
          L7_2 = L17_1
          L8_2 = L13_1
          L9_2 = L6_2
          L8_2 = L8_2(L9_2)
          L7_2[L6_2] = L8_2
        else
          L7_2 = L12_1
          L7_2[L6_2] = nil
        end
      end
    end
    L1_2 = pairs
    L2_2 = L10_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = DoesEntityExist
      L8_2 = L6_2.entity
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = RemoveEntity
        L8_2 = L6_2.entity
        L7_2(L8_2)
      else
        L7_2 = DoesEntityExist
        L8_2 = L6_2.entity
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = L6_2.getCoords
          L7_2 = L7_2()
          L7_2 = L0_2 - L7_2
          L7_2 = #L7_2
          L6_2.dist = L7_2
          L7_2 = L6_2.dist
          L8_2 = L2_1
          L8_2 = L8_2 * 2
          if L7_2 < L8_2 then
            L7_2 = table
            L7_2 = L7_2.insert
            L8_2 = L16_1
            L9_2 = L6_2
            L7_2(L8_2, L9_2)
            L7_2 = L12_1
            L7_2 = L7_2[L6_2]
            if not L7_2 then
              L7_2 = L12_1
              L7_2[L6_2] = 0
            end
            L7_2 = L17_1
            L8_2 = L13_1
            L9_2 = L6_2
            L8_2 = L8_2(L9_2)
            L7_2[L6_2] = L8_2
          else
            L7_2 = L12_1
            L7_2[L6_2] = nil
          end
        end
      end
    end
    L1_2 = table
    L1_2 = L1_2.sort
    L2_2 = L16_1
    function L3_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = A0_3.dist
      L3_3 = A1_3.dist
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L1_2(L2_2, L3_2)
    L1_2 = Wait
    L2_2 = 300
    L1_2(L2_2)
  end
end
L18_1(L19_1)
L18_1 = CreateThread
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  while true do
    L0_2 = L16_1
    L0_2 = #L0_2
    if 0 == L0_2 then
      L0_2 = Wait
      L1_2 = 200
      L0_2(L1_2)
    end
    L0_2 = 1
    L1_2 = L16_1
    L1_2 = #L1_2
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = L16_1
      L4_2 = L4_2[L3_2]
      L5_2 = L17_1
      L5_2 = L5_2[L4_2]
      if L5_2 then
        L6_2 = L4_2.dist
        L7_2 = L2_1
        if L6_2 <= L7_2 then
          L6_2 = L12_1
          L6_2 = L6_2[L4_2]
          L7_2 = L9_1
          if L6_2 < L7_2 then
            L6_2 = L12_1
            L7_2 = L6_2[L4_2]
            L7_2 = L7_2 + 30
            L6_2[L4_2] = L7_2
        end
      end
      else
        if L5_2 then
          L6_2 = L4_2.dist
          L7_2 = L2_1
          if not (L6_2 > L7_2) then
            goto lbl_49
          end
        end
        L6_2 = L12_1
        L6_2 = L6_2[L4_2]
        if L6_2 > 0 then
          L6_2 = L12_1
          L7_2 = L6_2[L4_2]
          L7_2 = L7_2 - 30
          L6_2[L4_2] = L7_2
        end
      end
      ::lbl_49::
      L6_2 = L12_1
      L6_2 = L6_2[L4_2]
      if L6_2 < 0 then
        L6_2 = L12_1
        L6_2[L4_2] = 0
      end
      L6_2 = L12_1
      L6_2 = L6_2[L4_2]
      L7_2 = L9_1
      if L6_2 > L7_2 then
        L6_2 = L12_1
        L7_2 = L9_1
        L6_2[L4_2] = L7_2
      end
    end
    L0_2 = Wait
    L1_2 = 20
    L0_2(L1_2)
  end
end
L18_1(L19_1)
L18_1 = CreateThread
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  while true do
    L0_2 = L16_1
    L0_2 = #L0_2
    if 0 == L0_2 then
      L1_2 = Wait
      L2_2 = 200
      L1_2(L2_2)
    end
    L1_2 = 1
    L2_2 = math
    L2_2 = L2_2.min
    L3_2 = L0_2
    L4_2 = 32
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = L16_1
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2.coords
      if not L6_2 then
        L6_2 = L5_2.getCoords
        L6_2 = L6_2()
      end
      L7_2 = SetDrawOrigin
      L8_2 = L6_2.x
      L9_2 = L6_2.y
      L10_2 = L6_2.z
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = L1_1
      if L5_2 == L7_2 then
        L7_2 = L0_1.draw
        L7_2()
      else
        L7_2 = L12_1
        L7_2 = L7_2[L5_2]
        if L7_2 > 0 then
          L7_2 = DrawSprite
          L8_2 = L3_1
          L9_2 = "point"
          L10_2 = 0.0
          L11_2 = 0.0
          L12_2 = L4_1
          L13_2 = L5_1
          L14_2 = 0.0
          L15_2 = L6_1
          L16_2 = L7_1
          L17_2 = L8_1
          L18_2 = L12_1
          L18_2 = L18_2[L5_2]
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        end
      end
    end
    L1_2 = ClearDrawOrigin
    L1_2()
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
end
L18_1(L19_1)
