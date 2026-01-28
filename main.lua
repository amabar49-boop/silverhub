print("SilverHub TOGGLE START")

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
title.Text = "SilverHub - Toggle"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.Font = Enum.Font.GothamBold
title.TextSize = 20

-- Toggle button
local toggle = Instance.new("TextButton", main)
toggle.Size = UDim2.new(0.8, 0, 0, 50)
toggle.Position = UDim2.new(0.1, 0, 0.45, 0)
toggle.Text = "Auto AFK : OFF"
toggle.BackgroundColor3 = Color3.fromRGB(120, 60, 60)
toggle.TextColor3 = Color3.fromRGB(255,255,255)
toggle.BorderSizePixel = 0
toggle.Font = Enum.Font.Gotham
toggle.TextSize = 16
Instance.new("UICorner", toggle).CornerRadius = UDim.new(0, 10)

-- Toggle logic
local enabled = false
local afkLoop

toggle.MouseButton1Click:Connect(function()
	enabled = not enabled

	if enabled then
		toggle.Text = "Auto AFK : ON"
		toggle.BackgroundColor3 = Color3.fromRGB(60, 120, 60)

		afkLoop = task.spawn(function()
			while enabled do
				print("AFK aktif")
				task.wait(20)
			end
		end)
	else
		toggle.Text = "Auto AFK : OFF"
		toggle.BackgroundColor3 = Color3.fromRGB(120, 60, 60)
	end
end)

-- Toggle UI (RightShift)
UIS.InputBegan:Connect(function(input, gp)
	if gp then return end
	if input.KeyCode == Enum.KeyCode.RightShift then
		main.Visible = not main.Visible
	end
end)

print("Silve

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
