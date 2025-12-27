-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



Config = {}
Config.Target = false -- Whether to use target or text UI.
Config.Keybinds = {
    'E', 'G', 'C'
}
Config.Dispatch = {
    Enable = true, -- Enable dispatch
    Type = 'normal', --['normal'/'cd_dispatch'/'qs-dispatch'/'ps-dispatch']
	Jobs = {
		'police',
		'sheriff'
	}
}
Config.SpawnDistance = 100.0
Config.Prompts = {
	Enabled = true,
	RenderDistance = 3.0, -- Don't put this to more than 5.0 to avoid issues
	SpriteSize = 0.0170,
	SpriteColor = { r = 170, g = 170, b = 255, a = 255 },
	Dict = 'prompt' -- Choose the one you like
}
Config.BlackMoney = {
	ItemName = 'black_money',
	UsesMetadata = false
}
