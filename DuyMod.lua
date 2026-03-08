local DuyMod = {}

DuyMod.Core = {}
DuyMod.Systems = {}
DuyMod.Visual = {}
DuyMod.UI = {}
DuyMod.Utility = {}

local repo =
"https://raw.githubusercontent.com/DuyChuyenChe/DuyModHub/main/"

function DuyMod:Load(path)

    local success,module = pcall(function()

        return loadstring(
            game:HttpGet(repo..path..".lua")
        )()

    end)

    if success then
        return module
    else
        warn("Load failed:",path)
    end

end


function DuyMod:InitCore()

    self.Core.Network = self:Load("Core/NetworkManager")
    self.Core.Player = self:Load("Core/PlayerManager")
    self.Core.Target = self:Load("Core/TargetSystem")
    self.Core.Combat = self:Load("Core/CombatAI")

end


function DuyMod:InitSystems()

    self.Systems.AutoFarm = self:Load("Systems/SmartAutoFarm")
    self.Systems.SeaEvent = self:Load("Systems/AutoSeaEvent")

end


function DuyMod:InitVisual()

    self.Visual.ESP = self:Load("Visual/AdvancedESP")

end


function DuyMod:InitUI()

    self.UI.Loader = self:Load("UI/Loader")
    self.UI.MainUI = self:Load("UI/MainUI")

    self.UI.Loader:Start()

    self.UI.MainUI:Create(self)

end


function DuyMod:Start()

    self:InitCore()
    self:InitSystems()
    self:InitVisual()
    self:InitUI()

end


DuyMod:Start()

return DuyMod
