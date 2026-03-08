-- Core/Security/encryption.lua

local Encrypt = {}

function Encrypt:Encode(text)

	local encoded = ""

	for i=1,#text do
		encoded = encoded..string.char(text:byte(i)+2)
	end

	return encoded

end

return Encrypt
