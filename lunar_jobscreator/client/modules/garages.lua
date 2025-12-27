-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetLabelText
  L2_2 = GetDisplayNameFromVehicleModel
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  if "NULL" == L1_2 then
    L2_2 = GetDisplayNameFromVehicleModel
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  return L1_2
end
function L1_1(A0_2)
  local L1_2
  if 8 == A0_2 then
    L1_2 = "motorcycle"
    return L1_2
  elseif 13 == A0_2 then
    L1_2 = "bicycle"
    return L1_2
  elseif 15 == A0_2 then
    L1_2 = "helicopter"
    return L1_2
  else
    L1_2 = "car"
    return L1_2
  end
end
function L2_1(A0_2)
  local L1_2
  if A0_2 > 75.0 then
    L1_2 = "lime"
    return L1_2
  elseif A0_2 > 50.0 then
    L1_2 = "yellow"
    return L1_2
  elseif A0_2 > 25.0 then
    L1_2 = "orange"
    return L1_2
  else
    L1_2 = "red"
    return L1_2
  end
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L1_2 = L3_2.coords
  L2_2 = L3_2.props
  L3_2 = L2_2.plate
  if L3_2 then
    L3_2 = lib
    L3_2 = L3_2.callback
    L3_2 = L3_2.await
    L4_2 = "lunar_unijob:canSpawnVehicle"
    L5_2 = false
    L6_2 = L2_2.plate
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if not L3_2 then
      L3_2 = LR
      L3_2 = L3_2.notify
      L4_2 = locale
      L5_2 = "cannot_spawn"
      L4_2 = L4_2(L5_2)
      L5_2 = "error"
      L3_2(L4_2, L5_2)
      return
    end
  end
  L3_2 = Framework
  L3_2 = L3_2.spawnVehicle
  L4_2 = L2_2.model
  L5_2 = L1_2
  L6_2 = L1_2.w
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = lib
    L1_3 = L1_3.setVehicleProperties
    L2_3 = A0_3
    L3_3 = L2_2
    L1_3(L2_3, L3_3)
    L1_3 = TaskWarpPedIntoVehicle
    L2_3 = cache
    L2_3 = L2_3.ped
    L3_3 = A0_3
    L4_3 = -1
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = Editable
    L1_3 = L1_3.onVehicleSpawned
    L2_3 = A0_3
    L1_3(L2_3)
    L1_3 = L2_2.plate
    if L1_3 then
      L1_3 = TriggerServerEvent
      L2_3 = "lunar_unijob:vehicleSpawned"
      L3_3 = L2_2.plate
      L4_3 = NetworkGetNetworkIdFromEntity
      L5_3 = A0_3
      L4_3, L5_3 = L4_3(L5_3)
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L1_2 = L3_2.coords
  L2_2 = L3_2.props
  L3_2 = L2_2.plate
  if not L3_2 then
    return
  end
  L3_2 = lib
  L3_2 = L3_2.alertDialog
  L4_2 = {}
  L5_2 = locale
  L6_2 = "retrieve_header"
  L5_2 = L5_2(L6_2)
  L4_2.header = L5_2
  L5_2 = locale
  L6_2 = "retrieve_content"
  L7_2 = Settings
  L7_2 = L7_2.impoundPrice
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.content = L5_2
  L4_2.centered = true
  L4_2.cancel = true
  L3_2 = L3_2(L4_2)
  L3_2 = "confirm" == L3_2
  if not L3_2 then
    return
  end
  L4_2 = lib
  L4_2 = L4_2.callback
  L4_2 = L4_2.await
  L5_2 = "lunar_unijob:canRetrieveVehicle"
  L6_2 = false
  L7_2 = L2_2.plate
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L6_2 = LR
    L6_2 = L6_2.notify
    L7_2 = L5_2 or L7_2
    if not L5_2 then
      L7_2 = locale
      L8_2 = "cannot_spawn"
      L7_2 = L7_2(L8_2)
    end
    L8_2 = "error"
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = Framework
  L6_2 = L6_2.spawnVehicle
  L7_2 = L2_2.model
  L8_2 = L1_2
  L9_2 = L1_2.w
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = lib
    L1_3 = L1_3.setVehicleProperties
    L2_3 = A0_3
    L3_3 = L2_2
    L1_3(L2_3, L3_3)
    L1_3 = TaskWarpPedIntoVehicle
    L2_3 = cache
    L2_3 = L2_3.ped
    L3_3 = A0_3
    L4_3 = -1
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = Editable
    L1_3 = L1_3.onVehicleSpawned
    L2_3 = A0_3
    L1_3(L2_3)
    L1_3 = TriggerServerEvent
    L2_3 = "lunar_unijob:vehicleRetrieved"
    L3_3 = L2_2.plate
    L4_3 = NetworkGetNetworkIdFromEntity
    L5_3 = A0_3
    L4_3, L5_3 = L4_3(L5_3)
    L1_3(L2_3, L3_3, L4_3, L5_3)
  end
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = A0_2
  L1_2 = L3_2.data
  L2_2 = L3_2.location
  L3_2 = {}
  L4_2 = L1_2.vehicles
  if not L4_2 then
    L4_2 = warn
    L5_2 = "No vehicles defined for this garage!"
    L4_2(L5_2)
    return
  end
  L4_2 = ipairs
  L5_2 = L1_2.vehicles
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.props
    if not L10_2 then
      L10_2 = {}
    end
    L11_2 = joaat
    L12_2 = L9_2.model
    L11_2 = L11_2(L12_2)
    L10_2.model = L11_2
    L11_2 = IsModelValid
    L12_2 = L10_2.model
    L11_2 = L11_2(L12_2)
    if L11_2 then
      L11_2 = HasGrade
      L12_2 = L9_2.grade
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = GetVehicleClassFromName
        L12_2 = GetDisplayNameFromVehicleModel
        L13_2 = L10_2.model
        L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2)
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
        L12_2 = {}
        L13_2 = locale
        L14_2 = "vehicle_info_temp"
        L15_2 = L9_2.label
        if not L15_2 then
          L15_2 = L0_1
          L16_2 = L10_2.model
          L15_2 = L15_2(L16_2)
        end
        L13_2 = L13_2(L14_2, L15_2)
        L12_2.title = L13_2
        L13_2 = L1_1
        L14_2 = L11_2
        L13_2 = L13_2(L14_2)
        L12_2.icon = L13_2
        L13_2 = {}
        L14_2 = L2_2.spawnCoords
        L13_2.coords = L14_2
        L13_2.props = L10_2
        L12_2.args = L13_2
        L13_2 = L3_1
        L12_2.onSelect = L13_2
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L3_2
        L15_2 = L12_2
        L13_2(L14_2, L15_2)
      end
    end
  end
  L4_2 = lib
  L4_2 = L4_2.registerContext
  L5_2 = {}
  L5_2.id = "temporary_vehicles"
  L6_2 = locale
  L7_2 = "temporary_vehicles"
  L6_2 = L6_2(L7_2)
  L5_2.title = L6_2
  L5_2.options = L3_2
  L4_2(L5_2)
  L4_2 = lib
  L4_2 = L4_2.showContext
  L5_2 = "temporary_vehicles"
  L4_2(L5_2)
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = A0_2
  L1_2 = L3_2.data
  L2_2 = L3_2.location
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "lunar_unijob:getVehicles"
  L5_2 = false
  L6_2 = L1_2.vehicleType
  L7_2 = L1_2.shared
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = #L3_2
  if 0 == L4_2 then
    L4_2 = LR
    L4_2 = L4_2.notify
    L5_2 = locale
    L6_2 = "no_vehicles"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = {}
  L5_2 = ipairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = json
    L11_2 = L11_2.decode
    L12_2 = L10_2.props
    L11_2 = L11_2(L12_2)
    L12_2 = GetVehicleClassFromName
    L13_2 = GetDisplayNameFromVehicleModel
    L14_2 = L11_2.model
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L13_2(L14_2)
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L13_2 = L11_2.fuelLevel
    if not L13_2 then
      L13_2 = 100.0
    end
    L14_2 = nil
    L15_2 = L1_2.vehicles
    if L15_2 then
      L15_2 = ipairs
      L16_2 = L1_2.vehicles
      L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
      for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
        L21_2 = L20_2.model
        L22_2 = type
        L23_2 = L21_2
        L22_2 = L22_2(L23_2)
        if "string" == L22_2 then
          L22_2 = joaat
          L23_2 = L21_2
          L22_2 = L22_2(L23_2)
          L21_2 = L22_2
        end
        L22_2 = L11_2.model
        if L21_2 == L22_2 then
          L14_2 = L20_2
        end
      end
    end
    L15_2 = {}
    L16_2 = locale
    L17_2 = "vehicle_info"
    L18_2 = L14_2
    if L18_2 then
      L18_2 = L18_2.label
    end
    if not L18_2 then
      L18_2 = L0_1
      L19_2 = L11_2.model
      L18_2 = L18_2(L19_2)
    end
    L19_2 = L11_2.plate
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2.title = L16_2
    L16_2 = L1_1
    L17_2 = L12_2
    L16_2 = L16_2(L17_2)
    L15_2.icon = L16_2
    L16_2 = 13 ~= L12_2 and L16_2
    L15_2.progress = L16_2
    L16_2 = L2_1
    L17_2 = L13_2
    L16_2 = 13 ~= L12_2 and L16_2
    L15_2.colorScheme = L16_2
    L16_2 = {}
    L17_2 = {}
    L18_2 = locale
    L19_2 = "status"
    L18_2 = L18_2(L19_2)
    L17_2.label = L18_2
    L18_2 = locale
    L19_2 = L10_2.state
    L18_2 = L18_2(L19_2)
    L17_2.value = L18_2
    L18_2 = {}
    L19_2 = locale
    L20_2 = "fuel"
    L19_2 = L19_2(L20_2)
    L18_2.label = L19_2
    if 13 ~= L12_2 then
      L19_2 = L13_2
      L20_2 = "%"
      L19_2 = L19_2 .. L20_2
      if L19_2 then
        goto lbl_131
      end
    end
    L19_2 = locale
    L20_2 = "no_fueltank"
    L19_2 = L19_2(L20_2)
    ::lbl_131::
    L18_2.value = L19_2
    L16_2[1] = L17_2
    L16_2[2] = L18_2
    L15_2.metadata = L16_2
    L16_2 = {}
    L17_2 = L2_2.spawnCoords
    L16_2.coords = L17_2
    L16_2.props = L11_2
    L15_2.args = L16_2
    L16_2 = L10_2.state
    if "in_garage" == L16_2 then
      L16_2 = L3_1
      if L16_2 then
        goto lbl_153
      end
    end
    L16_2 = L10_2.state
    if "outside" == L16_2 then
      function L16_2()
        local L0_3, L1_3, L2_3
        L0_3 = LR
        L0_3 = L0_3.notify
        L1_3 = locale
        L2_3 = "not_in_garage"
        L1_3 = L1_3(L2_3)
        L2_3 = "error"
        L0_3(L1_3, L2_3)
      end
      if L16_2 then
        goto lbl_153
      end
    end
    L16_2 = L4_1
    ::lbl_153::
    L15_2.onSelect = L16_2
    L16_2 = table
    L16_2 = L16_2.insert
    L17_2 = L4_2
    L18_2 = L15_2
    L16_2(L17_2, L18_2)
  end
  L5_2 = #L4_2
  if 0 == L5_2 then
    L5_2 = LR
    L5_2 = L5_2.notify
    L6_2 = locale
    L7_2 = "no_vehicles"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = lib
  L5_2 = L5_2.registerContext
  L6_2 = {}
  L6_2.id = "garage_vehicles"
  L7_2 = L1_2.label
  if not L7_2 then
    L7_2 = locale
    L8_2 = "garage_vehicles"
    L7_2 = L7_2(L8_2)
  end
  L6_2.title = L7_2
  L6_2.options = L4_2
  L5_2(L6_2)
  L5_2 = lib
  L5_2 = L5_2.showContext
  L6_2 = "garage_vehicles"
  L5_2(L6_2)
end
L7_1 = nil
L8_1 = nil
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = DeleteEntity
  L1_2 = L7_1
  L0_2(L1_2)
  L0_2 = SetEntityCoords
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = L8_1.x
  L3_2 = L8_1.y
  L4_2 = L8_1.z
  L4_2 = L4_2 - 1.0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = Editable
  L1_2 = L1_2.getPaymentMethods
  L1_2 = L1_2()
  L2_2 = lib
  L2_2 = L2_2.inputDialog
  L3_2 = locale
  L4_2 = "buy_vehicle"
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = {}
  L5_2.type = "select"
  L6_2 = locale
  L7_2 = "payment_method"
  L6_2 = L6_2(L7_2)
  L5_2.label = L6_2
  L5_2.options = L1_2
  L6_2 = L1_2[1]
  L6_2 = L6_2.value
  L5_2.default = L6_2
  L5_2.required = true
  L4_2[1] = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L2_2[1]
  end
  if not L2_2 then
    L3_2 = lib
    L3_2 = L3_2.showMenu
    L4_2 = "preview_vehicle"
    L3_2(L4_2)
    return
  end
  L6_2 = A0_2
  L3_2 = L6_2.index
  L4_2 = L6_2.vehicleIndex
  L5_2 = L6_2.props
  L6_2 = lib
  L6_2 = L6_2.callback
  L6_2 = L6_2.await
  L7_2 = "lunar_unijob:buyVehicle"
  L8_2 = false
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = L5_2
  L12_2 = L2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L6_2 then
    L7_2 = LR
    L7_2 = L7_2.notify
    L8_2 = locale
    L9_2 = "bought_vehicle"
    L8_2 = L8_2(L9_2)
    L9_2 = "success"
    L7_2(L8_2, L9_2)
  else
    L7_2 = LR
    L7_2 = L7_2.notify
    L8_2 = locale
    L9_2 = "not_enough_"
    L10_2 = L2_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2(L9_2)
    L9_2 = "error"
    L7_2(L8_2, L9_2)
  end
  L7_2 = L9_1
  L7_2()
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = A0_2
  L1_2 = L5_2.coords
  L2_2 = L5_2.index
  L3_2 = L5_2.vehicleIndex
  L4_2 = L5_2.props
  L5_2 = GetCurrentJob
  L5_2 = L5_2()
  L5_2 = L5_2.garages
  L5_2 = L5_2[L2_2]
  L5_2 = L5_2.vehicles
  L5_2 = L5_2[L3_2]
  L6_2 = GetEntityCoords
  L7_2 = cache
  L7_2 = L7_2.ped
  L6_2 = L6_2(L7_2)
  L8_1 = L6_2
  L6_2 = Framework
  L6_2 = L6_2.spawnLocalVehicle
  L7_2 = L4_2.model
  L8_2 = L1_2
  L9_2 = L1_2.w
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = lib
    L1_3 = L1_3.setVehicleProperties
    L2_3 = A0_3
    L3_3 = L4_2
    L1_3(L2_3, L3_3)
    L1_3 = SetVehicleOnGroundProperly
    L2_3 = A0_3
    L1_3(L2_3)
    L1_3 = FreezeEntityPosition
    L2_3 = A0_3
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = TaskWarpPedIntoVehicle
    L2_3 = cache
    L2_3 = L2_3.ped
    L3_3 = A0_3
    L4_3 = -1
    L1_3(L2_3, L3_3, L4_3)
    L7_1 = A0_3
  end
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = Wait
  L7_2 = 60
  L6_2(L7_2)
  L6_2 = lib
  L6_2 = L6_2.registerMenu
  L7_2 = {}
  L7_2.id = "preview_vehicle"
  L8_2 = L5_2.label
  if not L8_2 then
    L8_2 = L0_1
    L9_2 = L4_2.model
    L8_2 = L8_2(L9_2)
  end
  L7_2.title = L8_2
  function L8_2()
    local L0_3, L1_3
    L0_3 = L9_1
    L0_3()
    L0_3 = lib
    L0_3 = L0_3.showContext
    L1_3 = "buy_vehicles"
    L0_3(L1_3)
  end
  L7_2.onClose = L8_2
  L7_2.menu = "buy_vehicles"
  L8_2 = {}
  L9_2 = {}
  L10_2 = locale
  L11_2 = "vehicle_price"
  L12_2 = L5_2.price
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.label = L10_2
  L9_2.icon = "dollar-sign"
  L9_2.close = false
  L10_2 = {}
  L11_2 = locale
  L12_2 = "buy_vehicle"
  L11_2 = L11_2(L12_2)
  L10_2.label = L11_2
  L10_2.icon = "shopping-basket"
  L11_2 = {}
  L11_2.index = L2_2
  L11_2.vehicleIndex = L3_2
  L11_2.props = L4_2
  L10_2.args = L11_2
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L7_2.options = L8_2
  function L8_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3
    if 2 == A0_3 then
      L3_3 = L10_1
      L4_3 = A2_3
      L3_3(L4_3)
    end
  end
  L6_2(L7_2, L8_2)
  L6_2 = lib
  L6_2 = L6_2.showMenu
  L7_2 = "preview_vehicle"
  L6_2(L7_2)
end
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = A0_2
  L1_2 = L4_2.index
  L2_2 = L4_2.data
  L3_2 = L4_2.location
  L4_2 = {}
  L5_2 = L2_2.vehicles
  if not L5_2 then
    L5_2 = warn
    L6_2 = "No vehicles defined for this garage!"
    L5_2(L6_2)
    return
  end
  L5_2 = ipairs
  L6_2 = L2_2.vehicles
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.props
    if not L11_2 then
      L11_2 = {}
    end
    L12_2 = joaat
    L13_2 = L10_2.model
    L12_2 = L12_2(L13_2)
    L11_2.model = L12_2
    L12_2 = IsModelValid
    L13_2 = L11_2.model
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L12_2 = L10_2.price
      if L12_2 then
        L12_2 = HasGrade
        L13_2 = L10_2.grade
        L12_2 = L12_2(L13_2)
        if L12_2 then
          L12_2 = GetVehicleClassFromName
          L13_2 = GetDisplayNameFromVehicleModel
          L14_2 = L11_2.model
          L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2)
          L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
          L13_2 = {}
          L14_2 = locale
          L15_2 = "vehicle_info_buy"
          L16_2 = L10_2.label
          if not L16_2 then
            L16_2 = L0_1
            L17_2 = L11_2.model
            L16_2 = L16_2(L17_2)
          end
          L14_2 = L14_2(L15_2, L16_2)
          L13_2.title = L14_2
          L14_2 = locale
          L15_2 = "vehicle_price_desc"
          L16_2 = L10_2.price
          L14_2 = L14_2(L15_2, L16_2)
          L13_2.description = L14_2
          L14_2 = L1_1
          L15_2 = L12_2
          L14_2 = L14_2(L15_2)
          L13_2.icon = L14_2
          L14_2 = L11_1
          L13_2.onSelect = L14_2
          L14_2 = {}
          L15_2 = L3_2.spawnCoords
          L14_2.coords = L15_2
          L14_2.index = L1_2
          L14_2.vehicleIndex = L9_2
          L14_2.props = L11_2
          L13_2.args = L14_2
          L14_2 = table
          L14_2 = L14_2.insert
          L15_2 = L4_2
          L16_2 = L13_2
          L14_2(L15_2, L16_2)
        end
      end
    end
  end
  L5_2 = lib
  L5_2 = L5_2.registerContext
  L6_2 = {}
  L6_2.id = "buy_vehicles"
  L7_2 = locale
  L8_2 = "buy_vehicles"
  L7_2 = L7_2(L8_2)
  L6_2.title = L7_2
  L6_2.options = L4_2
  L5_2(L6_2)
  L5_2 = lib
  L5_2 = L5_2.showContext
  L6_2 = "buy_vehicles"
  L5_2(L6_2)
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = A0_2
  L1_2 = L4_2.data
  L2_2 = L4_2.index
  L3_2 = L4_2.locationIndex
  L4_2 = L1_2.locations
  L4_2 = L4_2[L3_2]
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = GetVehicleNumberOfPassengers
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if L1_3 > 0 then
      L1_3 = cache
      L1_3 = L1_3.vehicle
      if L1_3 ~= A0_3 then
        L1_3 = false
        return L1_3
      end
    end
    L1_3 = GetEntityModel
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = ipairs
    L3_3 = L1_2.vehicles
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = type
      L9_3 = L7_3.model
      L8_3 = L8_3(L9_3)
      if "string" == L8_3 then
        L8_3 = joaat
        L9_3 = L7_3.model
        L8_3 = L8_3(L9_3)
        if L8_3 then
          goto lbl_30
        end
      end
      L8_3 = L7_3.model
      ::lbl_30::
      if L1_3 == L8_3 then
        L8_3 = true
        return L8_3
      end
    end
    L2_3 = false
    return L2_3
  end
  L6_2 = lib
  L6_2 = L6_2.getNearbyVehicles
  L7_2 = L4_2.spawnCoords
  L7_2 = L7_2.xyz
  L8_2 = L1_2.saveRadius
  L9_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = nil
  L8_2 = nil
  L9_2 = cache
  L9_2 = L9_2.vehicle
  if L9_2 then
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L6_2
    L11_2 = 1
    L12_2 = {}
    L13_2 = cache
    L13_2 = L13_2.vehicle
    L12_2.vehicle = L13_2
    L9_2(L10_2, L11_2, L12_2)
  end
  L9_2 = ipairs
  L10_2 = L6_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = L14_2.vehicle
    L16_2 = L5_2
    L17_2 = L15_2
    L16_2 = L16_2(L17_2)
    if L16_2 then
      L16_2 = GetEntityCoords
      L17_2 = L15_2
      L16_2 = L16_2(L17_2)
      L17_2 = L4_2.spawnCoords
      L17_2 = L17_2.xyz
      L16_2 = L16_2 - L17_2
      L16_2 = #L16_2
      if not L7_2 or L8_2 > L16_2 then
        L7_2 = L15_2
        L8_2 = L16_2
      end
    end
  end
  if not L7_2 then
    L9_2 = LR
    L9_2 = L9_2.notify
    L10_2 = locale
    L11_2 = "no_vehicle_to_save"
    L10_2 = L10_2(L11_2)
    L11_2 = "error"
    L9_2(L10_2, L11_2)
    return
  end
  L9_2 = NetworkGetNetworkIdFromEntity
  L10_2 = L7_2
  L9_2 = L9_2(L10_2)
  L10_2 = Editable
  L10_2 = L10_2.onVehicleSaved
  if L10_2 then
    L10_2 = Editable
    L10_2 = L10_2.onVehicleSaved
    L11_2 = L7_2
    L10_2(L11_2)
  end
  L10_2 = TriggerServerEvent
  L11_2 = "lunar_unijob:saveTemporaryVehicle"
  L12_2 = L9_2
  L13_2 = L2_2
  L14_2 = L3_2
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = TaskLeaveVehicle
  L11_2 = cache
  L11_2 = L11_2.ped
  L12_2 = cache
  L12_2 = L12_2.vehicle
  L13_2 = 64
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = LR
  L10_2 = L10_2.notify
  L11_2 = locale
  L12_2 = "vehicle_saved"
  L11_2 = L11_2(L12_2)
  L12_2 = "success"
  L10_2(L11_2, L12_2)
end
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = A0_2
  L1_2 = L3_2.data
  L2_2 = L3_2.locationIndex
  L3_2 = L1_2.locations
  L3_2 = L3_2[L2_2]
  L4_2 = {}
  L5_2 = lib
  L5_2 = L5_2.getClosestVehicle
  L6_2 = L3_2.spawnCoords
  L6_2 = L6_2.xyz
  L7_2 = L1_2.saveRadius
  L8_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = GetVehiclePedIsIn
  L7_2 = cache
  L7_2 = L7_2.ped
  L8_2 = true
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L6_2(L7_2, L8_2)
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L4_2[5] = L9_2
  L4_2[6] = L10_2
  L4_2[7] = L11_2
  L4_2[8] = L12_2
  L4_2[9] = L13_2
  L4_2[10] = L14_2
  L4_2[11] = L15_2
  L4_2[12] = L16_2
  L4_2[13] = L17_2
  L4_2[14] = L18_2
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = lib
    L11_2 = L11_2.getVehicleProperties
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L12_2 = DoesEntityExist
    L13_2 = L10_2
    L12_2 = L12_2(L13_2)
    if L12_2 and L11_2 then
      L12_2 = NetworkGetNetworkIdFromEntity
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
      L13_2 = L11_2.plate
      L14_2 = L13_2
      L13_2 = L13_2.strtrim
      L15_2 = " "
      L13_2 = L13_2(L14_2, L15_2)
      L11_2.plate = L13_2
      L13_2 = lib
      L13_2 = L13_2.callback
      L13_2 = L13_2.await
      L14_2 = "lunar_unijob:saveVehicle"
      L15_2 = false
      L16_2 = L12_2
      L17_2 = L11_2
      L18_2 = L1_2.vehicleType
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
      if L13_2 then
        L14_2 = Editable
        L14_2 = L14_2.onVehicleSaved
        if L14_2 then
          L14_2 = Editable
          L14_2 = L14_2.onVehicleSaved
          L15_2 = L10_2
          L14_2(L15_2)
        end
        L14_2 = cache
        L14_2 = L14_2.vehicle
        if L14_2 then
          L14_2 = TaskLeaveVehicle
          L15_2 = cache
          L15_2 = L15_2.ped
          L16_2 = L10_2
          L17_2 = 64
          L14_2(L15_2, L16_2, L17_2)
        end
        L14_2 = LR
        L14_2 = L14_2.notify
        L15_2 = locale
        L16_2 = "vehicle_saved"
        L15_2 = L15_2(L16_2)
        L16_2 = "success"
        L14_2(L15_2, L16_2)
        return
      end
    end
  end
end
L15_1 = {}
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = A0_2.garages
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2.garages
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = ipairs
    L8_2 = L6_2.locations
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = {}
      L14_2 = {}
      L15_2 = locale
      L16_2 = "open_garage"
      L15_2 = L15_2(L16_2)
      L14_2.label = L15_2
      L14_2.icon = "warehouse"
      L15_2 = L6_2.type
      if "temporary" == L15_2 then
        L15_2 = L5_1
        if L15_2 then
          goto lbl_29
        end
      end
      L15_2 = L6_1
      ::lbl_29::
      L14_2.onSelect = L15_2
      L15_2 = {}
      L15_2.data = L6_2
      L15_2.location = L12_2
      L14_2.args = L15_2
      function L15_2()
        local L0_3, L1_3
        L0_3 = cache
        L0_3 = L0_3.vehicle
        L0_3 = false == L0_3
        return L0_3
      end
      L14_2.canInteract = L15_2
      L13_2[1] = L14_2
      L14_2 = L6_2.type
      if "buy" == L14_2 then
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L13_2
        L16_2 = {}
        L17_2 = locale
        L18_2 = "buy_garage"
        L17_2 = L17_2(L18_2)
        L16_2.label = L17_2
        L16_2.icon = "car"
        L17_2 = L12_1
        L16_2.onSelect = L17_2
        L17_2 = {}
        L17_2.index = L5_2
        L17_2.data = L6_2
        L17_2.location = L12_2
        L16_2.args = L17_2
        function L17_2()
          local L0_3, L1_3
          L0_3 = cache
          L0_3 = L0_3.vehicle
          L0_3 = false == L0_3
          return L0_3
        end
        L16_2.canInteract = L17_2
        L14_2(L15_2, L16_2)
      end
      L14_2 = Config
      L14_2 = L14_2.forceSaveVehicleOption
      if L14_2 then
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L13_2
        L16_2 = {}
        L17_2 = locale
        L18_2 = "save_vehicle"
        L17_2 = L17_2(L18_2)
        L16_2.label = L17_2
        L16_2.icon = "floppy-disk"
        L17_2 = L6_2.type
        if "temporary" == L17_2 then
          L17_2 = L13_1
          if L17_2 then
            goto lbl_83
          end
        end
        L17_2 = L14_1
        ::lbl_83::
        L16_2.onSelect = L17_2
        L17_2 = {}
        L17_2.data = L6_2
        L17_2.index = L5_2
        L17_2.locationIndex = L11_2
        L16_2.args = L17_2
        L14_2(L15_2, L16_2)
      end
      L14_2 = L12_2.coords
      if L14_2 then
        L14_2 = Utils
        L14_2 = L14_2.createInteractionPoint
        L15_2 = {}
        L16_2 = L12_2.coords
        L15_2.coords = L16_2
        L16_2 = L6_2.radius
        L15_2.radius = L16_2
        L15_2.options = L13_2
        L16_2 = L6_2.target
        L14_2 = L14_2(L15_2, L16_2)
        L15_2 = table
        L15_2 = L15_2.insert
        L16_2 = L15_1
        L17_2 = L14_2
        L15_2(L16_2, L17_2)
        L15_2 = Config
        L15_2 = L15_2.forceSaveVehicleOption
        if not L15_2 then
          L15_2 = Utils
          L15_2 = L15_2.createInteractionPoint
          L16_2 = {}
          L17_2 = L12_2.coords
          L16_2.coords = L17_2
          L17_2 = L6_2.saveRadius
          L16_2.radius = L17_2
          L17_2 = {}
          L18_2 = {}
          L19_2 = locale
          L20_2 = "save_vehicle"
          L19_2 = L19_2(L20_2)
          L18_2.label = L19_2
          L18_2.icon = "floppy-disk"
          L19_2 = L6_2.type
          if "temporary" == L19_2 then
            L19_2 = L13_1
            if L19_2 then
              goto lbl_138
            end
          end
          L19_2 = L14_1
          ::lbl_138::
          L18_2.onSelect = L19_2
          function L19_2()
            local L0_3, L1_3
            L0_3 = cache
            L0_3 = L0_3.vehicle
            L0_3 = false ~= L0_3
            return L0_3
          end
          L18_2.canInteract = L19_2
          L19_2 = {}
          L19_2.data = L6_2
          L19_2.index = L5_2
          L19_2.locationIndex = L11_2
          L18_2.args = L19_2
          L17_2[1] = L18_2
          L16_2.options = L17_2
          L15_2 = L15_2(L16_2)
          L16_2 = table
          L16_2 = L16_2.insert
          L17_2 = L15_1
          L18_2 = L15_2
          L16_2(L17_2, L18_2)
        end
      end
    end
  end
end
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ipairs
  L1_2 = L15_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.remove
    L6_2()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L15_1
  L0_2(L1_2)
end
L18_1 = {}
L18_1.create = L16_1
L18_1.clear = L17_1
Garages = L18_1
