local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetPlayerIdentifierByType
  L2_2 = A0_2
  L3_2 = "discord"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.find
  L4_2 = ":"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L4_2 = L1_2
    L3_2 = L1_2.sub
    L5_2 = L2_2 + 1
    L3_2 = L3_2(L4_2, L5_2)
  end
  return L3_2
end
L2_1 = lib
L2_1 = L2_1.callback
L2_1 = L2_1.register
L3_1 = "lunar_unijob:getDiscordIcon"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = SvConfig
  L1_2 = L1_2.discordBotToken
  if L1_2 then
    L1_2 = SvConfig
    L1_2 = L1_2.discordBotToken
    if "TOKEN_HERE" ~= L1_2 then
      goto lbl_13
    end
  end
  L1_2 = warn
  L2_2 = "Discord bot token missing."
  L1_2(L2_2)
  do return end
  ::lbl_13::
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    return
  end
  L1_2 = L0_1
  L1_2[A0_2] = true
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = "users/"
  L3_2 = L1_2
  L2_2 = L2_2 .. L3_2
  L3_2 = promise
  L3_2 = L3_2.new
  L3_2 = L3_2()
  if not L1_2 then
    return
  end
  while true do
    L4_2 = PerformHttpRequest
    L5_2 = "https://discord.com/api/"
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    function L6_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3
      L3_3 = L3_2
      L4_3 = L3_3
      L3_3 = L3_3.resolve
      L5_3 = {}
      L5_3.data = A1_3
      L5_3.code = A0_3
      L5_3.headers = A2_3
      L3_3(L4_3, L5_3)
    end
    L7_2 = "GET"
    L8_2 = ""
    L9_2 = {}
    L9_2["Content-Type"] = "application/json"
    L10_2 = "Bot "
    L11_2 = SvConfig
    L11_2 = L11_2.discordBotToken
    L10_2 = L10_2 .. L11_2
    L9_2.Authorization = L10_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = Citizen
    L4_2 = L4_2.Await
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2.code
    if 200 == L5_2 then
      L5_2 = json
      L5_2 = L5_2.decode
      L6_2 = L4_2.data
      L5_2 = L5_2(L6_2)
      L6_2 = L5_2.avatar
      L7_2 = string
      L7_2 = L7_2.format
      L8_2 = "https://cdn.discordapp.com/avatars/%s/%s.png"
      L9_2 = L1_2
      L10_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      return L7_2
    else
      L5_2 = L4_2.code
      if 429 == L5_2 then
        L5_2 = tonumber
        L6_2 = L4_2.headers
        L6_2 = L6_2["Retry-After"]
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L6_2 = warn
          L7_2 = "Rate-limited. Waiting "
          L8_2 = L5_2
          L9_2 = " seconds before retrying..."
          L7_2 = L7_2 .. L8_2 .. L9_2
          L6_2(L7_2)
          L6_2 = Wait
          L7_2 = L5_2 * 1000
          L6_2(L7_2)
        else
          L6_2 = warn
          L7_2 = "Rate limited but no Retry-After header provided."
          L6_2(L7_2)
          L6_2 = Wait
          L7_2 = 5000
          L6_2(L7_2)
        end
      else
        L5_2 = warn
        L6_2 = "Couldn't fetch discord user data: HTTP "
        L7_2 = tostring
        L8_2 = L4_2.code
        L7_2 = L7_2(L8_2)
        L6_2 = L6_2 .. L7_2
        L5_2(L6_2)
        return
      end
    end
  end
end
L2_1(L3_1, L4_1)
