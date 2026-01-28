-- Load Obsidian Library
local Obsidian = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Obsidian.lua"
))()

-- Create Window
local Window = Obsidian:CreateWindow({
    Title = "SilverHub | Fish It",
    Footer = "by amabar49-boop",
    ToggleKey = Enum.KeyCode.RightControl
})

-- Create Tab
local MainTab = Window:AddTab({
    Title = "Main",
    Icon = "fish"
})

-- Section
local MainSection = MainTab:AddSection({
    Title = "Fish It"
})

-- Button
MainSection:AddButton({
    Title = "Test Button",
    Description = "Cek apakah UI muncul",
    Callback = function()
        Obsidian:Notify({
            Title = "SilverHub",
            Content = "UI Obsidian berhasil muncul ✅",
            Duration = 3
        })
    end
})

-- Toggle
MainSection:AddToggle({
    Title = "Auto Fish (Dummy)",
    Default = false,
    Callback = function(v)
        print("Auto Fish:", v)
    end
})
