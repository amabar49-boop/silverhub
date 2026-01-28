print("SilverHub ANDROID DRAG FIX START")

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local player = Players.LocalPlayer

pcall(function()
	player.PlayerGui:FindFirstChild("SilverHubUI"):Destroy()
end)

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "SilverHubUI"
gui.ResetOnSpawn = false
gui.Parent = player.PlayerGui

-- ================= DRAG FUNCTION (ANDROID FIX) =================
local function makeDraggable(frame)
	local dragging = false
	local dragStart
	local startPos

	frame.MouseButton1Down:Connect(function()
		dragging = true
		dragStart = UIS:GetMouseLocation()
		startPos = frame.Position
	end)

	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = UIS:GetMouseLocation() - dragStart
			frame.Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		end
	end)
end

-- ================= FLOATING BUTTON =================
local floatBtn = Instance.new("TextButton", gui)
floatBtn.Size = UDim2.new(0, 50, 0, 50)
floatBtn.Position = UDim2.new(0, 20, 0.5, -25)
floatBtn.Text = "≡"
floatBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 160)
floatBtn.TextColor3 = Color3.fromRGB(255,255,255)
floatBtn.BorderSizePixel = 0
floatBtn.TextSize = 26
floatBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", floatBtn).CornerRadius = UDim.new(1, 0)

makeDraggable(floatBtn)

-- ================= MAIN MENU =================
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 300, 0, 200)
main.Position = UDim2.new(0.5, -150, 0.5, -100)
main.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
main.BorderSizePixel = 0
main.Visible = true
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 12)

makeDraggable(main)

-- Title
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "SilverHub"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.Font = Enum.Font.GothamBold
title.TextSize = 20

-- Close Button
local closeBtn = Instance.new("TextButton", main)
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.Text = "X"
closeBtn.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
closeBtn.TextColor3 = Color3.fromRGB(255,255,255)
closeBtn.BorderSizePixel = 0
closeBtn.TextSize = 16
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(1, 0)

-- Toggle menu
local open = true
local function toggleMenu()
	open = not open
	main.Visible = open
end

floatBtn.MouseButton1Click:Connect(toggleMenu)
closeBtn.MouseButton1Click:Connect(toggleMenu)

print("SilverHub ANDROID DRAG FIX LOADED")
