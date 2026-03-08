-- Core Network

local Network = {}

function Network:Get(url)
    return game:HttpGet(url)
end

function Network:LoadScript(url)
    return loadstring(game:HttpGet(url))()
end

function Network:CheckUpdate(versionUrl,current)
    local version = game:HttpGet(versionUrl)

    if version ~= current then
        warn("Hub Update Available")
    end
end

function Network:GetGameID()
    return game.PlaceId
end

return Network
