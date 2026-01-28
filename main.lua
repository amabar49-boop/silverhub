--// SilverHub Main
--// User: amabar49-boop

if getgenv().SilverHubLoaded then return end
getgenv().SilverHubLoaded = true

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local player = Players.LocalPlayer

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "SilverHubMain"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Main Frame
local main = Instance.new("Frame", gui)
main.Size = UDim2.fromScale(0.45, 0.5)
main.Position = UDim2.fromScale(0.5, 0.5)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(18,18,18)
main.BorderSizePixel = 0
Instance.new("UICorner", main).CornerRadius = UDim.new(0,16)

-- Top Bar
local top = Instance.new("Frame", main)
top.Size = UDim2.new(1,0,0.12,0)
top.BackgroundColor3 = Color3.fromRGB(25,25,25)
top.BorderSizePixel = 0
Instance.new("UICorner", top).CornerRadius = UDim.new(0,16)

-- Title
local title = Instance.new("TextLabel", top)
title.Size = UDim2.new(1,0,1,0)
title.BackgroundTransparency = 1
title.Text = "SilverHub  |  amabar49-boop"
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextColor3 = Color3.fromRGB(230,230,230)

-- Content
local content = Instance.new("Frame", main)
content.Position = UDim2.fromScale(0,0.14)
content.Size = UDim2.fromScale(1,0.86)
content.BackgroundTransparency = 1

-- Button Template
local function createButton(text, y)
	local btn = Instance.new("TextButton", content)
	btn.Size = UDim2.fromScale(0.8,0.12)
	btn.Position = UDim2.fromScale(0.1,y)
	btn.Text = text
	btn.Font = Enum.Font.GothamBold
	btn.TextSize = 16
	btn.TextColor3 = Color3.fromRGB(255,255,255)
	btn.BackgroundColor3 = Color3.fromRGB(60,60,120)
	btn.BorderSizePixel = 0
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0,12)
	return btn
end

-- Buttons
local btn1 = createButton("Example Feature 1", 0.05)
local btn2 = createButton("Example Feature 2", 0.22)
local btn3 = createButton("Close UI", 0.39)

-- Feature Example
btn1.MouseButton1Click:Connect(function()
	warn("[SilverHub] Feature 1 Activated")
end)

btn2.MouseButton1Click:Connect(function()
	warn("[SilverHub] Feature 2 Activated")
end)

btn3.MouseButton1Click:Connect(function()
	gui:Destroy()
	getgenv().SilverHubLoaded = false
end)

-- Toggle UI (RightShift)
UIS.InputBegan:Connect(function(input,gp)
	if gp then return end
	if input.KeyCode == Enum.KeyCode.RightShift then
		main.Visible = not main.Visible
	end
end)
