-- Core/Network/server.lua

local Server = {}

function Server:GetPlaceId()
	return game.PlaceId
end

function Server:GetPlayers()
	return game.Players:GetPlayers()
end

return Server
