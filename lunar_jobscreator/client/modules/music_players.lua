-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
L1_1 = RegisterNetEvent
L2_1 = "lunar_unijob:setLoop"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = exports
  L2_2 = L2_2.xsound
  L3_2 = L2_2
  L2_2 = L2_2.soundExists
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = exports
    L2_2 = L2_2.xsound
    L3_2 = L2_2
    L2_2 = L2_2.setSoundLoop
    L4_2 = A0_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = lib
  L1_2 = L1_2.inputDialog
  L2_2 = locale
  L3_2 = "play_music_url"
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = {}
  L4_2.type = "input"
  L5_2 = locale
  L6_2 = "music_url"
  L5_2 = L5_2(L6_2)
  L4_2.label = L5_2
  L4_2.icon = "link"
  L4_2.required = true
  L4_2.min = 1
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = L1_2[1]
  end
  if not L1_2 then
    return
  end
  L2_2 = TriggerServerEvent
  L3_2 = "lunar_unijob:playMusic"
  L4_2 = A0_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = lib
  L1_2 = L1_2.inputDialog
  L2_2 = locale
  L3_2 = "change_volume"
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = {}
  L4_2.type = "slider"
  L5_2 = locale
  L6_2 = "volume"
  L5_2 = L5_2(L6_2)
  L4_2.label = L5_2
  L4_2.icon = "link"
  L4_2.required = true
  L4_2.min = 0.01
  L4_2.max = 1.0
  L4_2.step = 0.05
  L5_2 = exports
  L5_2 = L5_2.xsound
  L6_2 = L5_2
  L5_2 = L5_2.getVolume
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = 1.0
  end
  L4_2.default = L5_2
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = L1_2[1]
  end
  if not L1_2 then
    return
  end
  L2_2 = TriggerServerEvent
  L3_2 = "lunar_unijob:setDeskVolume"
  L4_2 = A0_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "lunar_unijob:pauseMusic"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "lunar_unijob:resumeMusic"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "lunar_unijob:stopMusic"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = TriggerServerEvent
  L2_2 = "lunar_unijob:setLoop"
  L3_2 = A0_2
  L4_2 = exports
  L4_2 = L4_2.xsound
  L5_2 = L4_2
  L4_2 = L4_2.isLooped
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = not L4_2
  L1_2(L2_2, L3_2, L4_2)
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = locale
  L4_2 = "play_music_url"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L3_2 = locale
  L4_2 = "play_music_url_desc"
  L3_2 = L3_2(L4_2)
  L2_2.description = L3_2
  L2_2.icon = "music"
  L3_2 = L1_1
  L2_2.onSelect = L3_2
  L2_2.args = A0_2
  L3_2 = {}
  L4_2 = locale
  L5_2 = "change_volume"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L4_2 = locale
  L5_2 = "change_volume_desc"
  L4_2 = L4_2(L5_2)
  L3_2.description = L4_2
  L3_2.icon = "volume-high"
  L4_2 = L2_1
  L3_2.onSelect = L4_2
  L3_2.args = A0_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L2_2 = exports
  L2_2 = L2_2.xsound
  L3_2 = L2_2
  L2_2 = L2_2.soundExists
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = {}
    L5_2 = exports
    L5_2 = L5_2.xsound
    L6_2 = L5_2
    L5_2 = L5_2.isLooped
    L7_2 = A0_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = locale
      L6_2 = "loop_music_enabled"
      L5_2 = L5_2(L6_2)
      if L5_2 then
        goto lbl_59
      end
    end
    L5_2 = locale
    L6_2 = "loop_music_disabled"
    L5_2 = L5_2(L6_2)
    ::lbl_59::
    L4_2.title = L5_2
    L5_2 = locale
    L6_2 = "loop_music_desc"
    L5_2 = L5_2(L6_2)
    L4_2.description = L5_2
    L4_2.icon = "rotate"
    L5_2 = L6_1
    L4_2.onSelect = L5_2
    L4_2.args = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = exports
    L4_2 = L4_2.xsound
    L5_2 = L4_2
    L4_2 = L4_2.isPaused
    L6_2 = A0_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = {}
      L5_2 = locale
      L6_2 = "resume_music"
      L5_2 = L5_2(L6_2)
      L4_2.title = L5_2
      L5_2 = locale
      L6_2 = "resume_music_desc"
      L5_2 = L5_2(L6_2)
      L4_2.description = L5_2
      L4_2.icon = "play"
      L5_2 = L4_1
      L4_2.onSelect = L5_2
      L4_2.args = A0_2
      if L4_2 then
        goto lbl_109
      end
    end
    L4_2 = {}
    L5_2 = locale
    L6_2 = "pause_music"
    L5_2 = L5_2(L6_2)
    L4_2.title = L5_2
    L5_2 = locale
    L6_2 = "pause_music_desc"
    L5_2 = L5_2(L6_2)
    L4_2.description = L5_2
    L4_2.icon = "pause"
    L5_2 = L3_1
    L4_2.onSelect = L5_2
    L4_2.args = A0_2
    ::lbl_109::
    L2_2(L3_2, L4_2)
    L2_2 = exports
    L2_2 = L2_2.xsound
    L3_2 = L2_2
    L2_2 = L2_2.isPlaying
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = L1_2
      L4_2 = {}
      L5_2 = locale
      L6_2 = "stop_music"
      L5_2 = L5_2(L6_2)
      L4_2.title = L5_2
      L5_2 = locale
      L6_2 = "stop_music_desc"
      L5_2 = L5_2(L6_2)
      L4_2.description = L5_2
      L4_2.icon = "stop"
      L5_2 = L5_1
      L4_2.onSelect = L5_2
      L4_2.args = A0_2
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = lib
  L2_2 = L2_2.registerContext
  L3_2 = {}
  L3_2.id = "music_player"
  L4_2 = locale
  L5_2 = "music_player"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L3_2.options = L1_2
  L2_2(L3_2)
  L2_2 = lib
  L2_2 = L2_2.showContext
  L3_2 = "music_player"
  L2_2(L3_2)
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = A0_2.musicPlayers
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2.musicPlayers
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = ipairs
    L8_2 = L6_2.locations
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = "%s_%s_%s"
      L14_2 = L13_2
      L13_2 = L13_2.format
      L15_2 = A0_2.name
      L16_2 = L5_2
      L17_2 = L11_2
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      L14_2 = Utils
      L14_2 = L14_2.createInteractionPoint
      L15_2 = {}
      L15_2.coords = L12_2
      L16_2 = L6_2.radius
      if not L16_2 then
        L16_2 = Config
        L16_2 = L16_2.defaultRadius
      end
      L15_2.radius = L16_2
      L16_2 = {}
      L17_2 = {}
      L18_2 = L6_2.label
      if not L18_2 then
        L18_2 = locale
        L19_2 = "play_music"
        L18_2 = L18_2(L19_2)
      end
      L17_2.label = L18_2
      L18_2 = L6_2.icon
      if not L18_2 then
        L18_2 = "music"
      end
      L17_2.icon = L18_2
      L18_2 = L7_1
      L17_2.onSelect = L18_2
      L17_2.args = L13_2
      L16_2[1] = L17_2
      L15_2.options = L16_2
      L16_2 = L6_2.target
      L14_2 = L14_2(L15_2, L16_2)
      L15_2 = table
      L15_2 = L15_2.insert
      L16_2 = L0_1
      L17_2 = L14_2
      L15_2(L16_2, L17_2)
    end
  end
end
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ipairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.remove
    L6_2()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L0_1
  L0_2(L1_2)
end
L10_1 = {}
L10_1.create = L8_1
L10_1.clear = L9_1
MusicPlayers = L10_1
