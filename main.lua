--// SilverHub Main (SAFE VERSION)
--// User: amabar49-boop

print("SilverHub main.lua started")

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Notif test
pcall(function()
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "SilverHub",
		Text = "Main.lua berjalan",
		Duration = 5
	})
end)

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "SilverHubMain"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Main frame
local main = Instance.new("Frame")
main.Parent = gui
main.Size = UDim2.fromScale(0.45, 0.4)
main.Position = UDim2.fromScale(0.5, 0.5)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
main.BorderSizePixel = 0
main.Visible = true

Instance.new("UICorner", main).CornerRadius = UDim.new(0, 14)

-- Title
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0.2, 0)
title.BackgroundTransparency = 1
title.Text = "SilverHub | amabar49-boop"
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Button
local btn = Instance.new("TextButton", main)
btn.Size = UDim2.fromScale(0.8, 0.2)
btn.Position = UDim2.fromScale(0.1, 0.6)
btn.Text = "TEST BUTTON"
btn.Font = Enum.Font.GothamBold
btn.TextSize = 16
btn.TextColor3 = Color3.fromRGB(255,255,255)
btn.BackgroundColor3 = Color3.fromRGB(80, 80, 160)
btn.BorderSizePixel = 0

Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 12)

btn.MouseButton1Click:Connect(function()
	print("Button clicked")
end)

print("SilverHub main.lua finished loading")
