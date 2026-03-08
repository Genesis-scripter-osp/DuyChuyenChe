-- Core/UI/toggles.lua

local Toggle = {}

function Toggle:Create(parent,text,callback)

	local state = false

	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(0,180,0,40)
	btn.Text = text.." : OFF"
	btn.Parent = parent

	btn.MouseButton1Click:Connect(function()

		state = not state

		btn.Text = text.." : "..(state and "ON" or "OFF")

		callback(state)

	end)

end

return Toggle
