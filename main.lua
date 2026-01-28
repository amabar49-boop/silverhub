repeat task.wait() until game:IsLoaded()

local Obsidian = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Obsidian.lua"
))()

local Window = Obsidian:CreateWindow({
    Title = "SilverHub | Fish It",
    Footer = "by amabar49-boop",
    ToggleKey = Enum.KeyCode.RightControl
})

local Tab = Window:AddTab({
    Title = "Main",
    Icon = "fish"
})

local Section = Tab:AddSection({
    Title = "Fish It"
})

Section:AddButton({
    Title = "Test UI",
    Callback = function()
        Obsidian:Notify({
            Title = "SilverHub",
            Content = "Obsidian UI muncul ✅",
            Duration = 3
        })
    end
})
