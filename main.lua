local HttpService = game:GetService("HttpService")

local value = "This is a test"
local decode = nil
local url = "https://networkcalc.com/api/encoder/" .. value .. "?encoding=base64"

if decode then
	url = url .. "&decode=true"
end

local response = HttpService:GetAsync(url)

print(HttpService:JSONDecode(response))
