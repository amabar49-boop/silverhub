-- Fish It Hub | Loader
-- Obsidian UI
-- github.com/USERNAME/REPO

local BASE_URL = "https://raw.githubusercontent.com/amabar49-boop/silverhub/main/"

-- anti double execute
if getgenv().FISHIT_LOADER then
    return
end
getgenv().FISHIT_LOADER = true

local function safeLoad(file)
    local ok, data = pcall(function()
        return game:HttpGet(BASE_URL .. file)
    end)

    if not ok or not data then
        warn("[Fish It] Gagal HttpGet:", file)
        return
    end

    local func, err = loadstring(data)
    if not func then
        warn("[Fish It] Loadstring error:", err)
        return
    end

    func()
end

-- load main UI
safeLoad("main.lua")
