-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



Config = {}
Config.command = 'jobscreator'
Config.uiLanguage = 'en'
Config.registerJobInFramework = true
Config.defaultRadius = 1.25
Config.adminGroups = {
    ['admin'] = true,
    ['god'] = true
}
Config.accounts = {
    'money', 'bank'
}
Config.blipsFont = ''
Config.forceSaveVehicleOption = false
Config.actionsMenu = true -- Enables the F6 menu, you can change the bind in cl_edit.lua
Config.actionsMenuPosition = 'top-right'
Config.radialMenu = false         -- Enables the ox_lib radial menu for actions
Config.disableTargetInteractions = false -- Completely disables the player and vehicle interactions through target
Config.forceCuffAnim = false
Config.tackleKeybind = 'G'
Config.tackleCooldown = 10000 -- milliseconds
Config.lockpickMinigame = 'normal'
Config.alarmCode = '10-69'
Config.usableItems = {
    ['burger_fries'] = {
        progress = locale('eating'),
        duration = 3000,
        animation = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = {
            model = `prop_cs_burger_01`,
            position = vec3(0.02, 0.02, -0.02),
            rotation = vec3(0.0, 0.0, 0.0)
        },
        hunger = 200000
    },
    ['burger_applepie'] = {
        progress = locale('eating'),
        duration = 3000,
        animation = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = {
            model = `prop_cs_burger_01`,
            position = vec3(0.02, 0.02, -0.02),
            rotation = vec3(0.0, 0.0, 0.0)
        },
        hunger = 200000
    },
    ['burger_bleeder'] = {
        progress = locale('eating'),
        duration = 3000,
        animation = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = {
            model = `prop_cs_burger_01`,
            position = vec3(0.02, 0.02, -0.02),
            rotation = vec3(0.0, 0.0, 0.0)
        },
        hunger = 200000
    },
    ['burger_chickenwrap'] = {
        progress = locale('eating'),
        duration = 3000,
        animation = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = {
            model = `prop_cs_burger_01`,
            position = vec3(0.02, 0.02, -0.02),
            rotation = vec3(0.0, 0.0, 0.0)
        },
        hunger = 200000
    },
    ['burger_donut'] = {
        progress = locale('eating'),
        duration = 3000,
        animation = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = {
            model = `prop_cs_burger_01`,
            position = vec3(0.02, 0.02, -0.02),
            rotation = vec3(0.0, 0.0, 0.0)
        },
        hunger = 200000
    },
    ['burger_heartstopper'] = {
        progress = locale('eating'),
        duration = 3000,
        animation = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = {
            model = `prop_cs_burger_01`,
            position = vec3(0.02, 0.02, -0.02),
            rotation = vec3(0.0, 0.0, 0.0)
        },
        hunger = 200000
    },
    ['burger_meatfree'] = {
        progress = locale('eating'),
        duration = 3000,
        animation = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = {
            model = `prop_cs_burger_01`,
            position = vec3(0.02, 0.02, -0.02),
            rotation = vec3(0.0, 0.0, 0.0)
        },
        hunger = 200000
    },
    ['burger_moneyshot'] = {
        progress = locale('eating'),
        duration = 3000,
        animation = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = {
            model = `prop_cs_burger_01`,
            position = vec3(0.02, 0.02, -0.02),
            rotation = vec3(0.0, 0.0, 0.0)
        },
        hunger = 200000
    },
    ['burger_torpedo'] = {
        progress = locale('eating'),
        duration = 3000,
        animation = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = {
            model = `prop_cs_burger_01`,
            position = vec3(0.02, 0.02, -0.02),
            rotation = vec3(0.0, 0.0, 0.0)
        },
        hunger = 200000
    },
    ['burger_ecola'] = {
        progress = locale('drinking'),
        duration = 3000,
        animation = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = {
            model = `prop_ld_flow_bottle`,
            position = vector3(0.03, 0.03, 0.02),
            rotation = vector3(0.0, 0.0, -1.5)
        },
        thirst = 200000
    },
    ['burger_sprunk'] = {
        progress = locale('drinking'),
        duration = 3000,
        animation = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = {
            model = `prop_ld_flow_bottle`,
            position = vector3(0.03, 0.03, 0.02),
            rotation = vector3(0.0, 0.0, -1.5)
        },
        thirst = 200000
    },
    ['burger_coffee'] = {
        progress = locale('drinking'),
        duration = 3000,
        animation = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = {
            model = `p_ing_coffeecup_01`,
            position = vector3(0.03, 0.03, 0.02),
            rotation = vector3(0.0, 0.0, -1.5)
        },
        thirst = 200000
    },
    ['champagne'] = {
        progress = locale('drinking'),
        duration = 3000,
        animation = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = {
            model = `prop_ld_flow_bottle`,
            position = vector3(0.03, 0.03, 0.02),
            rotation = vector3(0.0, 0.0, -1.5)
        },
        thirst = 200000
    },
    ['icetea'] = {
        progress = locale('drinking'),
        duration = 3000,
        animation = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = {
            model = `prop_ld_flow_bottle`,
            position = vector3(0.03, 0.03, 0.02),
            rotation = vector3(0.0, 0.0, -1.5)
        },
        thirst = 200000
    },
    ['lemonade'] = {
        progress = locale('drinking'),
        duration = 3000,
        animation = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = {
            model = `prop_ld_flow_bottle`,
            position = vector3(0.03, 0.03, 0.02),
            rotation = vector3(0.0, 0.0, -1.5)
        },
        thirst = 200000
    },
    ['martini'] = {
        progress = locale('drinking'),
        duration = 3000,
        animation = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = {
            model = `prop_ld_flow_bottle`,
            position = vector3(0.03, 0.03, 0.02),
            rotation = vector3(0.0, 0.0, -1.5)
        },
        thirst = 200000
    },
    ['mojito'] = {
        progress = locale('drinking'),
        duration = 3000,
        animation = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = {
            model = `prop_ld_flow_bottle`,
            position = vector3(0.03, 0.03, 0.02),
            rotation = vector3(0.0, 0.0, -1.5)
        },
        thirst = 200000
    },
    ['red_wine'] = {
        progress = locale('drinking'),
        duration = 3000,
        animation = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = {
            model = `prop_wine_red`,
            position = vector3(0.03, 0.03, -0.22),
            rotation = vector3(0.0, 0.0, -1.5)
        },
        thirst = 200000
    },
    ['white_wine'] = {
        progress = locale('drinking'),
        duration = 3000,
        animation = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = {
            model = `prop_wine_white`,
            position = vector3(0.03, 0.03, -0.22),
            rotation = vector3(0.0, 0.0, -1.5)
        },
        thirst = 200000
    },
    ['vodka'] = {
        progress = locale('drinking'),
        duration = 3000,
        animation = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = {
            model = `prop_ld_flow_bottle`,
            position = vector3(0.03, 0.03, 0.02),
            rotation = vector3(0.0, 0.0, -1.5)
        },
        thirst = 200000
    },
    ['tequila'] = {
        progress = locale('drinking'),
        duration = 3000,
        animation = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = {
            model = `prop_ld_flow_bottle`,
            position = vector3(0.03, 0.03, 0.02),
            rotation = vector3(0.0, 0.0, -1.5)
        },
        thirst = 200000
    },
}
