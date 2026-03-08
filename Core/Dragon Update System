-- Dragon Update

local Update = {}

Update.Version = "1.0"

function Update:Check()

    local version = game:HttpGet("VERSION_URL")

    if version ~= self.Version then

        print("Updating Hub")

        loadstring(game:HttpGet("NEW_HUB_URL"))()

    end

end

return Update
