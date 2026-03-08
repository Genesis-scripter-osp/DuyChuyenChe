-- Core/UI/sliders.lua

local Slider = {}

function Slider:Create(parent,min,max,callback)

	local value = min

	local frame = Instance.new("Frame",parent)
	frame.Size = UDim2.new(0,200,0,30)

	local label = Instance.new("TextLabel",frame)
	label.Size = UDim2.new(1,0,1,0)
	label.Text = tostring(value)

	frame.InputBegan:Connect(function()
		value = math.random(min,max)
		label.Text = tostring(value)
		callback(value)
	end)

end

return Slider
