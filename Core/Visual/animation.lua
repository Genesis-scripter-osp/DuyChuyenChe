-- Core/Visual/animation.lua

local Animation = {}
local TweenService = game:GetService("TweenService")

function Animation:Tween(obj,goal,time)

	local tween = TweenService:Create(
		obj,
		TweenInfo.new(time),
		goal
	)

	tween:Play()

end

return Animation
