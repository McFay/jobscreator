-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = GetJobs
L0_1 = L0_1()
L1_1 = {}
L2_1 = {}
Actions = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = Settings
  L2_2 = L2_2.handcuffsItemName
  L1_2.handcuffs = L2_2
  L2_2 = Settings
  L2_2 = L2_2.ziptiesItemName
  L1_2.zipties = L2_2
  L2_2 = source
  L3_2 = Utils
  L3_2 = L3_2.distanceCheck
  L4_2 = L2_2
  L5_2 = A0_2
  L6_2 = Settings
  L6_2 = L6_2.interactDistance
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    return
  end
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = nil
    L6_2 = L3_2
    L5_2 = L3_2.hasItem
    L7_2 = L1_2.handcuffs
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = Actions
      L5_2 = L5_2.hasAccess
      L6_2 = L3_2
      L7_2 = "handcuffs"
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 then
        L4_2 = "handcuffs"
    end
    else
      L6_2 = L3_2
      L5_2 = L3_2.hasItem
      L7_2 = L1_2.zipties
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 then
        L5_2 = Actions
        L5_2 = L5_2.hasAccess
        L6_2 = L3_2
        L7_2 = "zipties"
        L5_2 = L5_2(L6_2, L7_2)
        if L5_2 then
          L4_2 = "zipties"
      end
      else
        L5_2 = LR
        L5_2 = L5_2.notify
        L6_2 = L2_2
        L7_2 = locale
        L8_2 = "missing_cuff"
        L7_2 = L7_2(L8_2)
        L8_2 = "error"
        L5_2(L6_2, L7_2, L8_2)
        return
      end
    end
    L5_2 = L1_1
    L5_2[A0_2] = L4_2
    L6_2 = L3_2
    L5_2 = L3_2.removeItem
    L7_2 = L1_2[L4_2]
    L8_2 = 1
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = TriggerClientEvent
    L6_2 = "lunar_unijob:cuffReceiver"
    L7_2 = A0_2
    L8_2 = L2_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = TriggerClientEvent
    L6_2 = "lunar_unijob:cuffSender"
    L7_2 = L2_2
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = Editable
    L5_2 = L5_2.onCuffStateChanged
    L6_2 = L2_2
    L7_2 = A0_2
    L8_2 = true
    L9_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  else
    L4_2 = L1_1
    L4_2 = L4_2[A0_2]
    L5_2 = Actions
    L5_2 = L5_2.hasAccess
    L6_2 = L3_2
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L5_2 = LR
      L5_2 = L5_2.notify
      L6_2 = L2_2
      L7_2 = locale
      L8_2 = "cant_un"
      L9_2 = L1_1
      L9_2 = L9_2[A0_2]
      L8_2 = L8_2 .. L9_2
      L7_2 = L7_2(L8_2)
      L8_2 = "error"
      L5_2(L6_2, L7_2, L8_2)
      return
    end
    if "handcuffs" == L4_2 then
      L6_2 = L3_2
      L5_2 = L3_2.addItem
      L7_2 = "handcuffs"
      L8_2 = 1
      L5_2(L6_2, L7_2, L8_2)
    end
    L5_2 = L1_1
    L5_2[A0_2] = nil
    L5_2 = TriggerClientEvent
    L6_2 = "lunar_unijob:cuffReceiver"
    L7_2 = A0_2
    L8_2 = L2_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = TriggerClientEvent
    L6_2 = "lunar_unijob:cuffSender"
    L7_2 = L2_2
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = Editable
    L5_2 = L5_2.onCuffStateChanged
    L6_2 = L2_2
    L7_2 = A0_2
    L8_2 = false
    L9_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Utils
  L2_2 = L2_2.distanceCheck
  L3_2 = L1_2
  L4_2 = A0_2
  L5_2 = Settings
  L5_2 = L5_2.interactDistance
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    return
  end
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = Actions
    L3_2 = L3_2.hasAccess
    L4_2 = L2_2
    L5_2 = "handcuffs"
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = LR
      L3_2 = L3_2.notify
      L4_2 = L1_2
      L5_2 = locale
      L6_2 = "cant_handcuff"
      L5_2 = L5_2(L6_2)
      L6_2 = "error"
      L3_2(L4_2, L5_2, L6_2)
      return
    end
    L3_2 = L1_1
    L3_2[A0_2] = "handcuffs"
    L3_2 = TriggerClientEvent
    L4_2 = "lunar_unijob:cuffReceiver"
    L5_2 = A0_2
    L6_2 = L1_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = TriggerClientEvent
    L4_2 = "lunar_unijob:cuffSender"
    L5_2 = L1_2
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = Editable
    L3_2 = L3_2.onCuffStateChanged
    L4_2 = L1_2
    L5_2 = A0_2
    L6_2 = true
    L7_2 = "handcuffs"
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  else
    L3_2 = Actions
    L3_2 = L3_2.hasAccess
    L4_2 = L2_2
    L5_2 = "handcuffs"
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = LR
      L3_2 = L3_2.notify
      L4_2 = L1_2
      L5_2 = locale
      L6_2 = "cant_unhandcuff"
      L5_2 = L5_2(L6_2)
      L6_2 = "error"
      L3_2(L4_2, L5_2, L6_2)
      return
    end
    L3_2 = L1_1
    L3_2[A0_2] = nil
    L3_2 = TriggerClientEvent
    L4_2 = "lunar_unijob:cuffReceiver"
    L5_2 = A0_2
    L6_2 = L1_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = TriggerClientEvent
    L4_2 = "lunar_unijob:cuffSender"
    L5_2 = L1_2
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = Editable
    L3_2 = L3_2.onCuffStateChanged
    L4_2 = L1_2
    L5_2 = A0_2
    L6_2 = false
    L7_2 = "handcuffs"
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
end
L4_1 = RegisterNetEvent
L5_1 = "lunar_unijob:cuffToggle"
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = Settings
  L1_2 = L1_2.handcuffItems
  if L1_2 then
    L1_2 = L2_1
    L2_2 = A0_2
    L1_2(L2_2)
  else
    L1_2 = L3_1
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
L4_1(L5_1, L6_1)
L4_1 = lib
L4_1 = L4_1.callback
L4_1 = L4_1.register
L5_1 = "lunar_unijob:getPlayerCuffState"
function L6_1(A0_2, A1_2)
  local L2_2
  L2_2 = L1_1
  L2_2 = L2_2[A1_2]
  return L2_2
end
L4_1(L5_1, L6_1)
L4_1 = RegisterCommand
L5_1 = "uncuff"
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = IsPlayerAdmin
    L5_2 = L3_2.source
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L4_2 = tonumber
  L5_2 = A1_2[1]
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = L1_1
    L5_2[L4_2] = nil
    L5_2 = TriggerClientEvent
    L6_2 = "lunar_unijob:syncCuff"
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L7_1 = true
L4_1(L5_1, L6_1, L7_1)
L4_1 = exports
L5_1 = "uncuff"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L1_2[A0_2] = nil
  L1_2 = TriggerClientEvent
  L2_2 = "lunar_unijob:syncCuff"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = {}
L5_1 = RegisterNetEvent
L6_1 = "lunar_unijob:drag"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L4_1
  L3_2 = L3_2[L1_2]
  if not L3_2 then
    L3_2 = A0_2
  end
  if L2_2 and L3_2 then
    L4_2 = Actions
    L4_2 = L4_2.hasAccess
    L5_2 = L2_2
    L6_2 = "drag"
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = Utils
      L4_2 = L4_2.distanceCheck
      L5_2 = L1_2
      L6_2 = L3_2
      L7_2 = Settings
      L7_2 = L7_2.interactDistance
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      if L4_2 then
        L4_2 = L1_1
        L4_2 = L4_2[L3_2]
        if L4_2 then
          goto lbl_36
        end
      end
    end
  end
  do return end
  ::lbl_36::
  L4_2 = L4_1
  L4_2 = L4_2[L1_2]
  if L4_2 then
    L4_2 = L4_1
    L4_2[L1_2] = nil
  else
    L4_2 = L4_1
    L4_2[L1_2] = L3_2
  end
  L4_2 = TriggerClientEvent
  L5_2 = "lunar_unijob:drag"
  L6_2 = L3_2
  L7_2 = L4_1
  L7_2 = L7_2[L1_2]
  if L7_2 then
    L7_2 = L1_2
  end
  L4_2(L5_2, L6_2, L7_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_unijob:putInVehicle"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = Actions
    L4_2 = L4_2.hasAccess
    L5_2 = L3_2
    L6_2 = "putInsideVehicle"
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = Utils
      L4_2 = L4_2.distanceCheck
      L5_2 = L2_2
      L6_2 = A0_2
      L7_2 = Settings
      L7_2 = L7_2.interactDistance
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      if L4_2 then
        goto lbl_25
      end
    end
  end
  do return end
  ::lbl_25::
  L4_2 = TriggerClientEvent
  L5_2 = "lunar_unijob:putInVehicle"
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_unijob:outTheVehicle"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = Actions
    L4_2 = L4_2.hasAccess
    L5_2 = L3_2
    L6_2 = "takeOutOfVehicle"
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = Utils
      L4_2 = L4_2.distanceCheck
      L5_2 = L2_2
      L6_2 = A0_2
      L7_2 = 10.0
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      if L4_2 then
        goto lbl_24
      end
    end
  end
  do return end
  ::lbl_24::
  L4_2 = TriggerClientEvent
  L5_2 = "lunar_unijob:outTheVehicle"
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L5_1(L6_1, L7_1)
L5_1 = {}
L6_1 = {}
L7_1 = RegisterNetEvent
L8_1 = "lunar_unijob:carry"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Actions
    L3_2 = L3_2.hasAccess
    L4_2 = L2_2
    L5_2 = "carry"
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = Utils
      L3_2 = L3_2.distanceCheck
      L4_2 = L1_2
      L5_2 = A0_2
      L6_2 = Settings
      L6_2 = L6_2.interactDistance
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      if L3_2 then
        L3_2 = L5_1
        L3_2 = L3_2[L1_2]
        if not L3_2 then
          L3_2 = L5_1
          L3_2 = L3_2[A0_2]
          if not L3_2 then
            L3_2 = L6_1
            L3_2 = L3_2[L1_2]
            if not L3_2 then
              L3_2 = L6_1
              L3_2 = L3_2[A0_2]
              if not L3_2 then
                goto lbl_41
              end
            end
          end
        end
      end
    end
  end
  do return end
  ::lbl_41::
  L3_2 = L5_1
  L3_2[L1_2] = A0_2
  L3_2 = L6_1
  L3_2[A0_2] = L1_2
  L3_2 = TriggerClientEvent
  L4_2 = "lunar_unijob:syncCarry"
  L5_2 = A0_2
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "lunar_unijob:stopCarry"
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = Framework
  L1_2 = L1_2.getPlayerFromId
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = Actions
    L2_2 = L2_2.hasAccess
    L3_2 = L1_2
    L4_2 = "carry"
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
  L2_2 = L5_1
  L2_2 = L2_2[L0_2]
  if L2_2 then
    L2_2 = L5_1
    L2_2 = L2_2[L0_2]
    L3_2 = Utils
    L3_2 = L3_2.distanceCheck
    L4_2 = L0_2
    L5_2 = L2_2
    L6_2 = Settings
    L6_2 = L6_2.interactDistance
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if not L3_2 then
      return
    end
    L3_2 = TriggerClientEvent
    L4_2 = "lunar_unijob:stopCarry"
    L5_2 = L0_2
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = TriggerClientEvent
    L4_2 = "lunar_unijob:stopCarry"
    L5_2 = L2_2
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = L5_1
    L4_2 = L6_1
    L5_2 = nil
    L4_2[L2_2] = nil
    L3_2[L0_2] = L5_2
  else
    L2_2 = L6_1
    L2_2 = L2_2[L0_2]
    if L2_2 then
      L2_2 = L6_1
      L2_2 = L2_2[L0_2]
      L3_2 = Utils
      L3_2 = L3_2.distanceCheck
      L4_2 = L0_2
      L5_2 = L2_2
      L6_2 = Settings
      L6_2 = L6_2.interactDistance
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      if not L3_2 then
        return
      end
      L3_2 = TriggerClientEvent
      L4_2 = "lunar_unijob:stopCarry"
      L5_2 = L0_2
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = TriggerClientEvent
      L4_2 = "lunar_unijob:stopCarry"
      L5_2 = L2_2
      L6_2 = false
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = L5_1
      L4_2 = L6_1
      L5_2 = nil
      L4_2[L2_2] = nil
      L3_2[L0_2] = L5_2
    end
  end
end
L7_1(L8_1, L9_1)
function L7_1(A0_2)
  local L1_2
  if "handcuff" == A0_2 or "ziptie" == A0_2 or "steal" == A0_2 or "drag" == A0_2 or "carry" == A0_2 or "bill" == A0_2 or "revive" == A0_2 or "tackle" == A0_2 or "heal" == A0_2 then
    L1_2 = "playerActions"
    return L1_2
  else
    L1_2 = "vehicleActions"
    return L1_2
  end
end
L8_1 = Actions
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetJobs
  L2_2 = L2_2()
  L4_2 = A0_2
  L3_2 = A0_2.getJob
  L3_2 = L3_2(L4_2)
  L3_2 = L2_2[L3_2]
  if "handcuffs" == A1_2 or "zipties" == A1_2 then
    L4_2 = L3_2 or L4_2
    if L3_2 then
      L4_2 = L3_2.playerActions
    end
    if L4_2 then
      L5_2 = L4_2.handcuff
      if L5_2 then
        L5_2 = L4_2.handcuff
        L5_2 = "both" == L5_2
        return L5_2
    end
    else
      L5_2 = Settings
      L5_2 = L5_2.playerActions
      L5_2 = L5_2.handcuff
      L5_2 = "both" == L5_2
      return L5_2
    end
  else
    L4_2 = L3_2 or L4_2
    if L3_2 then
      L4_2 = L7_1
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      L4_2 = L3_2[L4_2]
    end
    L5_2 = L4_2 or L5_2
    if L4_2 then
      L5_2 = L4_2[A1_2]
      L5_2 = not L5_2
      L5_2 = not L5_2
    end
    L6_2 = Settings
    L7_2 = L7_1
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2[L7_2]
    if L6_2 then
      L6_2 = L6_2[A1_2]
    end
    L6_2 = not L6_2
    L6_2 = not L6_2
    L7_2 = L6_2 or L7_2
    if not L6_2 then
      L7_2 = L5_2
    end
    return L7_2
  end
end
L8_1.hasAccess = L9_1
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "lunar_unijob:hijackVehicle"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Editable
  L1_2 = L1_2.onVehicleAction
  L2_2 = A0_2
  L3_2 = "hijack"
  return L1_2(L2_2, L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "lunar_unijob:repairVehicle"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Editable
  L1_2 = L1_2.onVehicleAction
  L2_2 = A0_2
  L3_2 = "repair"
  return L1_2(L2_2, L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "lunar_unijob:cleanVehicle"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Editable
  L1_2 = L1_2.onVehicleAction
  L2_2 = A0_2
  L3_2 = "clean"
  return L1_2(L2_2, L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "lunar_unijob:impoundVehicle"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Editable
  L1_2 = L1_2.onVehicleAction
  L2_2 = A0_2
  L3_2 = "impound"
  return L1_2(L2_2, L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = {}
PendingVehicleActions = L8_1
L8_1 = RegisterNetEvent
L9_1 = "lunar_unijob:performVehicleAction"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = PendingVehicleActions
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L3_2 = PendingVehicleActions
    L3_2[L2_2] = nil
    L3_2 = NetworkGetEntityFromNetworkId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      return
    end
    L4_2 = NetworkGetEntityOwner
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = TriggerClientEvent
    L6_2 = "lunar_unijob:performVehicleAction"
    L7_2 = L4_2
    L8_2 = A0_2
    L9_2 = A1_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "lunar_unijob:removeItem"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = type
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if "string" == L3_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L4_2 = L2_2
  L3_2 = L2_2.hasItem
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.removeItem
    L5_2 = A0_2
    L6_2 = 1
    L3_2(L4_2, L5_2, L6_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "lunar_unijob:tacklePlayer"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Actions
    L3_2 = L3_2.hasAccess
    L4_2 = L2_2
    L5_2 = "tackle"
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = Utils
      L3_2 = L3_2.distanceCheck
      L4_2 = L1_2
      L5_2 = A0_2
      L6_2 = 5.0
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      if L3_2 then
        goto lbl_24
      end
    end
  end
  do return end
  ::lbl_24::
  L3_2 = TriggerClientEvent
  L4_2 = "lunar_unijob:playTackledAnim"
  L5_2 = A0_2
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end
L8_1(L9_1, L10_1)
