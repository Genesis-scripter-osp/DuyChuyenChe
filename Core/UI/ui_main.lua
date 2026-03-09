local UI = _G.DuyUI

local Combat = UI:CreateTab("Combat")
local Farming = UI:CreateTab("Farming")
local ESP = UI:CreateTab("ESP")
local Misc = UI:CreateTab("Misc")

UI:CreateButton(Combat,"Aimbot",function()
    print("Aimbot Enabled")
end)

UI:CreateButton(Farming,"Auto Farm",function()
    print("Auto Farm Enabled")
end)

UI:CreateButton(ESP,"Player ESP",function()
    print("ESP Enabled")
end)

UI:CreateButton(Misc,"FPS Boost",function()
    print("FPS Boost Enabled")
end)
