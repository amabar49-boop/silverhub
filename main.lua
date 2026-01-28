print("MAIN UI START")

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "SilverHubSimple"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Frame utama
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 300, 0, 180)
main.Position = UDim2.new(0.5, -150, 0.5, -90)
main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
main.BorderSizePixel = 0

Instance.new("UICorner", main).CornerRadius = UDim.new(0, 12)

-- Judul
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "SilverHub"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true

-- Tombol
local button = Instance.new("TextButton", main)
button.Size = UDim2.new(0.8, 0, 0, 50)
button.Position = UDim2.new(0.1, 0, 0.55, 0)
button.Text = "Klik Aku"
button.BackgroundColor3 = Color3.fromRGB(70, 70, 150)
button.TextColor3 = Color3.fromRGB(255,255,255)
button.BorderSizePixel = 0

Instance.new("UICorner", button).CornerRadius = UDim.new(0, 10)

-- Aksi tombol
button.MouseButton1Click:Connect(function()
	print("Button diklik!")
	button.Text = "Berhasil!"
end)

print("MAIN UI END")
