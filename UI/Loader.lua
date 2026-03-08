local Loader = {}

function Loader:Start()

    local TweenService = game:GetService("TweenService")
    local player = game.Players.LocalPlayer

    local gui = Instance.new("ScreenGui")
    gui.Name = "DuyModLoader"
    gui.ResetOnSpawn = false
    gui.Parent = player:WaitForChild("PlayerGui")

    local background = Instance.new("Frame")
    background.Size = UDim2.new(1,0,1,0)
    background.BackgroundColor3 = Color3.fromRGB(10,10,15)
    background.Parent = gui

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1,0,0,80)
    title.Position = UDim2.new(0,0,0.35,0)
    title.BackgroundTransparency = 1
    title.Text = "DUYMOD HUB"
    title.TextScaled = true
    title.Font = Enum.Font.GothamBlack
    title.TextColor3 = Color3.fromRGB(0,170,255)
    title.Parent = background

    local percent = Instance.new("TextLabel")
    percent.Size = UDim2.new(0,200,0,30)
    percent.Position = UDim2.new(0.5,-100,0.48,0)
    percent.BackgroundTransparency = 1
    percent.Text = "0%"
    percent.TextScaled = true
    percent.Font = Enum.Font.GothamBold
    percent.TextColor3 = Color3.fromRGB(255,255,255)
    percent.Parent = background

    local barBG = Instance.new("Frame")
    barBG.Size = UDim2.new(0.4,0,0,18)
    barBG.Position = UDim2.new(0.5,-200,0.55,0)
    barBG.BackgroundColor3 = Color3.fromRGB(40,40,40)
    barBG.Parent = background

    local bar = Instance.new("Frame")
    bar.Size = UDim2.new(0,0,1,0)
    bar.BackgroundColor3 = Color3.fromRGB(0,170,255)
    bar.Parent = barBG

    for i = 1,100 do

        percent.Text = i.."%"

        TweenService:Create(
            bar,
            TweenInfo.new(0.03),
            {Size = UDim2.new(i/100,0,1,0)}
        ):Play()

        task.wait(0.03)

    end

    task.wait(0.5)

    gui:Destroy()

end

return Loader
