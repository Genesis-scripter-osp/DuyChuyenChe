-- Core/Visual/notifications.lua

local Notify = {}

function Notify:Send(text)

	game.StarterGui:SetCore(
		"SendNotification",
		{
			Title = "DuyMod",
			Text = text,
			Duration = 5
		}
	)

end

return Notify
