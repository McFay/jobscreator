-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = RegisterNetEvent
L2_1 = "lunar_bridge:showNotification"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "lunar_bridge:showNotification"
L3_1 = ShowNotification
L1_1(L2_1, L3_1)
L1_1 = ShowNotification
L0_1.notify = L1_1
L1_1 = ShowUI
L0_1.showUI = L1_1
L1_1 = HideUI
L0_1.hideUI = L1_1
L1_1 = ShowProgressBar
L0_1.progressBar = L1_1
L1_1 = IsProgressActive
L0_1.progressActive = L1_1
L1_1 = CancelProgress
L0_1.cancelProgress = L1_1
L1_1 = ShowObjective
L0_1.showObjective = L1_1
L1_1 = HideObjective
L0_1.hideObjective = L1_1
L1_1 = ShowBars
L0_1.showBars = L1_1
L1_1 = HideBars
L0_1.hideBars = L1_1
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
    goto lbl_51
  end
end
do return end
::lbl_51::
L1_1 = exports
L2_1 = "getObject"
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1
  return L0_2
end
L1_1(L2_1, L3_1)
L1_1 = {}
Utils = L1_1
L1_1 = Utils
L2_1 = L0_1.Utils
L2_1 = L2_1.isPolice
L1_1.isPolice = L2_1
L1_1 = Utils
L2_1 = L0_1.Utils
L2_1 = L2_1.createBlip
L1_1.createBlip = L2_1
L1_1 = exports
L2_1 = "getConfig"
function L3_1()
  local L0_2, L1_2
  L0_2 = Config
  return L0_2
end
L1_1(L2_1, L3_1)
