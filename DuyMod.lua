-- DuyMod Main

local Core = {}
Core.Modules = {}

function Core:LoadModule(name,url)
    local success, module = pcall(function()
        return loadstring(game:HttpGet(url))()
    end)

    if success then
        self.Modules[name] = module
        print("[DuyMod] Loaded:",name)
    else
        warn("[DuyMod] Failed:",name)
    end
end

-- load core systems

Core:LoadModule(
"UI",
"https://raw.githubusercontent.com/DuyMod/Core/UI.lua"
)

Core:LoadModule(
"Network",
"https://raw.githubusercontent.com/DuyMod/Core/Network.lua"
)

Core:LoadModule(
"Visual",
"https://raw.githubusercontent.com/DuyMod/Core/Visual.lua"
)

Core:LoadModule(
"Games",
"https://raw.githubusercontent.com/DuyMod/Core/GameLoader.lua"
)

return Core
