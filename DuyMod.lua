-- DuyMod Hub

local Hub = {}

Hub.Name = "DuyMod Hub"
Hub.Version = "1.0"

local BASE_URL = "https://raw.githubusercontent.com/Genesis-scripter-osp/DuyChuyenChe/main/"

local function Load(path)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(BASE_URL .. path))()
    end)

    if success then
        return result
    else
        warn("Failed:", path)
        warn(result)
    end
end

print("Loading "..Hub.Name)

-- Config
Load("Config/settings.lua")
Load("Config/keysystem.lua")

-- Core
Load("Core/Network System")
Load("Core/Game Loader System")
Load("Core/Dragon Update System")

-- UI
Load("UI/Loader.lua")
Load("UI/MainUI.lua")

-- Modules
Load("Modules/Combat")
Load("Modules/ESP")
Load("Modules/Farming")
Load("Modules/Misc")
Load("Modules/Movement")

-- Game Scripts
Load("Games/universal.lua")

print("DuyMod Hub Loaded")

return Hub
