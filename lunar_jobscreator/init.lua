local L0_1, L1_1, L2_1, L3_1
L0_1 = lib
L0_1 = L0_1.locale
L0_1()
L0_1 = lib
L0_1 = L0_1.checkDependency
L1_1 = "lunar_bridge"
L2_1 = "1.3.3"
L0_1, L1_1 = L0_1(L1_1, L2_1)
if not L0_1 then
  L2_1 = Wait
  L3_1 = 5000
  L2_1(L3_1)
  L2_1 = error
  L3_1 = L1_1
  L2_1(L3_1)
end
L2_1 = IsDuplicityVersion
L2_1 = L2_1()
if L2_1 then
  L2_1 = exports
  L2_1 = L2_1.lunar_bridge
  L3_1 = L2_1
  L2_1 = L2_1.getObject
  L2_1 = L2_1(L3_1)
  LR = L2_1
  L2_1 = LR
  L2_1 = L2_1.Utils
  Utils = L2_1
  L2_1 = LR
  L2_1 = L2_1.Dispatch
  Dispatch = L2_1
  L2_1 = Utils
  L2_1 = L2_1.checkVersion
  L3_1 = GetCurrentResourceName
  L3_1 = L3_1()
  L2_1(L3_1)
else
  L2_1 = exports
  L2_1 = L2_1.lunar_bridge
  L3_1 = L2_1
  L2_1 = L2_1.getObject
  L2_1 = L2_1(L3_1)
  LR = L2_1
  L2_1 = LR
  L2_1 = L2_1.Utils
  Utils = L2_1
end
