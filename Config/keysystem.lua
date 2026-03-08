local Key = {}

Key.RequiredKey = "DUYMOD123"

function Key:Check(input)

	return input == self.RequiredKey

end

return Key
