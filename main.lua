print("MAIN START")

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- bikin ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "TestUI"
gui.ResetOnSpawn = false

-- PARENT PALING AMAN (PlayerGui)
gui.Parent = player:WaitForChild("PlayerGui")

-- frame
local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
frame.BorderSizePixel = 0

-- text
local text = Instance.new("TextLabel")
text.Parent = frame
text.Size = UDim2.new(1, 0, 1, 0)
text.BackgroundTransparency = 1
text.Text = "UI MUNCUL"
text.TextColor3 = Color3.fromRGB(255,255,255)
text.TextScaled = true

print("MAIN END")
