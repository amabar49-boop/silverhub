print("SilverHub BASIC UI START")

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local player = Players.LocalPlayer

-- Hapus UI lama kalau ada
pcall(function()
	player.PlayerGui:FindFirstChild("SilverHubUI"):Destroy()
end)

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "SilverHubUI"
gui.ResetOnSpawn = false
gui.Parent = player.PlayerGui

-- Main frame
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 300, 0, 180)
main.Position = UDim2.new(0.5, -150, 0.5, -90)
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
title.TextSize = 22
title.Font = Enum.Font.GothamBold

-- Close button
local close = Instance.new("TextButton", main)
close.Size = UDim2.new(0, 30, 0, 30)
close.Position = UDim2.new(1, -35, 0, 5)
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255,255,255)
close.BackgroundColor3 = Color3.fromRGB(150,50,50)
close.BorderSizePixel = 0
close.Font = Enum.Font.GothamBold
close.TextSize = 16
Instance.new("UICorner", close).CornerRadius = UDim.new(0, 8)

close.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

-- Button
local button = Instance.new("TextButton", main)
button.Size = UDim2.new(0.8, 0, 0, 50)
button.Position = UDim2.new(0.1, 0, 0.55, 0)
button.Text = "TEST BUTTON"
button.BackgroundColor3 = Color3.fromRGB(70, 90, 160)
button.TextColor3 = Color3.fromRGB(255,255,255)
button.BorderSizePixel = 0
button.Font = Enum.Font.Gotham
button.TextSize = 16
Instance.new("UICorner", button).CornerRadius = UDim.new(0, 10)

button.MouseButton1Click:Connect(function()
	button.Text = "OK 👍"
	print("Button clicked")
end)

-- Toggle UI (RightShift)
UIS.InputBegan:Connect(function(input, gp)
	if gp then return end
	if input.KeyCode == Enum.KeyCode.RightShift then
		main.Visible = not main.Visible
	end
end)

print("SilverHub BASIC UI LOADED")
