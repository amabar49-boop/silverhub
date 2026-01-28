print("SilverHub ANDROID UI START")

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Hapus UI lama
pcall(function()
	player.PlayerGui:FindFirstChild("SilverHubUI"):Destroy()
end)

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "SilverHubUI"
gui.ResetOnSpawn = false
gui.Parent = player.PlayerGui

-- ===== FLOATING BUTTON =====
local floatBtn = Instance.new("TextButton", gui)
floatBtn.Size = UDim2.new(0, 50, 0, 50)
floatBtn.Position = UDim2.new(0, 15, 0.5, -25)
floatBtn.Text = "≡"
floatBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 160)
floatBtn.TextColor3 = Color3.fromRGB(255,255,255)
floatBtn.BorderSizePixel = 0
floatBtn.TextSize = 26
Instance.new("UICorner", floatBtn).CornerRadius = UDim.new(1, 0)

-- ===== MAIN MENU =====
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 300, 0, 200)
main.Position = UDim2.new(0.5, -150, 0.5, -100)
main.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
main.BorderSizePixel = 0
main.Visible = true
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 12)

-- Title
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "SilverHub"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.Font = Enum.Font.GothamBold
title.TextSize = 20

-- Toggle Menu Button
local menuBtn = Instance.new("TextButton", main)
menuBtn.Size = UDim2.new(0.8, 0, 0, 50)
menuBtn.Position = UDim2.new(0.1, 0, 0.5, 0)
menuBtn.Text = "TUTUP MENU"
menuBtn.BackgroundColor3 = Color3.fromRGB(80, 80, 150)
menuBtn.TextColor3 = Color3.fromRGB(255,255,255)
menuBtn.BorderSizePixel = 0
menuBtn.Font = Enum.Font.Gotham
menuBtn.TextSize = 16
Instance.new("UICorner", menuBtn).CornerRadius = UDim.new(0, 10)

-- LOGIC
local open = true

local function toggleMenu()
	open = not open
	main.Visible = open
end

floatBtn.MouseButton1Click:Connect(toggleMenu)
menuBtn.MouseButton1Click:Connect(toggleMenu)

print("SilverHub ANDROID UI LOADED")
