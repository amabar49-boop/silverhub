-- Fish It Hub | Main UI (Obsidian)

local Obsidian = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Obsidian.lua"
))()

local Window = Obsidian:CreateWindow({
    Title = "Fish It Hub",
    Footer = "Silver Hub",
    ToggleKey = Enum.KeyCode.RightShift
})

local LoaderTab = Window:CreateTab("Loader", "home")

LoaderTab:AddButton({
    Title = "Load Fish It Script",
    Description = "Auto Fish • Auto Reel • AFK",
    Callback = function()
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/amabar49-boop/silverhub/main/fishit.lua"
        ))()
    end
})

LoaderTab:AddButton({
    Title = "Unload UI",
    Callback = function()
        game:GetService("CoreGui").Obsidian:Destroy()
    end
})
