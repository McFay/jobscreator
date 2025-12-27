-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1
L0_1 = setmetatable
L1_1 = {}
L2_1 = {}
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = rawset
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = exports
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L2_1.__newindex = L3_1
L0_1 = L0_1(L1_1, L2_1)
API = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.icon
    if L7_2 then
      L7_2 = L6_2.icon
      if "" ~= L7_2 then
        L7_2 = "fa-solid fa-%s fw"
        L8_2 = L7_2
        L7_2 = L7_2.format
        L9_2 = L6_2.icon
        L7_2 = L7_2(L8_2, L9_2)
        L6_2.icon = L7_2
      end
    end
  end
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = lib
  L1_2 = L1_2.points
  L1_2 = L1_2.new
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2.valid = true
  L2_2 = L1_2.remove
  function L3_2()
    local L0_3, L1_3
    L1_2.valid = false
    L0_3 = L2_2
    L1_3 = L1_2
    L0_3(L1_3)
  end
  L1_2.remove = L3_2
  return L1_2
end
L2_1 = API
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = A0_2.options
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L2_1.addPoint = L3_1
L2_1 = API
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = A0_2.options
  L1_2(L2_2)
  A0_2.valid = true
  L1_2 = A0_2.bone
  if L1_2 then
    L1_2 = GetPedBoneIndex
    L2_2 = A0_2.entity
    L3_2 = A0_2.bone
    L1_2 = L1_2(L2_2, L3_2)
    function L2_2()
      local L0_3, L1_3, L2_3
      L0_3 = GetWorldPositionOfEntityBone
      L1_3 = A0_2.entity
      L2_3 = L1_2
      return L0_3(L1_3, L2_3)
    end
    A0_2.getCoords = L2_2
  else
    L1_2 = A0_2.offset
    if L1_2 then
      L1_2 = A0_2.offset
      function L2_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = GetOffsetFromEntityInWorldCoords
        L1_3 = A0_2.entity
        L2_3 = L1_2.x
        L3_3 = L1_2.y
        L4_3 = L1_2.z
        return L0_3(L1_3, L2_3, L3_3, L4_3)
      end
      A0_2.getCoords = L2_2
    else
      function L1_2()
        local L0_3, L1_3
        L0_3 = GetEntityCoords
        L1_3 = A0_2.entity
        return L0_3(L1_3)
      end
      A0_2.getCoords = L1_2
    end
  end
  L1_2 = AddEntity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  function L3_2()
    local L0_3, L1_3
    A0_2.valid = false
    L0_3 = RemoveEntity
    L1_3 = L1_2
    L0_3(L1_3)
  end
  L2_2.remove = L3_2
  return L2_2
end
L2_1.addLocalEntity = L3_1
