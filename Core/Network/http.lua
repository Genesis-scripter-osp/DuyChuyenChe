-- Core/Network/http.lua

local Http = {}

function Http:Get(url)
	return game:HttpGet(url)
end

function Http:Load(url)
	return loadstring(game:HttpGet(url))()
end

return Http
