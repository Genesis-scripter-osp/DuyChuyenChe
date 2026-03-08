local ESP = {}

function ESP:Enable()

	for _,v in pairs(game.Players:GetPlayers()) do
		print("ESP:",v.Name)
	end

end

return ESP
