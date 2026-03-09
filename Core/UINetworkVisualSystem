-- Core UI Visual System

local UI = {}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0,600,0,400)
Main.Position = UDim2.new(0.5,-300,0.5,-200)
Main.BackgroundColor3 = Color3.fromRGB(20,20,20)
Main.Parent = ScreenGui

local Tabs = Instance.new("Frame")
Tabs.Size = UDim2.new(0,150,1,0)
Tabs.BackgroundColor3 = Color3.fromRGB(30,30,30)
Tabs.Parent = Main

local Content = Instance.new("Frame")
Content.Size = UDim2.new(1,-150,1,0)
Content.Position = UDim2.new(0,150,0,0)
Content.BackgroundTransparency = 1
Content.Parent = Main

function UI:CreateTab(name)

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(1,0,0,40)
    Button.Text = name
    Button.Parent = Tabs

    local Page = Instance.new("Frame")
    Page.Size = UDim2.new(1,0,1,0)
    Page.Visible = false
    Page.Parent = Content

    Button.MouseButton1Click:Connect(function()

        for _,v in pairs(Content:GetChildren()) do
            v.Visible = false
        end

        Page.Visible = true

    end)

    return Page
end

function UI:CreateButton(parent,text,callback)

    local Btn = Instance.new("TextButton")
    Btn.Size = UDim2.new(0,180,0,40)
    Btn.Text = text
    Btn.Parent = parent

    Btn.MouseButton1Click:Connect(callback)

end

_G.DuyUI = UI
return UI
