-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = TriggerClientEvent
  L4_2 = "lunar_bridge:showNotification"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.notify = L1_1
L1_1 = GetUtils
L1_1 = L1_1()
L0_1.Utils = L1_1
L1_1 = L0_1.Utils
if L1_1 then
  L1_1 = tonumber
  L2_1 = tostring
  L3_1 = GetUtils
  L2_1 = L2_1(L3_1)
  L3_1 = L2_1
  L2_1 = L2_1.sub
  L4_1 = 11
  L2_1 = L2_1(L3_1, L4_1)
  L3_1 = 16
  L1_1 = L1_1(L2_1, L3_1)
  L2_1 = L0_1.Utils
  L2_1 = L2_1.id
  if L1_1 == L2_1 then
    goto lbl_30
  end
end
L1_1 = StopResource
L2_1 = GetCurrentResourceName
L2_1, L3_1, L4_1 = L2_1()
L1_1(L2_1, L3_1, L4_1)
do return end
::lbl_30::
L1_1 = Dispatch
L0_1.Dispatch = L1_1
L1_1 = {}
L2_1 = exports
L3_1 = "getObject"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetInvokingResource
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L1_2 = LoadResourceFile
  L2_2 = L0_2
  L3_2 = ".fxap"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = LoadResourceFile
  L3_2 = L0_2
  L4_2 = "init.lua"
  L2_2 = L2_2(L3_2, L4_2)
  if L1_2 then
    L4_2 = L1_2
    L3_2 = L1_2.len
    L3_2 = L3_2(L4_2)
    if 178 == L3_2 and L2_2 then
      L4_2 = L2_2
      L3_2 = L2_2.len
      L3_2 = L3_2(L4_2)
      if 578 == L3_2 then
        L4_2 = L2_2
        L3_2 = L2_2.sub
        L5_2 = 1
        L6_2 = 4
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        if "FXAP" == L3_2 then
          L3_2 = lib
          L3_2 = L3_2.table
          L3_2 = L3_2.contains
          L4_2 = L1_1
          L5_2 = L1_2
          L3_2 = L3_2(L4_2, L5_2)
          if not L3_2 then
            goto lbl_41
          end
        end
      end
    end
  end
  do return end
  ::lbl_41::
  if L1_2 then
    L3_2 = L1_1
    L3_2[L0_2] = L1_2
  end
  L3_2 = L0_1
  return L3_2
end
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = "onResourceStarting"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetResourceState
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "starting" ~= L1_2 then
    return
  end
  L1_2 = L1_1
  L1_2[A0_2] = nil
end
L2_1(L3_1, L4_1)
L2_1 = exports
L3_1 = "getConfig"
function L4_1()
  local L0_2, L1_2
  L0_2 = Config
  return L0_2
end
L2_1(L3_1, L4_1)
