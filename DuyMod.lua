-- DuyMod Hub

local Hub = {}
Hub.Name = "DuyMod Hub"
Hub.Version = "1.0"

-- Github Raw Base
local BASE_URL = "https://raw.githubusercontent.com/Genesis-scripter-osp/DuyChuyenChe/main/"

-- Function load script
local function Load(path)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(BASE_URL .. path))()
    end)

    if success then
        print("[DuyMod] Loaded:", path)
        return result
    else
        warn("[DuyMod] Failed:", path)
        warn(result)
    end
end

print("Loading "..Hub.Name)

-- Wait game load
repeat task.wait() until game:IsLoaded()

------------------------------------------------
-- CONFIG
------------------------------------------------

Load("Config/settings.lua")
Load("Config/keysystem.lua")

------------------------------------------------
-- CORE SYSTEM
------------------------------------------------

Load("Core/Network System.lua")
Load("Core/Game Loader System.lua")
Load("Core/Dragon Update System.lua")
Load("Core/UI Network Visual System.lua")

------------------------------------------------
-- UI
------------------------------------------------

Load("UI/Loader.lua")

task.wait(2)

Load("UI/MainUI.lua")

------------------------------------------------
-- MODULES
------------------------------------------------

Load("Modules/Combat.lua")
Load("Modules/ESP.lua")
Load("Modules/Farming.lua")
Load("Modules/Misc.lua")
Load("Modules/Movement.lua")

------------------------------------------------
-- GAME SCRIPTS
------------------------------------------------

Load("Games/universal.lua")

------------------------------------------------
-- FINISH
------------------------------------------------

print("DuyMod Hub Loaded Successfully")

return Hub
