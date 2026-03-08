-- Game Loader

local Games = {}

local Supported = {

    [2753915549] = "BloxFruits",
    [4442272183] = "PetSimulator",
    [142823291] = "MurderMystery"

}

function Games:Load()

    local id = game.PlaceId

    if Supported[id] == "BloxFruits" then
        loadstring(game:HttpGet("BLOX_SCRIPT"))()
    end

end

return Games
