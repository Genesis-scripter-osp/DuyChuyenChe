--// DuyMod Hub
--// Main Loader

local BASE_URL = "https://raw.githubusercontent.com/Genesis-scripter-osp/DuyChuyenChe/main/"

-- loader function
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

--========================
-- Core System
--========================

Load("Core/init.lua")
Load("Core/ui.lua")
Load("Core/network.lua")
Load("Core/visual.lua")
Load("Core/system.lua")

--========================
-- Modules
--========================

-- Combat
Load("Modules/Combat/aimbot.lua")
Load("Modules/Combat/kill_aura.lua")

-- ESP
Load("Modules/ESP/player_esp.lua")

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
