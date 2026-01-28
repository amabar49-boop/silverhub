--// SilverHub Loader UI
--// User: amabar49-boop

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "SilverHubLoader"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Main Frame
local main = Instance.new("Frame", gui)
main.Size = UDim2.fromScale(0.35, 0.3)
main.Position = UDim2.fromScale(0.5, 0.5)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
main.BorderSizePixel = 0
main.BackgroundTransparency = 0

Instance.new("UICorner", main).CornerRadius = UDim.new(0, 14)

-- Title
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0.25, 0)
title.BackgroundTransparency = 1
title.Text = "SilverHub Loader"
title.TextColor3 = Color3.fromRGB(220, 220, 220)
title.Font = Enum.Font.GothamBold
title.TextSize = 24

-- Info
local info = Instance.new("TextLabel", main)
info.Position = UDim2.fromScale(0, 0.3)
info.Size = UDim2.new(1, 0, 0.2, 0)
info.BackgroundTransparency = 1
info.Text = "User: amabar49-boop\nRepo: silverhub"
info.TextColor3 = Color3.fromRGB(180, 180, 180)
info.Font = Enum.Font.Gotham
info.TextSize = 14
info.TextWrapped = true

-- Loading Bar BG
local barBG = Instance.new("Frame", main)
barBG.Position = UDim2.fromScale(0.1, 0.7)
barBG.Size = UDim2.fromScale(0.8, 0.12)
barBG.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
barBG.BorderSizePixel = 0
Instance.new("UICorner", barBG).CornerRadius = UDim.new(1, 0)

-- Loading Bar
local bar = Instance.new("Frame", barBG)
bar.Size = UDim2.fromScale(0, 1)
bar.BackgroundColor3 = Color3.fromRGB(120, 120, 255)
bar.BorderSizePixel = 0
Instance.new("UICorner", bar).CornerRadius = UDim.new(1, 0)

-- Tween animation
local tween = TweenService:Create(
	bar,
	TweenInfo.new(2.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{Size = UDim2.fromScale(1, 1)}
)
tween:Play()

tween.Completed:Wait()

-- Load main script
pcall(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/silverhub/main.lua"))()
end)

-- Fade out
local fade = TweenService:Create(
	main,
	TweenInfo.new(0.6),
	{BackgroundTransparency = 1}
)
fade:Play()

task.wait(0.7)
gui:Destroy()
