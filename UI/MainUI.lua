local UILib = require(script.Parent.Library)

local MainUI = {}

function MainUI:Create(hub)

    local window = UILib:CreateWindow("DuyMod Hub")

    local autoFarm = Instance.new("TextButton")
    autoFarm.Size = UDim2.new(0,150,0,40)
    autoFarm.Text = "Auto Farm"
    autoFarm.Parent = window

    autoFarm.MouseButton1Click:Connect(function()

        hub.Systems.AutoFarm:Start()

    end)


    local esp = Instance.new("TextButton")
    esp.Size = UDim2.new(0,150,0,40)
    esp.Position = UDim2.new(0,0,0,50)
    esp.Text = "ESP Enemy"
    esp.Parent = window

    esp.MouseButton1Click:Connect(function()

        hub.Visual.ESP:Start()

    end)

end

return MainUI
