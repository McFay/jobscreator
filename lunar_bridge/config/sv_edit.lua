-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



Config.Logging = 'discord'
function CustomLogging(player, resourceName, message)
    exports.fmsdk:LogMessage("info", message, {
        playerSource = player.source
    })
end
