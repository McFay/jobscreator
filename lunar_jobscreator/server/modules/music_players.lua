-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = nil
L1_1 = {}
L2_1 = RegisterNetEvent
L3_1 = "lunar_unijob:playMusic"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  L6_2 = L3_2
  L5_2 = L3_2.getJob
  L5_2 = L5_2(L6_2)
  L6_2 = L4_2.job
  L6_2 = L6_2.name
  if L5_2 == L6_2 then
    L5_2 = Utils
    L5_2 = L5_2.distanceCheck
    L6_2 = L2_2
    L7_2 = L4_2.coords
    L8_2 = 10.0
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      goto lbl_26
    end
  end
  do return end
  ::lbl_26::
  L6_2 = A1_2
  L5_2 = A1_2.find
  L7_2 = "youtube.com"
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L6_2 = A1_2
    L5_2 = A1_2.find
    L7_2 = "youtu.be"
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L5_2 = LR
      L5_2 = L5_2.notify
      L6_2 = L2_2
      L7_2 = locale
      L8_2 = "non_youtube_url"
      L7_2 = L7_2(L8_2)
      L8_2 = "error"
      L5_2(L6_2, L7_2, L8_2)
      return
    end
  end
  L4_2.playing = true
  L5_2 = exports
  L5_2 = L5_2.xsound
  L6_2 = L5_2
  L5_2 = L5_2.PlayUrlPos
  L7_2 = -1
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = L4_2.volume
  L11_2 = L4_2.coords
  L11_2 = L11_2.xyz
  L12_2 = L4_2.loop
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = L4_2.desk
  L5_2 = L5_2.soundDistance
  if L5_2 then
    L5_2 = exports
    L5_2 = L5_2.xsound
    L6_2 = L5_2
    L5_2 = L5_2.Distance
    L7_2 = -1
    L8_2 = A0_2
    L9_2 = L4_2.desk
    L9_2 = L9_2.soundDistance
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "lunar_unijob:setDeskVolume"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  L6_2 = L3_2
  L5_2 = L3_2.getJob
  L5_2 = L5_2(L6_2)
  L6_2 = L4_2.job
  L6_2 = L6_2.name
  if L5_2 == L6_2 then
    L5_2 = Utils
    L5_2 = L5_2.distanceCheck
    L6_2 = L2_2
    L7_2 = L4_2.coords
    L8_2 = 10.0
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      goto lbl_26
    end
  end
  do return end
  ::lbl_26::
  L4_2.volume = A1_2
  L5_2 = exports
  L5_2 = L5_2.xsound
  L6_2 = L5_2
  L5_2 = L5_2.setVolume
  L7_2 = -1
  L8_2 = A0_2
  L9_2 = L4_2.volume
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "lunar_unijob:pauseMusic"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  L5_2 = L2_2
  L4_2 = L2_2.getJob
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2.job
  L5_2 = L5_2.name
  if L4_2 == L5_2 then
    L4_2 = Utils
    L4_2 = L4_2.distanceCheck
    L5_2 = L1_2
    L6_2 = L3_2.coords
    L7_2 = 10.0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 then
      goto lbl_26
    end
  end
  do return end
  ::lbl_26::
  L3_2.playing = false
  L4_2 = exports
  L4_2 = L4_2.xsound
  L5_2 = L4_2
  L4_2 = L4_2.Pause
  L6_2 = -1
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "lunar_unijob:resumeMusic"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  L5_2 = L2_2
  L4_2 = L2_2.getJob
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2.job
  L5_2 = L5_2.name
  if L4_2 == L5_2 then
    L4_2 = Utils
    L4_2 = L4_2.distanceCheck
    L5_2 = L1_2
    L6_2 = L3_2.coords
    L7_2 = 10.0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 then
      goto lbl_26
    end
  end
  do return end
  ::lbl_26::
  L3_2.playing = true
  L4_2 = exports
  L4_2 = L4_2.xsound
  L5_2 = L4_2
  L4_2 = L4_2.Resume
  L6_2 = -1
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "lunar_unijob:stopMusic"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  L5_2 = L2_2
  L4_2 = L2_2.getJob
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2.job
  L5_2 = L5_2.name
  if L4_2 == L5_2 then
    L4_2 = Utils
    L4_2 = L4_2.distanceCheck
    L5_2 = L1_2
    L6_2 = L3_2.coords
    L7_2 = 10.0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 then
      goto lbl_26
    end
  end
  do return end
  ::lbl_26::
  L3_2.playing = false
  L4_2 = exports
  L4_2 = L4_2.xsound
  L5_2 = L4_2
  L4_2 = L4_2.Destroy
  L6_2 = -1
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "lunar_unijob:setLoop"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  L6_2 = L3_2
  L5_2 = L3_2.getJob
  L5_2 = L5_2(L6_2)
  L6_2 = L4_2.job
  L6_2 = L6_2.name
  if L5_2 == L6_2 then
    L5_2 = Utils
    L5_2 = L5_2.distanceCheck
    L6_2 = L2_2
    L7_2 = L4_2.coords
    L8_2 = 10.0
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      goto lbl_26
    end
  end
  do return end
  ::lbl_26::
  L4_2.loop = A1_2
  L5_2 = TriggerClientEvent
  L6_2 = "lunar_unijob:setLoop"
  L7_2 = -1
  L8_2 = A0_2
  L9_2 = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = A0_2.musicPlayers
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2.musicPlayers
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = pairs
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
      L14_2 = L1_1
      L15_2 = {}
      L15_2.job = A0_2
      L15_2.desk = L6_2
      L15_2.coords = L12_2
      L15_2.volume = 1.0
      L15_2.playing = false
      L15_2.loop = false
      L14_2[L13_2] = L15_2
    end
  end
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_1 = A0_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L2_1
    L8_2 = L6_2
    L7_2(L8_2)
  end
end
L4_1 = {}
L4_1.init = L3_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.job
    L7_2 = L7_2.name
    L8_2 = A0_2.name
    if L7_2 == L8_2 then
      L7_2 = L1_1
      L7_2[L5_2] = nil
    end
  end
  L1_2 = L2_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L4_1.update = L5_1
MusicPlayers = L4_1
