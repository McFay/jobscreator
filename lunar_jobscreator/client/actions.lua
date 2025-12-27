-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = {}
Actions = L0_1
L0_1 = {}
L1_1 = {}
function L2_1()
  local L0_2, L1_2
  L0_2 = Editable
  L0_2 = L0_2.isDead
  L1_2 = cache
  L1_2 = L1_2.ped
  L0_2 = L0_2(L1_2)
  L0_2 = IsPedInAnyVehicle
  L1_2 = cache
  L1_2 = L1_2.ped
  L0_2 = L0_2(L1_2)
  L0_2 = not L0_2 and L0_2
  return L0_2
end
function L3_1(A0_2)
  local L1_2
  if "handcuff" == A0_2 or "ziptie" == A0_2 or "steal" == A0_2 or "drag" == A0_2 or "carry" == A0_2 or "bill" == A0_2 or "revive" == A0_2 or "tackle" == A0_2 or "heal" == A0_2 then
    L1_2 = "playerActions"
    return L1_2
  else
    L1_2 = "vehicleActions"
    return L1_2
  end
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GetCurrentJob
  L1_2 = L1_2()
  if "handcuffs" == A0_2 or "zipties" == A0_2 then
    L2_2 = L1_2 or L2_2
    if L1_2 then
      L2_2 = L1_2.playerActions
    end
    if L2_2 then
      L3_2 = L2_2.handcuff
      if L3_2 then
        L3_2 = L2_2.handcuff
        L3_2 = "both" == L3_2
        return L3_2
    end
    else
      L3_2 = Settings
      L3_2 = L3_2.playerActions
      L3_2 = L3_2.handcuff
      L3_2 = "both" == L3_2
      return L3_2
    end
  else
    L2_2 = L1_2 or L2_2
    if L1_2 then
      L2_2 = L3_1
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L2_2 = L1_2[L2_2]
    end
    L3_2 = L2_2 or L3_2
    if L2_2 then
      L3_2 = L2_2[A0_2]
      L3_2 = not L3_2
      L3_2 = not L3_2
    end
    L4_2 = Settings
    L5_2 = L3_1
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2[L5_2]
    if L4_2 then
      L4_2 = L4_2[A0_2]
    end
    L4_2 = not L4_2
    L4_2 = not L4_2
    L5_2 = L4_2 or L5_2
    if not L4_2 then
      L5_2 = L3_2
    end
    return L5_2
  end
end
HasAccess = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetCurrentJob
  L1_2 = L1_2()
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L3_1
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L2_2 = L1_2[L2_2]
    if L2_2 then
      L2_2 = L2_2[A0_2]
    end
  end
  if nil == L2_2 then
    L3_2 = Settings
    L4_2 = L3_1
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = L3_2[A0_2]
    end
    L2_2 = L3_2
  end
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = L2_2.item
    if L3_2 then
      L3_2 = Framework
      L3_2 = L3_2.hasItem
      L4_2 = L2_2.item
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = LR
        L3_2 = L3_2.notify
        L4_2 = locale
        L5_2 = "missing_item"
        L6_2 = L2_2.item
        if L6_2 then
          L6_2 = Utils
          L6_2 = L6_2.getItemLabel
          L7_2 = L2_2.item
          L6_2 = L6_2(L7_2)
        end
        L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
        L3_2(L4_2, L5_2, L6_2, L7_2)
        L3_2 = false
        return L3_2
      end
    end
    L3_2 = L2_2.removeAfterUse
    if L3_2 then
      L3_2 = TriggerServerEvent
      L4_2 = "lunar_unijob:removeItem"
      L5_2 = L2_2.item
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = true
  return L3_2
end
L5_1 = Actions
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L2_1
    L1_3 = L1_3()
    if not L1_3 then
      L1_3 = LR
      L1_3 = L1_3.notify
      L2_3 = locale
      L3_3 = "in_car"
      L2_3 = L2_3(L3_3)
      L3_3 = "error"
      L1_3(L2_3, L3_3)
      return
    end
    L1_3 = NetworkGetPlayerIndexFromPed
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if 0 == L1_3 then
      return
    end
    L2_3 = L4_1
    L3_3 = A0_2
    L2_3 = L2_3(L3_3)
    if not L2_3 then
      return
    end
    L2_3 = GetPlayerServerId
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L3_3 = PlayerActionOverrides
    L4_3 = A0_2
    L3_3 = L3_3[L4_3]
    if L3_3 then
      L4_3 = L3_3
      L5_3 = L2_3
      L6_3 = A0_3
      L4_3(L5_3, L6_3)
      return
    end
    L4_3 = A2_2
    L5_3 = L2_3
    L6_3 = A0_3
    L4_3(L5_3, L6_3)
  end
  L5_2 = Config
  L5_2 = L5_2.disableTargetInteractions
  if not L5_2 then
    L5_2 = exports
    L5_2 = L5_2.qtarget
    L6_2 = L5_2
    L5_2 = L5_2.Player
    L7_2 = {}
    L8_2 = {}
    L9_2 = {}
    L10_2 = locale
    L11_2 = A0_2
    L10_2 = L10_2(L11_2)
    L9_2.label = L10_2
    L10_2 = "fa-solid fa-"
    L11_2 = A1_2
    L10_2 = L10_2 .. L11_2
    L9_2.icon = L10_2
    function L10_2(A0_3)
      local L1_3, L2_3
      L1_3 = L2_1
      L1_3 = L1_3()
      if not L1_3 then
        return
      end
      L1_3 = A3_2
      if L1_3 then
        L1_3 = A3_2
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = false
          return L1_3
        end
      end
      L1_3 = Editable
      L1_3 = L1_3.canInteractFilter
      L2_3 = A0_2
      L1_3 = L1_3[L2_3]
      if L1_3 then
        L1_3 = Editable
        L1_3 = L1_3.canInteractFilter
        L2_3 = A0_2
        L1_3 = L1_3[L2_3]
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = false
          return L1_3
        end
      end
      L1_3 = HasAccess
      L2_3 = A0_2
      return L1_3(L2_3)
    end
    L9_2.canInteract = L10_2
    L9_2.action = L4_2
    L8_2[1] = L9_2
    L7_2.options = L8_2
    L8_2 = Settings
    L8_2 = L8_2.interactDistance
    if not L8_2 then
      L8_2 = 3.0
    end
    L7_2.distance = L8_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = L0_1
  L5_2 = #L5_2
  L6_2 = L5_2 + 1
  L5_2 = L0_1
  L7_2 = {}
  L7_2.name = A0_2
  L7_2.icon = A1_2
  L7_2.onSelect = L4_2
  L5_2[L6_2] = L7_2
  L5_2 = exports
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L5_1.createPlayer = L6_1
L5_1 = Actions
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L2_1
    L1_3 = L1_3()
    if not L1_3 then
      L1_3 = LR
      L1_3 = L1_3.notify
      L2_3 = locale
      L3_3 = "in_car"
      L2_3 = L2_3(L3_3)
      L3_3 = "error"
      L1_3(L2_3, L3_3)
      return
    end
    L1_3 = L4_1
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      return
    end
    L1_3 = VehicleActionOverrides
    L2_3 = A0_2
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L2_3 = L1_3
      L3_3 = A0_3
      L2_3(L3_3)
      return
    end
    L2_3 = A2_2
    L3_3 = A0_3
    L2_3(L3_3)
  end
  L5_2 = Config
  L5_2 = L5_2.disableTargetInteractions
  if not L5_2 then
    L5_2 = exports
    L5_2 = L5_2.qtarget
    L6_2 = L5_2
    L5_2 = L5_2.Vehicle
    L7_2 = {}
    L8_2 = {}
    L9_2 = {}
    L10_2 = locale
    L11_2 = A0_2
    L10_2 = L10_2(L11_2)
    L9_2.label = L10_2
    L10_2 = "fa-solid fa-"
    L11_2 = A1_2
    L10_2 = L10_2 .. L11_2
    L9_2.icon = L10_2
    function L10_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L2_1
      L1_3 = L1_3()
      if not L1_3 then
        return
      end
      L1_3 = GetCurrentJob
      L1_3 = L1_3()
      if L1_3 then
        L2_3 = L1_3.vehicleActions
        if L2_3 then
          goto lbl_20
        end
      end
      L2_3 = Settings
      L2_3 = L2_3.vehicleActions
      L3_3 = A0_2
      L2_3 = L2_3[L3_3]
      L2_3 = not L2_3
      L2_3 = not L2_3
      do return L2_3 end
      ::lbl_20::
      L2_3 = A3_2
      if L2_3 then
        L2_3 = A3_2
        L3_3 = A0_3
        L2_3 = L2_3(L3_3)
        if not L2_3 then
          L2_3 = false
          return L2_3
        end
      end
      L2_3 = Editable
      L2_3 = L2_3.canInteractFilter
      L3_3 = A0_2
      L2_3 = L2_3[L3_3]
      if L2_3 then
        L2_3 = Editable
        L2_3 = L2_3.canInteractFilter
        L3_3 = A0_2
        L2_3 = L2_3[L3_3]
        L3_3 = A0_3
        L2_3 = L2_3(L3_3)
        if not L2_3 then
          L2_3 = false
          return L2_3
        end
      end
      L2_3 = L1_3.vehicleActions
      L3_3 = A0_2
      L2_3 = L2_3[L3_3]
      if nil ~= L2_3 then
        L2_3 = L1_3.vehicleActions
        L3_3 = A0_2
        L2_3 = L2_3[L3_3]
        L2_3 = not L2_3
      end
      L2_3 = Settings
      L2_3 = L2_3.vehicleActions
      L3_3 = A0_2
      L2_3 = L2_3[L3_3]
      L2_3 = not L2_3
      L2_3 = not L2_3 or L2_3
      return L2_3
    end
    L9_2.canInteract = L10_2
    L9_2.action = L4_2
    L8_2[1] = L9_2
    L7_2.options = L8_2
    L8_2 = Settings
    L8_2 = L8_2.interactDistance
    if not L8_2 then
      L8_2 = 3.0
    end
    L7_2.distance = L8_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = L1_1
  L5_2 = #L5_2
  L6_2 = L5_2 + 1
  L5_2 = L1_1
  L7_2 = {}
  L7_2.name = A0_2
  L7_2.icon = A1_2
  L7_2.onSelect = L4_2
  L5_2[L6_2] = L7_2
  L5_2 = exports
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L5_1.createVehicle = L6_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = lib
  L1_2 = L1_2.getClosestPlayer
  L2_2 = GetEntityCoords
  L3_2 = cache
  L3_2 = L3_2.ped
  L2_2 = L2_2(L3_2)
  L3_2 = Settings
  L3_2 = L3_2.interactDistance
  L4_2 = false
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 or not L2_2 then
    L3_2 = LR
    L3_2 = L3_2.notify
    L4_2 = locale
    L5_2 = "no_player_near"
    L4_2 = L4_2(L5_2)
    L5_2 = "error"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2
  L4_2 = L2_2
  L3_2(L4_2)
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lib
  L1_2 = L1_2.getClosestVehicle
  L2_2 = GetEntityCoords
  L3_2 = cache
  L3_2 = L3_2.ped
  L2_2 = L2_2(L3_2)
  L3_2 = Settings
  L3_2 = L3_2.interactDistance
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    L2_2 = LR
    L2_2 = L2_2.notify
    L3_2 = locale
    L4_2 = "no_vehicle_near"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2
  L3_2 = L1_2
  L2_2(L3_2)
end
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = HasAccess
    L8_2 = L6_2.name
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L0_2
      L9_2 = {}
      L10_2 = locale
      L11_2 = L6_2.name
      L10_2 = L10_2(L11_2)
      L9_2.label = L10_2
      L10_2 = L6_2.icon
      L9_2.icon = L10_2
      L10_2 = L6_2.onSelect
      L9_2.onSelect = L10_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = lib
  L1_2 = L1_2.registerMenu
  L2_2 = {}
  L2_2.id = "player_actions"
  L3_2 = locale
  L4_2 = "player_actions"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L3_2 = Config
  L3_2 = L3_2.actionsMenuPosition
  if not L3_2 then
    L3_2 = "top-right"
  end
  L2_2.position = L3_2
  L2_2.options = L0_2
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = L5_1
    L2_3 = L0_2
    L2_3 = L2_3[A0_3]
    L2_3 = L2_3.onSelect
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = lib
  L1_2 = L1_2.showMenu
  L2_2 = "player_actions"
  L1_2(L2_2)
end
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = HasAccess
    L8_2 = L6_2.name
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L0_2
      L9_2 = {}
      L10_2 = locale
      L11_2 = L6_2.name
      L10_2 = L10_2(L11_2)
      L9_2.label = L10_2
      L10_2 = L6_2.icon
      L9_2.icon = L10_2
      L10_2 = L6_2.onSelect
      L9_2.onSelect = L10_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = lib
  L1_2 = L1_2.registerMenu
  L2_2 = {}
  L2_2.id = "vehicle_actions"
  L3_2 = locale
  L4_2 = "vehicle_actions"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L3_2 = Config
  L3_2 = L3_2.actionsMenuPosition
  if not L3_2 then
    L3_2 = "top-right"
  end
  L2_2.position = L3_2
  L2_2.options = L0_2
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = L6_1
    L2_3 = L0_2
    L2_3 = L2_3[A0_3]
    L2_3 = L2_3.onSelect
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = lib
  L1_2 = L1_2.showMenu
  L2_2 = "vehicle_actions"
  L1_2(L2_2)
end
L9_1 = {}
L10_1 = {}
L10_1.name = "player_actions"
L11_1 = locale
L12_1 = "player_actions"
L11_1 = L11_1(L12_1)
L10_1.label = L11_1
L10_1.icon = "user"
L10_1.onSelect = L7_1
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = ipairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = HasAccess
    L7_2 = L5_2.name
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L0_2 = false
  return L0_2
end
L10_1.canInteract = L11_1
L11_1 = {}
L11_1.name = "vehicle_actions"
L12_1 = locale
L13_1 = "vehicle_actions"
L12_1 = L12_1(L13_1)
L11_1.label = L12_1
L11_1.icon = "car"
L11_1.onSelect = L8_1
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = ipairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = HasAccess
    L7_2 = L5_2.name
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L0_2 = false
  return L0_2
end
L11_1.canInteract = L12_1
L9_1[1] = L10_1
L9_1[2] = L11_1
L10_1 = exports
L11_1 = "addActionsCategory"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L9_1
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "removeActionsCategory"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = L9_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.name
    if L7_2 == A0_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = L9_1
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      break
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = Binds
L10_1 = L10_1.actionsMenu
L10_1 = L10_1.addListener
L11_1 = "main"
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = GetCurrentJob
  L0_2 = L0_2()
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = L9_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.canInteract
    if L8_2 then
      L8_2 = L7_2.canInteract
      L8_2 = L8_2()
      if not L8_2 then
        goto lbl_21
      end
    end
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    ::lbl_21::
  end
  L2_2 = Config
  L2_2 = L2_2.actionsMenu
  if L2_2 then
    L2_2 = L2_1
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = #L1_2
      if 0 ~= L2_2 then
        goto lbl_36
      end
    end
  end
  do return end
  ::lbl_36::
  L2_2 = lib
  L2_2 = L2_2.registerMenu
  L3_2 = {}
  L3_2.id = "actions_menu"
  L4_2 = Config
  L4_2 = L4_2.actionsMenuPosition
  if not L4_2 then
    L4_2 = "top-right"
  end
  L3_2.position = L4_2
  L4_2 = L0_2
  if L4_2 then
    L4_2 = L4_2.label
  end
  if not L4_2 then
    L4_2 = locale
    L5_2 = "actions"
    L4_2 = L4_2(L5_2)
  end
  L3_2.title = L4_2
  L3_2.options = L1_2
  function L4_2(A0_3)
    local L1_3
    L1_3 = L1_2
    L1_3 = L1_3[A0_3]
    L1_3 = L1_3.onSelect
    L1_3()
  end
  L2_2(L3_2, L4_2)
  L2_2 = lib
  L2_2 = L2_2.showMenu
  L3_2 = "actions_menu"
  L2_2(L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = Actions
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = lib
  L0_2 = L0_2.removeRadialItem
  L1_2 = "player_actions"
  L0_2(L1_2)
  L0_2 = lib
  L0_2 = L0_2.removeRadialItem
  L1_2 = "vehicle_actions"
  L0_2(L1_2)
  L0_2 = Config
  L0_2 = L0_2.radialMenu
  if not L0_2 then
    return
  end
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = HasAccess
    L8_2 = L6_2.name
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L0_2
      L9_2 = {}
      L10_2 = L6_2.name
      L9_2.id = L10_2
      L10_2 = locale
      L11_2 = L6_2.name
      L12_2 = "_radial"
      L11_2 = L11_2 .. L12_2
      L10_2 = L10_2(L11_2)
      L9_2.label = L10_2
      L10_2 = L6_2.icon
      L9_2.icon = L10_2
      function L10_2()
        local L0_3, L1_3
        L0_3 = L5_1
        L1_3 = L6_2.onSelect
        L0_3(L1_3)
      end
      L9_2.onSelect = L10_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = L1_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = HasAccess
    L9_2 = L7_2.name
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = {}
      L11_2 = L7_2.name
      L10_2.id = L11_2
      L11_2 = locale
      L12_2 = L7_2.name
      L13_2 = "_radial"
      L12_2 = L12_2 .. L13_2
      L11_2 = L11_2(L12_2)
      L10_2.label = L11_2
      L11_2 = L7_2.icon
      L10_2.icon = L11_2
      function L11_2()
        local L0_3, L1_3
        L0_3 = L6_1
        L1_3 = L7_2.onSelect
        L0_3(L1_3)
      end
      L10_2.onSelect = L11_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = #L0_2
  if L2_2 > 0 then
    L2_2 = lib
    L2_2 = L2_2.addRadialItem
    L3_2 = {}
    L3_2.id = "player_actions"
    L4_2 = locale
    L5_2 = "player_actions_radial"
    L4_2 = L4_2(L5_2)
    L3_2.label = L4_2
    L3_2.icon = "user"
    L3_2.menu = "player_actions"
    L2_2(L3_2)
    L2_2 = lib
    L2_2 = L2_2.registerRadial
    L3_2 = {}
    L3_2.id = "player_actions"
    L3_2.items = L0_2
    L2_2(L3_2)
  end
  L2_2 = #L1_2
  if L2_2 > 0 then
    L2_2 = lib
    L2_2 = L2_2.addRadialItem
    L3_2 = {}
    L3_2.id = "vehicle_actions"
    L4_2 = locale
    L5_2 = "vehicle_actions_radial"
    L4_2 = L4_2(L5_2)
    L3_2.label = L4_2
    L3_2.icon = "car"
    L3_2.menu = "vehicle_actions"
    L2_2(L3_2)
    L2_2 = lib
    L2_2 = L2_2.registerRadial
    L3_2 = {}
    L3_2.id = "vehicle_actions"
    L3_2.items = L1_2
    L2_2(L3_2)
  end
end
L10_1.updateRadial = L11_1
