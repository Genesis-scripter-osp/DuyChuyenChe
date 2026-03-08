-- Core/Network/update.lua

local Update = {}

Update.Version = "1.0"

function Update:Check(url)
	local new = game:HttpGet(url)

	if new ~= self.Version then
		print("New update available")
	end
end

return Update
