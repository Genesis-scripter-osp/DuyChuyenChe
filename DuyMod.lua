--// DuyMod Hub
--// Main Loader

local BASE_URL = "https://raw.githubusercontent.com/Genesis-scripter-osp/DuyChuyenChe/main/"

local function Load(path)
    local success, result = pcall(function()
        return game:HttpGet(BASE_URL .. path)
    end)

    if success then
        local run, err = pcall(loadstring(result))
        if not run then
            warn("DuyMod Error running:", path, err)
        end
    else
        warn("DuyMod Error loading:", path)
    end
end

print("Loading DuyMod Hub...")

-------------------------
-- CORE SYSTEM
-------------------------

Load("Core/DragonUpdateSystem.lua")
Load("Core/GameLoaderSystem.lua")
Load("Core/NetworkSystem.lua")
Load("Core/UINetworkVisualSystem.lua")

-------------------------
-- CORE MODULES
-------------------------

-- UI
Load("Core/UI/ui_main.lua")
Load("Core/UI/toggles.lua")
Load("Core/UI/sliders.lua")

-- Network
Load("Core/Network/http.lua")
Load("Core/Network/server.lua")
Load("Core/Network/update.lua")

-- Security
Load("Core/Security/anti_tamper.lua")
Load("Core/Security/encryption.lua")

-- Visual
Load("Core/Visual/animation.lua")
Load("Core/Visual/effects.lua")
Load("Core/Visual/notifications.lua")

-------------------------
-- GAME MODULES
-------------------------

-- Combat
Load("Modules/Combat/aimbot.lua")
Load("Modules/Combat/kill_aura.lua")

-- ESP
Load("Modules/ESP/player_esp.lua")
Load("Modules/ESP/item_esp.lua")

-- Farming
Load("Modules/Farming/autofarm.lua")
Load("Modules/Farming/autoquest.lua")

-- Misc
Load("Modules/Misc/anti_afk.lua")
Load("Modules/Misc/fpsboost.lua")
Load("Modules/Misc/serverhop.lua")

-- Movement
Load("Modules/Movement/fly.lua")
Load("Modules/Movement/speed.lua")
Load("Modules/Movement/teleport.lua")

print("DuyMod Hub Loaded Successfully")
