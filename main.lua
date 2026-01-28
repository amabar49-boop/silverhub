repeat task.wait() until game:IsLoaded()

-- Load Obsidian Library
local Obsidian = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Obsidian.lua"
))()

-- Window
local Window = Obsidian:CreateWindow({
    Title = "SilverHub | Fish It",
    Footer = "by amabar49-boop",
    ToggleKey = Enum.KeyCode.RightControl
})

-- Main Tab
local MainTab = Window:AddTab({
    Title = "Main",
    Icon = "fish"
})

-- Section
local Section = MainTab:AddSection({
    Title = "Fish It Features"
})

-- Button test
Section:AddButton({
    Title = "Test UI",
    Description = "Cek Obsidian UI",
    Callback = function()
        Obsidian:Notify({
            Title = "SilverHub",
            Content = "Obsidian UI berhasil muncul ✅",
            Duration = 3
        })
    end
})

-- Toggle dummy
Section:AddToggle({
    Title = "Auto Fish (Dummy)",
    Default = false,
    Callback = function(state)
        print("Auto Fish:", state)
    end
})
