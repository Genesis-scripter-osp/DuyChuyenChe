-- Core/UI/ui_main.lua

local UI = {}

local gui = Instance.new("ScreenGui")
gui.Parent = game.CoreGui

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,600,0,400)
main.Position = UDim2.new(0.5,-300,0.5,-200)
main.BackgroundColor3 = Color3.fromRGB(20,20,20)

local tabs = Instance.new("Frame", main)
tabs.Size = UDim2.new(0,150,1,0)
tabs.BackgroundColor3 = Color3.fromRGB(30,30,30)

local content = Instance.new("Frame", main)
content.Size = UDim2.new(1,-150,1,0)
content.Position = UDim2.new(0,150,0,0)
content.BackgroundTransparency = 1

function UI:CreateTab(name)

	local btn = Instance.new("TextButton",tabs)
	btn.Size = UDim2.new(1,0,0,40)
	btn.Text = name

	local page = Instance.new("Frame",content)
	page.Size = UDim2.new(1,0,1,0)
	page.Visible = false

	btn.MouseButton1Click:Connect(function()
		for _,v in pairs(content:GetChildren()) do
			v.Visible = false
		end
		page.Visible = true
	end)

	return page
end

return UI
