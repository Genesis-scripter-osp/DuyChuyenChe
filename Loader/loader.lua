-- DuyMod Loader

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local BarBG = Instance.new("Frame")
local Bar = Instance.new("Frame")
local Percent = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

Frame.Size = UDim2.new(0,300,0,120)
Frame.Position = UDim2.new(1,-320,1,-150)
Frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
Frame.Parent = ScreenGui

Title.Text = "DuyMod Hub Loading"
Title.Size = UDim2.new(1,0,0,40)
Title.TextColor3 = Color3.new(1,1,1)
Title.BackgroundTransparency = 1
Title.Parent = Frame

BarBG.Size = UDim2.new(0.9,0,0,20)
BarBG.Position = UDim2.new(0.05,0,0.5,0)
BarBG.BackgroundColor3 = Color3.fromRGB(40,40,40)
BarBG.Parent = Frame

Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(0,170,255)
Bar.Parent = BarBG

Percent.Text = "0%"
Percent.Position = UDim2.new(0,0,0.75,0)
Percent.Size = UDim2.new(1,0,0,20)
Percent.BackgroundTransparency = 1
Percent.TextColor3 = Color3.new(1,1,1)
Percent.Parent = Frame

for i = 1,100 do
    Bar.Size = UDim2.new(i/100,0,1,0)
    Percent.Text = i.."%"
    task.wait(0.02)
end

loadstring(game:HttpGet("MAIN_SCRIPT_URL"))()
