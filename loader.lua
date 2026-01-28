local url = "https://raw.githubusercontent.com/amabar49-boop/silverhub/main/main.lua"

local ok, err = pcall(function()
    loadstring(game:HttpGet(url))()
end)

if not ok then
    warn("Loader error:", err)
end
