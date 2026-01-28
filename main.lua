print("SilverHub MENU TOGGLE START")

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
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

-- Frame utama
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
local toggleMenu = Instance.new("TextButton", main)
toggleMenu.Size = UDim2.new(0.8, 0, 0, 50)
toggleMenu.Position = UDim2.new(0.1, 0, 0.5, 0)
toggleMenu.Text = "TUTUP MENU"
toggleMenu.BackgroundColor3 = Color3.fromRGB(70, 70, 150)
toggleMenu.TextColor3 = Color3.fromRGB(255,255,255)
toggleMenu.BorderSizePixel = 0
toggleMenu.Font = Enum.Font.Gotham
toggleMenu.TextSize = 16
Instance.new("UICorner", toggleMenu).CornerRadius = UDim.new(0, 10)

-- Toggle logic
local open = true

toggleMenu.MouseButton1Click:Connect(function()
	open = not open
	main.Visible = open
end)

-- Keybind toggle (RightShift)
UIS.InputBegan:Connect(function(input, gp)
	if gp then return end
	if input.KeyCode == Enum.KeyCode.RightShift then
		open = not open
		main.Visible = open
	end
end)

print("SilverHub MENU TOGGLE LOADED")
