-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = Utils
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = lib
  L0_2 = L0_2.callback
  L0_2 = L0_2.await
  L1_2 = "lunar_unijob:hasPermission"
  L2_2 = false
  return L0_2(L1_2, L2_2)
end
L0_1.hasPermission = L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = lib
  L1_2 = L1_2.requestModel
  L2_2 = A0_2.model
  L1_2(L2_2)
  L1_2 = GetEntityCoords
  L2_2 = cache
  L2_2 = L2_2.ped
  L1_2 = L1_2(L2_2)
  L2_2 = CreateObject
  L3_2 = A0_2.model
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = true
  L8_2 = true
  L9_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = AttachEntityToEntity
  L4_2 = L2_2
  L5_2 = cache
  L5_2 = L5_2.ped
  L6_2 = GetPedBoneIndex
  L7_2 = cache
  L7_2 = L7_2.ped
  L8_2 = A0_2.bone
  if not L8_2 then
    L8_2 = 60309
  end
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2.position
  L7_2 = L7_2.x
  L8_2 = A0_2.position
  L8_2 = L8_2.y
  L9_2 = A0_2.position
  L9_2 = L9_2.z
  L10_2 = A0_2.rotation
  L10_2 = L10_2.x
  L11_2 = A0_2.rotation
  L11_2 = L11_2.y
  L12_2 = A0_2.rotation
  L12_2 = L12_2.z
  L13_2 = true
  L14_2 = true
  L15_2 = false
  L16_2 = true
  L17_2 = 0
  L18_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = SetModelAsNoLongerNeeded
  L4_2 = A0_2.model
  L3_2(L4_2)
  return L2_2
end
L1_1 = Utils
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.dict
  if L1_2 then
    L1_2 = A0_2.clip
    if L1_2 then
      L1_2 = IsEntityPlayingAnim
      L2_2 = cache
      L2_2 = L2_2.ped
      L3_2 = A0_2.dict
      L4_2 = A0_2.clip
      L5_2 = 3
      return L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  else
    L1_2 = A0_2.scenario
    if L1_2 then
      L1_2 = IsPedUsingScenario
      L2_2 = cache
      L2_2 = L2_2.ped
      L3_2 = A0_2.scenario
      return L1_2(L2_2, L3_2)
    end
  end
  L1_2 = false
  return L1_2
end
L1_1.isPlayingAnim = L2_1
L1_1 = Utils
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2.dict
  if L2_2 then
    L2_2 = A0_2.clip
    if L2_2 then
      L2_2 = lib
      L2_2 = L2_2.requestAnimDict
      L3_2 = A0_2.dict
      L2_2(L3_2)
      L2_2 = TaskPlayAnim
      L3_2 = cache
      L3_2 = L3_2.ped
      L4_2 = A0_2.dict
      L5_2 = A0_2.clip
      L6_2 = A0_2.blendIn
      if not L6_2 then
        L6_2 = 3.0
      end
      L7_2 = A0_2.blendOut
      if not L7_2 then
        L7_2 = 1.0
      end
      L8_2 = A0_2.duration
      if not L8_2 then
        L8_2 = -1
      end
      L9_2 = A0_2.flag
      if not L9_2 then
        L9_2 = 49
      end
      L10_2 = A0_2.playbackRate
      if not L10_2 then
        L10_2 = 0
      end
      L11_2 = A0_2.lockX
      if not L11_2 then
        L11_2 = false
      end
      L12_2 = A0_2.lockY
      if not L12_2 then
        L12_2 = false
      end
      L13_2 = A0_2.lockZ
      if not L13_2 then
        L13_2 = false
      end
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  else
    L2_2 = A0_2.scenario
    if L2_2 then
      L4_2 = A0_2
      L2_2 = L4_2.scenario
      L3_2 = L4_2.playEnter
      L4_2 = TaskStartScenarioInPlace
      L5_2 = cache
      L5_2 = L5_2.ped
      L6_2 = L2_2
      L7_2 = 0
      L8_2 = L3_2 or L8_2
      if nil == L3_2 or not L3_2 then
        L8_2 = true
      end
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L4_2 = CreateThread
      function L5_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
        while true do
          L0_3 = Utils
          L0_3 = L0_3.isPlayingAnim
          L1_3 = A0_2
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = GetEntityCoords
            L1_3 = cache
            L1_3 = L1_3.ped
            L0_3 = L0_3(L1_3)
            L1_3 = ClearAreaOfObjects
            L2_3 = L0_3.x
            L3_3 = L0_3.y
            L4_3 = L0_3.z
            L5_3 = 2.0
            L6_3 = 0
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
            break
          end
          L0_3 = Wait
          L1_3 = 100
          L0_3(L1_3)
        end
      end
      L4_2(L5_2)
    end
  end
  if not A1_2 then
    return
  end
  L2_2 = {}
  L3_2 = A1_2
  L4_2 = table
  L4_2 = L4_2.type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "hash" == L4_2 then
    L4_2 = {}
    L5_2 = A1_2
    L4_2[1] = L5_2
    L3_2 = L4_2
  end
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = L0_1
    L13_2 = L9_2
    L12_2, L13_2 = L12_2(L13_2)
    L10_2(L11_2, L12_2, L13_2)
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    while true do
      L0_3 = Wait
      L1_3 = 100
      L0_3(L1_3)
      L0_3 = Utils
      L0_3 = L0_3.isPlayingAnim
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = ipairs
        L1_3 = L2_2
        L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
        for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
          L6_3 = DeleteEntity
          L7_3 = L5_3
          L6_3(L7_3)
        end
        L0_3 = A0_2.scenario
        if L0_3 then
          L0_3 = GetEntityCoords
          L1_3 = cache
          L1_3 = L1_3.ped
          L0_3 = L0_3(L1_3)
          L1_3 = ClearAreaOfObjects
          L2_3 = L0_3.x
          L3_3 = L0_3.y
          L4_3 = L0_3.z
          L5_3 = 2.0
          L6_3 = 0
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
        end
        break
      end
    end
  end
  L4_2(L5_2)
end
L1_1.playAnim = L2_1
L1_1 = {}
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.x
  if L1_2 then
    L1_2 = A0_2.y
    if L1_2 then
      L1_2 = A0_2.z
      if L1_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L1_2 = vector4
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L5_2 = A0_2.w
  if not L5_2 then
    L5_2 = 0.0
  end
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
L3_1 = Utils
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = L2_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A1_2.prop
  L4_2 = table
  L4_2 = L4_2.type
  L5_2 = A1_2.prop
  L4_2 = L4_2(L5_2)
  if "hash" == L4_2 then
    L4_2 = {}
    L5_2 = A1_2.prop
    L4_2[1] = L5_2
    L3_2 = L4_2
  end
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = IsModelValid
    L11_2 = L9_2.model
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L1_1
      L12_2 = Utils
      L12_2 = L12_2.createProp
      L13_2 = L2_2
      L14_2 = L9_2
      L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
      L10_2(L11_2, L12_2, L13_2, L14_2)
    else
    end
  end
end
L3_1.createProps = L4_1
L3_1 = Utils
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = L2_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A1_2.ped
  L4_2 = table
  L4_2 = L4_2.type
  L5_2 = A1_2.ped
  L4_2 = L4_2(L5_2)
  if "hash" == L4_2 then
    L4_2 = {}
    L5_2 = A1_2.ped
    L4_2[1] = L5_2
    L3_2 = L4_2
  end
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = IsModelValid
    L11_2 = L9_2.model
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L1_1
      L12_2 = Utils
      L12_2 = L12_2.createPed
      L13_2 = L2_2
      L14_2 = L9_2
      L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
      L10_2(L11_2, L12_2, L13_2, L14_2)
    else
    end
  end
end
L3_1.createPeds = L4_1
L3_1 = Utils
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ipairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.remove
    L6_2()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L1_1
  L0_2(L1_2)
end
L3_1.removeEntities = L4_1
L3_1 = Utils
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A0_2 then
    return
  end
  L1_2 = {}
  L2_2 = A0_2
  L3_2 = table
  L3_2 = L3_2.type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "hash" == L3_2 then
    L3_2 = {}
    L4_2 = A0_2
    L3_2[1] = L4_2
    L2_2 = L3_2
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = {}
    L12_2 = L8_2.model
    L11_2.model = L12_2
    L12_2 = L8_2.bone
    L11_2.bone = L12_2
    L12_2 = L8_2.position
    L11_2.pos = L12_2
    L12_2 = L8_2.rotation
    L11_2.rot = L12_2
    L9_2(L10_2, L11_2)
  end
  return L1_2
end
L3_1.convertAnimProp = L4_1
