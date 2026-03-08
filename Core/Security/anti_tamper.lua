-- Core/Security/anti_tamper.lua

local Anti = {}

function Anti:Check()

	if getgenv == nil then
		warn("Executor not supported")
	end

end

return Anti
