--// SilverHub - Block Brainrot FIX
print("SilverHub main started")

repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "SilverHubMain"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true

-- IMPORTANT PART
local parent = gethui and gethui() or game:GetService("CoreGui")
gui.Parent = parent

-- Main frame
local main = Instance.new("Frame", gui)
main.Size = UDim2.fromScale(0.45, 0.4)
main.Position = UDim2.fromScale(0.5, 0.5)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
main.BorderSizePixel = 0
main.Visible = true

Instance.new("UICorner", main).CornerRadius = UDim.new(0, 16)

-- Title
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0.2, 0)
title.BackgroundTransparency = 1
title.Text = "SilverHub | Block Brainrot"
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextColor3 = Color3.fromRGB(255,255,255)

-- Test Button
local btn = Instance.new("TextButton", main)
btn.Size = UDim2.fromScale(0.8, 0.25)
btn.Position = UDim2.fromScale(0.1, 0.5)
btn.Text = "TEST FEATURE"
btn.Font = Enum.Font.GothamBold
btn.TextSize = 16
btn.TextColor3 = Color3.fromRGB(255,255,255)
btn.BackgroundColor3 = Color3.fromRGB(90, 90, 170)
btn.BorderSizePixel = 0
Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 12)

btn.MouseButton1Click:Connect(function()
	print("Button clicked in Block Brainrot")
end)

-- Notif
pcall(function()
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "SilverHub",
		Text = "Main UI berhasil muncul (Block Brainrot)",
		Duration = 4
	})
end)
