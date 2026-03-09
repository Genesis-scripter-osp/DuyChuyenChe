-- DuyMod Hub Main

local DuyMod = {}
DuyMod.Name = "DuyMod Hub"
DuyMod.Version = "1.0"

-- Services
local HttpService = game:GetService("HttpService")

-- GitHub Raw Base URL
local BASE_URL = "https://raw.githubusercontent.com/Genesis-scripter-osp/DuyModHub/main/"

-- Load module function
local function LoadModule(path)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(BASE_URL .. path))()
    end)

    if success then
        return result
    else
        warn("DuyMod: Failed to load -> "..path)
        warn(result)
    end
end

print("Loading "..DuyMod.Name)

-- Load Core
local Core = LoadModule("Core/Init.lua")

-- Load Config
local Config = LoadModule("Config/Settings.lua")

-- Load UI
local UI = LoadModule("UI/UI.lua")

-- Load Modules
local Modules = {}

Modules.AutoFarm = LoadModule("Modules/AutoFarm.lua")
Modules.ESP = LoadModule("Modules/ESP.lua")

-- Game detection
local Games = {
    [2753915549] = "Games/BloxFruits.lua",
}

local placeId = game.PlaceId

if Games[placeId] then
    print("Game supported -> loading script")
    LoadModule(Games[placeId])
else
    print("Unknown game -> loading universal")
    LoadModule("Games/Universal.lua")
end

print(DuyMod.Name.." Loaded | Version "..DuyMod.Version)

return DuyMod
