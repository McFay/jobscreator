local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
L0_1 = {}
L1_1 = false
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  return L0_2
end
GetJobs = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L1_1
  return L0_2
end
AreJobsLoaded = L2_1
L2_1 = {}
L3_1 = Alarms
L4_1 = Collecting
L5_1 = Crafting
L6_1 = Garages
L7_1 = Selling
L8_1 = Shops
L9_1 = Stashes
L10_1 = Registers
L11_1 = AnimationZones
L12_1 = MusicPlayers
L13_1 = AdvancedCollecting
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L2_1[8] = L10_1
L2_1[9] = L11_1
L2_1[10] = L12_1
L2_1[11] = L13_1
L3_1 = {}
L4_1 = RegisterNetEvent
L5_1 = "lunar_unijob:requestJobs"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = source
  L1_2 = L3_1
  L1_2 = L1_2[L0_2]
  if not L1_2 then
    L1_2 = L3_1
    L1_2[L0_2] = true
    while true do
      L1_2 = L1_1
      if L1_2 then
        break
      end
      L1_2 = Wait
      L2_2 = 0
      L1_2(L2_2)
    end
    L1_2 = TriggerLatentClientEvent
    L2_2 = "lunar_unijob:syncJobs"
    L3_2 = L0_2
    L4_2 = 50000
    L5_2 = L0_1
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L4_1(L5_1, L6_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = MySQL
  L1_2 = L1_2.update
  L1_2 = L1_2.await
  L2_2 = "DELETE FROM jobs WHERE name = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = MySQL
  L1_2 = L1_2.update
  L1_2 = L1_2.await
  L2_2 = "DELETE FROM job_grades WHERE job_name = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = MySQL
  L1_2 = L1_2.query
  L1_2 = L1_2.await
  L2_2 = [[
        SELECT COUNT(*) as count
        FROM information_schema.columns
        WHERE table_schema = DATABASE()
        AND table_name = 'job_grades'
        AND column_name = 'id'
        AND extra LIKE '%auto_increment%'
        AND column_key = 'PRI';
    ]]
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2[1]
  L2_2 = L2_2.count
  if 0 == L2_2 then
    L3_2 = MySQL
    L3_2 = L3_2.query
    L3_2 = L3_2.await
    L4_2 = "ALTER TABLE job_grades MODIFY COLUMN id INT AUTO_INCREMENT PRIMARY KEY;"
    L3_2(L4_2)
  end
  L3_2 = MySQL
  L3_2 = L3_2.query
  L3_2 = L3_2.await
  L4_2 = "ALTER TABLE job_grades AUTO_INCREMENT = 1;"
  L3_2(L4_2)
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = Config
  L2_2 = L2_2.registerJobInFramework
  if not L2_2 then
    return
  end
  L2_2 = Framework
  L2_2 = L2_2.name
  if "es_extended" == L2_2 then
    L2_2 = "society_"
    L3_2 = A0_2.name
    L2_2 = L2_2 .. L3_2
    L3_2 = GetResourceState
    L4_2 = "esx_addonaccount"
    L3_2 = L3_2(L4_2)
    if "started" == L3_2 then
      L3_2 = MySQL
      L3_2 = L3_2.insert
      L3_2 = L3_2.await
      L4_2 = "INSERT IGNORE INTO addon_account (name, label, shared) VALUES (?, ?, 1)"
      L5_2 = {}
      L6_2 = L2_2
      L7_2 = A0_2.label
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L3_2(L4_2, L5_2)
      L3_2 = MySQL
      L3_2 = L3_2.update
      L3_2 = L3_2.await
      L4_2 = "UPDATE addon_account SET label = ? WHERE name = ?"
      L5_2 = {}
      L6_2 = A0_2.label
      L7_2 = L2_2
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L3_2(L4_2, L5_2)
    end
    L3_2 = GetResourceState
    L4_2 = "esx_datastore"
    L3_2 = L3_2(L4_2)
    if "started" == L3_2 then
      L3_2 = MySQL
      L3_2 = L3_2.insert
      L3_2 = L3_2.await
      L4_2 = "INSERT IGNORE INTO datastore (name, label, shared) VALUES (?, ?, 1)"
      L5_2 = {}
      L6_2 = L2_2
      L7_2 = A0_2.label
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L3_2(L4_2, L5_2)
      L3_2 = MySQL
      L3_2 = L3_2.update
      L3_2 = L3_2.await
      L4_2 = "UPDATE datastore SET label = ? WHERE name = ?"
      L5_2 = {}
      L6_2 = A0_2.label
      L7_2 = L2_2
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L3_2(L4_2, L5_2)
    end
    if not A1_2 then
      L3_2 = L4_1
      L4_2 = A0_2.name
      L3_2(L4_2)
    end
    L3_2 = MySQL
    L3_2 = L3_2.insert
    L3_2 = L3_2.await
    L4_2 = "INSERT INTO jobs (name, label, whitelisted) VALUES(?, ?, ?)"
    L5_2 = {}
    L6_2 = A0_2.name
    L7_2 = A0_2.label
    L8_2 = A0_2.whitelisted
    if not L8_2 then
      L8_2 = false
    end
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L3_2(L4_2, L5_2)
    L3_2 = pairs
    L4_2 = A0_2.grades
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = MySQL
      L9_2 = L9_2.insert
      L9_2 = L9_2.await
      L10_2 = "INSERT INTO job_grades (job_name, grade, name, label, salary, skin_male, skin_female) VALUES(?, ?, ?, ?, ?, ?, ?)"
      L11_2 = {}
      L12_2 = A0_2.name
      L13_2 = L7_2 - 1
      L14_2 = L8_2.name
      L15_2 = L8_2.label
      L16_2 = L8_2.salary
      L17_2 = "{}"
      L18_2 = "{}"
      L11_2[1] = L12_2
      L11_2[2] = L13_2
      L11_2[3] = L14_2
      L11_2[4] = L15_2
      L11_2[5] = L16_2
      L11_2[6] = L17_2
      L11_2[7] = L18_2
      L9_2(L10_2, L11_2)
    end
    L3_2 = Framework
    L3_2 = L3_2.object
    L3_2 = L3_2.RefreshJobs
    L3_2()
    L3_2 = TriggerEvent
    L4_2 = "esx_society:registerSociety"
    L5_2 = A0_2.name
    L6_2 = A0_2.label
    L7_2 = L2_2
    L8_2 = L2_2
    L9_2 = L2_2
    L10_2 = {}
    L10_2.type = "public"
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L2_2 = Framework
    L2_2 = L2_2.name
    if "qb-core" == L2_2 then
      L2_2 = GetResourceState
      L3_2 = "qbx_core"
      L2_2 = L2_2(L3_2)
      L2_2 = "started" == L2_2
      L3_2 = {}
      L4_2 = A0_2.label
      L3_2.label = L4_2
      L4_2 = A0_2.type
      L3_2.type = L4_2
      L4_2 = A0_2.defaultDuty
      if nil ~= L4_2 then
        L4_2 = A0_2.defaultDuty
        if L4_2 then
          goto lbl_145
        end
      end
      L4_2 = true
      ::lbl_145::
      L3_2.defaultDuty = L4_2
      L4_2 = A0_2.offDutyPay
      if not L4_2 then
        L4_2 = false
      end
      L3_2.offDutyPay = L4_2
      L4_2 = {}
      L3_2.grades = L4_2
      L4_2 = ipairs
      L5_2 = A0_2.grades
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L3_2.grades
        if L2_2 then
          L11_2 = L8_2 - 1
          if L11_2 then
            goto lbl_169
          end
        end
        L11_2 = tostring
        L12_2 = L8_2 - 1
        L11_2 = L11_2(L12_2)
        ::lbl_169::
        L12_2 = {}
        L13_2 = L9_2.label
        L12_2.name = L13_2
        L13_2 = L9_2.salary
        L12_2.payment = L13_2
        L13_2 = L9_2.bossActions
        L12_2.isboss = L13_2
        L10_2[L11_2] = L12_2
      end
      L4_2 = exports
      L4_2 = L4_2["qb-core"]
      L5_2 = L4_2
      L4_2 = L4_2.RemoveJob
      L6_2 = A0_2.name
      L4_2(L5_2, L6_2)
      L4_2 = exports
      L4_2 = L4_2["qb-core"]
      L5_2 = L4_2
      L4_2 = L4_2.AddJob
      L6_2 = A0_2.name
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = LoadResourceFile
  L2_2 = cache
  L2_2 = L2_2.resource
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 or "" == L1_2 then
    L2_2 = warn
    L3_2 = "Couldn't load %s. (File doesn't exist or is empty)"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = A0_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L2_2 = false
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.sub
  L4_2 = 1
  L5_2 = 12
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if "---@type Job" ~= L2_2 then
    L2_2 = warn
    L3_2 = "Ignoring %s/%s because of a invalid file structure. (Check the docs)"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = A0_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = Parser
  L2_2 = L2_2.parse
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 then
    L5_2 = L3_2.name
    L4_2 = L0_1
    L4_2 = L4_2[L5_2]
    if L4_2 then
      L4_2 = warn
      L5_2 = "Ignoring %s job, a job with this name already exists."
      L6_2 = L5_2
      L5_2 = L5_2.format
      L7_2 = L3_2.name
      L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L4_2 = false
      return L4_2
    end
    L4_2 = pcall
    L5_2 = L5_1
    L6_2 = L3_2
    L4_2, L5_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      L6_2 = warn
      L7_2 = "Couldn't register %s in your framework due to an error."
      L8_2 = L7_2
      L7_2 = L7_2.format
      L9_2 = L3_2.name
      L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = warn
      L7_2 = L5_2
      L6_2(L7_2)
      L6_2 = false
      return L6_2
    end
    L7_2 = L3_2.name
    L6_2 = L0_1
    L6_2[L7_2] = L3_2
    L6_2 = true
    return L6_2
  else
    L4_2 = warn
    L6_2 = L3_2
    L5_2 = L3_2.format
    L7_2 = A0_2
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = false
    return L4_2
  end
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2.sub
  L4_2 = 1
  L5_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2 = "/" == L2_2
  if not L2_2 then
    L3_2 = io
    L3_2 = L3_2.popen
    L4_2 = "dir \""
    L5_2 = A0_2
    L6_2 = "\" /b"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L5_2 = L3_2
      L4_2 = L3_2.lines
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L8_2
        L9_2 = L8_2.find
        L11_2 = ".lua"
        L9_2 = L9_2(L10_2, L11_2)
        if L9_2 then
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L1_2
          L11_2 = L8_2
          L9_2(L10_2, L11_2)
        end
      end
      L5_2 = L3_2
      L4_2 = L3_2.close
      L4_2(L5_2)
    end
  else
    L3_2 = io
    L3_2 = L3_2.popen
    L4_2 = "ls \""
    L5_2 = A0_2
    L6_2 = "\""
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L5_2 = L3_2
      L4_2 = L3_2.read
      L6_2 = "*all"
      L4_2 = L4_2(L5_2, L6_2)
      L6_2 = L4_2
      L5_2 = L4_2.gmatch
      L7_2 = "[^%s]+"
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
      for L9_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = L9_2
        L10_2 = L9_2.find
        L12_2 = ".lua"
        L10_2 = L10_2(L11_2, L12_2)
        if L10_2 then
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L1_2
          L12_2 = L9_2
          L10_2(L11_2, L12_2)
        end
      end
      L6_2 = L3_2
      L5_2 = L3_2.close
      L5_2(L6_2)
    end
  end
  return L1_2
end
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = {}
    L7_2 = locale
    L8_2 = "open_boss_menu"
    L7_2 = L7_2(L8_2)
    L6_2.bossMenus = L7_2
    L7_2 = locale
    L8_2 = "open_cloakroom"
    L7_2 = L7_2(L8_2)
    L6_2.cloakrooms = L7_2
    L7_2 = locale
    L8_2 = "start_collecting"
    L7_2 = L7_2(L8_2)
    L6_2.collecting = L7_2
    L7_2 = locale
    L8_2 = "start_collecting"
    L7_2 = L7_2(L8_2)
    L6_2.advancedCollecting = L7_2
    L7_2 = locale
    L8_2 = "crafting"
    L7_2 = L7_2(L8_2)
    L6_2.crafting = L7_2
    L7_2 = locale
    L8_2 = "open_garage"
    L7_2 = L7_2(L8_2)
    L6_2.garages = L7_2
    L7_2 = locale
    L8_2 = "selling"
    L7_2 = L7_2(L8_2)
    L6_2.selling = L7_2
    L7_2 = locale
    L8_2 = "shop"
    L7_2 = L7_2(L8_2)
    L6_2.shops = L7_2
    L7_2 = locale
    L8_2 = "open_stash"
    L7_2 = L7_2(L8_2)
    L6_2.stashes = L7_2
    L7_2 = locale
    L8_2 = "trigger_alarm"
    L7_2 = L7_2(L8_2)
    L6_2.alarms = L7_2
    L7_2 = locale
    L8_2 = "register_header"
    L7_2 = L7_2(L8_2)
    L6_2.registers = L7_2
    L7_2 = locale
    L8_2 = "music_player"
    L7_2 = L7_2(L8_2)
    L6_2.musicPlayers = L7_2
    L7_2 = {}
    L7_2.bossMenus = "briefcase"
    L7_2.cloakrooms = "shirt"
    L7_2.collecting = "hand"
    L7_2.advancedCollecting = "hand"
    L7_2.crafting = "screwdriver-wrench"
    L7_2.garages = "warehouse"
    L7_2.selling = "dollar-sign"
    L7_2.shops = "shopping-cart"
    L7_2.stashes = "box"
    L7_2.alarms = "bell"
    L7_2.registers = "cash-register"
    L7_2.animationZones = "running"
    L7_2.musicPlayers = "music"
    L7_2.teleports = "door-open"
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = L5_2[L12_2]
      if L14_2 then
        L14_2 = ipairs
        L15_2 = L5_2[L12_2]
        L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
        for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
          L20_2 = L19_2.label
          if not L20_2 then
            L20_2 = L6_2[L12_2]
            if L20_2 then
              L20_2 = L6_2[L12_2]
              L19_2.label = L20_2
            end
          end
          L20_2 = L19_2.icon
          if not L20_2 then
            L19_2.icon = L13_2
          end
          L20_2 = L19_2.radius
          if not L20_2 then
            L19_2.radius = 1.25
          end
          L20_2 = L19_2.duration
          if not L20_2 and "animationZones" ~= L12_2 then
            L19_2.duration = 3000
          end
          L20_2 = L19_2.prop
          if L20_2 then
            L20_2 = lib
            L20_2 = L20_2.table
            L20_2 = L20_2.type
            L21_2 = L19_2.prop
            L20_2 = L20_2(L21_2)
            if "hash" == L20_2 then
              L20_2 = {}
              L21_2 = L19_2.prop
              L20_2[1] = L21_2
              L19_2.prop = L20_2
            end
          end
          L20_2 = L19_2.ped
          if L20_2 then
            L20_2 = lib
            L20_2 = L20_2.table
            L20_2 = L20_2.type
            L21_2 = L19_2.ped
            L20_2 = L20_2(L21_2)
            if "hash" == L20_2 then
              L20_2 = {}
              L21_2 = L19_2.ped
              L20_2[1] = L21_2
              L19_2.ped = L20_2
            end
          end
        end
      end
    end
    L8_2 = L5_2.collecting
    if L8_2 then
      L8_2 = pairs
      L9_2 = L5_2.collecting
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = pairs
        L15_2 = L13_2.items
        if not L15_2 then
          L15_2 = {}
        end
        L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
        for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
          L20_2 = type
          L21_2 = L19_2.count
          L20_2 = L20_2(L21_2)
          if "number" == L20_2 then
            L20_2 = {}
            L21_2 = L19_2.count
            L20_2.min = L21_2
            L21_2 = L19_2.count
            L20_2.max = L21_2
            L19_2.count = L20_2
          end
        end
      end
    end
    L8_2 = L5_2.advancedCollecting
    if L8_2 then
      L8_2 = pairs
      L9_2 = L5_2.advancedCollecting
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = pairs
        L15_2 = L13_2.items
        if not L15_2 then
          L15_2 = {}
        end
        L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
        for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
          L20_2 = type
          L21_2 = L19_2.count
          L20_2 = L20_2(L21_2)
          if "number" == L20_2 then
            L20_2 = {}
            L21_2 = L19_2.count
            L20_2.min = L21_2
            L21_2 = L19_2.count
            L20_2.max = L21_2
            L19_2.count = L20_2
          end
        end
      end
    end
    L8_2 = L5_2.shops
    if L8_2 then
      L8_2 = pairs
      L9_2 = L5_2.shops
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = pairs
        L15_2 = L13_2.items
        if not L15_2 then
          L15_2 = {}
        end
        L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
        for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
          L20_2 = L19_2.currency
          if not L20_2 then
            L19_2.currency = "money"
          end
          L20_2 = L19_2.grade
          if not L20_2 then
            L19_2.grade = 0
          end
        end
      end
    end
    L8_2 = L5_2.crafting
    if L8_2 then
      L8_2 = pairs
      L9_2 = L5_2.crafting
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = pairs
        L15_2 = L13_2.entries
        if not L15_2 then
          L15_2 = {}
        end
        L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
        for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
          L20_2 = L19_2.animation
          if L20_2 then
            L20_2 = L19_2.animation
            L13_2.animation = L20_2
            L20_2 = L19_2.animationProp
            L13_2.animationProp = L20_2
            break
          end
        end
      end
    end
    L8_2 = {}
    L9_2 = "crafting"
    L10_2 = "garages"
    L11_2 = "selling"
    L12_2 = "shops"
    L13_2 = "stashes"
    L14_2 = "teleports"
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L8_2[3] = L11_2
    L8_2[4] = L12_2
    L8_2[5] = L13_2
    L8_2[6] = L14_2
    L9_2 = ipairs
    L10_2 = L8_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = L5_2[L14_2]
      if L15_2 then
        L15_2 = ipairs
        L16_2 = L5_2[L14_2]
        L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
        for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
          L21_2 = L20_2.grade
          if not L21_2 then
            L20_2.grade = 0
          end
        end
      end
    end
  end
end
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if 0 ~= A0_2 then
    return
  end
  L1_2 = GetResourcePath
  L2_2 = cache
  L2_2 = L2_2.resource
  L1_2 = L1_2(L2_2)
  L2_2 = "/config/convert_jobs"
  L1_2 = L1_2 .. L2_2
  L2_2 = L7_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = #L2_2
  if 0 == L3_2 then
    L3_2 = error
    L4_2 = "Cannot load jobs from %s/config/convert_jobs"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = cache
    L6_2 = L6_2.resource
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = "config/convert_jobs/%s"
    L10_2 = L9_2
    L9_2 = L9_2.format
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L6_1
    L11_2 = L9_2
    L10_2(L11_2)
  end
  L3_2 = L8_1
  L3_2()
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = MySQL
    L9_2 = L9_2.single
    L9_2 = L9_2.await
    L10_2 = "SELECT * FROM lunar_jobscreator WHERE name = ?"
    L11_2 = {}
    L12_2 = L7_2
    L11_2[1] = L12_2
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = MySQL
      L9_2 = L9_2.insert
      L9_2 = L9_2.await
      L10_2 = "INSERT INTO lunar_jobscreator (name, data) VALUES (?, ?)"
      L11_2 = {}
      L12_2 = L7_2
      L13_2 = json
      L13_2 = L13_2.encode
      L14_2 = L8_2
      L13_2, L14_2 = L13_2(L14_2)
      L11_2[1] = L12_2
      L11_2[2] = L13_2
      L11_2[3] = L14_2
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = TriggerLatentClientEvent
  L4_2 = "lunar_unijob:syncJobs"
  L5_2 = -1
  L6_2 = 50000
  L7_2 = L0_1
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L10_1 = RegisterCommand
L11_1 = "convertjobs"
L12_1 = L9_1
L10_1(L11_1, L12_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L7_2 = L6_2.x
      if L7_2 then
        L7_2 = L6_2.y
        if L7_2 then
          L7_2 = L6_2.z
          if L7_2 then
            L7_2 = L6_2.w
            if L7_2 then
              L7_2 = vector4
              L8_2 = L6_2.x
              L9_2 = L6_2.y
              L10_2 = L6_2.z
              L11_2 = L6_2.w
              L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
              A0_2[L5_2] = L7_2
            else
              L7_2 = vector3
              L8_2 = L6_2.x
              L9_2 = L6_2.y
              L10_2 = L6_2.z
              L7_2 = L7_2(L8_2, L9_2, L10_2)
              A0_2[L5_2] = L7_2
            end
        end
      end
      else
        L7_2 = L10_1
        L8_2 = L6_2
        L7_2(L8_2)
      end
    else
      L7_2 = type
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if "string" == L7_2 then
        L8_2 = L6_2
        L7_2 = L6_2.len
        L7_2 = L7_2(L8_2)
        if 0 == L7_2 then
          A0_2[L5_2] = nil
        end
      end
    end
  end
end
L11_1 = MySQL
L11_1 = L11_1.ready
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = MySQL
  L0_2 = L0_2.query
  L0_2 = L0_2.await
  L1_2 = "SELECT * FROM lunar_jobscreator"
  L0_2 = L0_2(L1_2)
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_2[L4_2]
    L6_2 = Framework
    L6_2 = L6_2.name
    if "es_extended" == L6_2 then
      L6_2 = L4_1
      L7_2 = L5_2.name
      L6_2(L7_2)
    end
  end
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_2[L4_2]
    L6_2 = json
    L6_2 = L6_2.decode
    L7_2 = L5_2.data
    L6_2 = L6_2(L7_2)
    L7_2 = L10_1
    L8_2 = L6_2
    L7_2(L8_2)
    L8_2 = L5_2.name
    L7_2 = L0_1
    L7_2[L8_2] = L6_2
    L7_2 = L5_1
    L8_2 = L6_2
    L9_2 = true
    L7_2(L8_2, L9_2)
  end
  L1_2 = true
  L1_1 = L1_2
  L1_2 = ipairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.init
    L8_2 = L0_1
    L7_2(L8_2)
  end
end
L11_1(L12_1)
L11_1 = RegisterNetEvent
L12_1 = "lunar_unijob:createJob"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = IsPlayerAdmin
    L4_2 = L2_2.source
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = A0_2.name
      L3_2 = L0_1
      L3_2 = L3_2[L4_2]
      if not L3_2 then
        goto lbl_19
      end
    end
  end
  do return end
  ::lbl_19::
  L3_2 = L10_1
  L4_2 = A0_2
  L3_2(L4_2)
  L4_2 = A0_2.name
  L3_2 = L0_1
  L3_2[L4_2] = A0_2
  L3_2 = L5_1
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = MySQL
  L3_2 = L3_2.query
  L3_2 = L3_2.await
  L4_2 = "INSERT INTO lunar_jobscreator (name, data) VALUES (?, ?)"
  L5_2 = {}
  L6_2 = A0_2.name
  L7_2 = json
  L7_2 = L7_2.encode
  L8_2 = A0_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L5_2[5] = L10_2
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "lunar_unijob:syncJob"
  L5_2 = -1
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = ipairs
  L4_2 = L2_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.update
    if L9_2 then
      L9_2 = L8_2.update
      L10_2 = A0_2
      L9_2(L10_2)
    end
  end
  L3_2 = AddHistoryLog
  L4_2 = L1_2
  L5_2 = locale
  L6_2 = "history_create_job"
  L7_2 = A0_2.label
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "lunar_unijob:updateJob"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = IsPlayerAdmin
    L4_2 = L2_2.source
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L3_2 = L10_1
  L4_2 = A0_2
  L3_2(L4_2)
  L4_2 = A0_2.name
  L3_2 = L0_1
  L3_2[L4_2] = A0_2
  L3_2 = MySQL
  L3_2 = L3_2.query
  L3_2 = L3_2.await
  L4_2 = "UPDATE lunar_jobscreator SET data = ? WHERE name = ?"
  L5_2 = {}
  L6_2 = json
  L6_2 = L6_2.encode
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2.name
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "lunar_unijob:syncJob"
  L5_2 = -1
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = ipairs
  L4_2 = L2_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.update
    if L9_2 then
      L9_2 = L8_2.update
      L10_2 = A0_2
      L9_2(L10_2)
    end
  end
  L3_2 = AddHistoryLog
  L4_2 = L1_2
  L5_2 = locale
  L6_2 = "history_update_job"
  L7_2 = A0_2.label
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "lunar_unijob:updateJobField"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = source
  L4_2 = Framework
  L4_2 = L4_2.getPlayerFromId
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = IsPlayerAdmin
    L6_2 = L4_2.source
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L5_2 = L10_1
  L6_2 = A2_2
  L5_2(L6_2)
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  L5_2[A1_2] = A2_2
  L6_2 = MySQL
  L6_2 = L6_2.query
  L6_2 = L6_2.await
  L7_2 = "UPDATE lunar_jobscreator SET data = ? WHERE name = ?"
  L8_2 = {}
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = L5_2
  L9_2 = L9_2(L10_2)
  L10_2 = A0_2
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L6_2(L7_2, L8_2)
  L6_2 = TriggerClientEvent
  L7_2 = "lunar_unijob:syncJobField"
  L8_2 = -1
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = ipairs
  L7_2 = L2_1
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L11_2.update
    if L12_2 then
      L12_2 = L11_2.update
      L13_2 = L5_2
      L12_2(L13_2)
    end
  end
  if "grades" == A1_2 then
    L6_2 = L5_1
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L6_2 = AddHistoryLog
  L7_2 = L3_2
  L8_2 = locale
  L9_2 = "history_update_job"
  L10_2 = L5_2.label
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "lunar_unijob:removeJob"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = IsPlayerAdmin
    L4_2 = L2_2.source
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L3_2 = L0_1
  L3_2[A0_2] = nil
  L3_2 = MySQL
  L3_2 = L3_2.query
  L3_2 = L3_2.await
  L4_2 = "DELETE FROM lunar_jobscreator WHERE name = ?"
  L5_2 = {}
  L6_2 = A0_2
  L5_2[1] = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "lunar_unijob:syncRemoveJob"
  L5_2 = -1
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L11_1(L12_1, L13_1)
L11_1 = {}
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Framework
  L1_2 = L1_2.getPlayerFromId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = IsPlayerAdmin
    L3_2 = L1_2.source
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = TriggerClientEvent
      L3_2 = "lunar_unijob:openHelper"
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    end
  end
end
L11_1.helper = L12_1
L12_1 = RegisterCommand
L13_1 = "unijob"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A1_2[1]
  L2_2 = L11_1
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L3_2 = warn
    L4_2 = "Unsupported subcommand, view the documentation for help."
    L3_2(L4_2)
    return
  end
  L3_2 = L2_2
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L12_1(L13_1, L14_1)
L12_1 = Config
L13_1 = {}
L12_1.accountsByKey = L13_1
L12_1 = ipairs
L13_1 = Config
L13_1 = L13_1.accounts
L12_1, L13_1, L14_1, L15_1 = L12_1(L13_1)
for L16_1, L17_1 in L12_1, L13_1, L14_1, L15_1 do
  L18_1 = Config
  L18_1 = L18_1.accountsByKey
  L18_1[L17_1] = true
end
L12_1 = exports
L13_1 = "setJobGradeSalary"
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    return
  end
  L4_2 = L3_2.grades
  L5_2 = A1_2 - 1
  L4_2 = L4_2[L5_2]
  L4_2.salary = A2_2
  L4_2 = L5_1
  L5_2 = L3_2
  L4_2(L5_2)
end
L12_1(L13_1, L14_1)
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Framework
  L1_2 = L1_2.name
  if "qb-core" == L1_2 then
    L1_2 = IsPlayerAceAllowed
    L2_2 = A0_2
    L3_2 = "jobscreator_admin"
    return L1_2(L2_2, L3_2)
  else
    L1_2 = Framework
    L1_2 = L1_2.getPlayerFromId
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2 or L2_2
    if L1_2 then
      L3_2 = L1_2
      L2_2 = L1_2.hasOneOfGroups
      L4_2 = Config
      L4_2 = L4_2.adminGroups
      L2_2 = L2_2(L3_2, L4_2)
    end
    return L2_2
  end
end
IsPlayerAdmin = L12_1
