--[[ 
    Silver Hub Loader
    Author  : silverhub
    Repo    : amabar49-boop
    Branch  : main
]]

local BASE_URL = "https://raw.githubusercontent.com/silverhub/amabar49-boop/main/"

-- =============================
-- Anti Double Execute
-- =============================
if getgenv()._SILVER_HUB_LOADER then
    warn("[Silver Hub] Loader already executed")
    return
end
getgenv()._SILVER_HUB_LOADER = true

-- =============================
-- Safe Loader Function
-- =============================
local function Load(file)
    local ok, result = pcall(function()
        return game:HttpGet(BASE_URL .. file)
    end)

    if not ok or not result then
        warn("[Silver Hub] Failed to fetch:", file)
        return false
    end

    local func, err = loadstring(result)
    if not func then
        warn("[Silver Hub] Loadstring error in", file)
        warn(err)
        return false
    end

    local success, runtimeErr = pcall(func)
    if not success then
        warn("[Silver Hub] Runtime error in", file)
        warn(runtimeErr)
        return false
    end

    print("[Silver Hub] Loaded:", file)
    return true
end

-- =============================
-- Loader Start
-- =============================
print("[Silver Hub] Loader initialized successfully")

-- ⬇️ kalau nanti mau load file lain, tinggal aktifkan
-- Load("Main.lua")
-- Load("Autopickaxe.lua")
