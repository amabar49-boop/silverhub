local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "DebugGui"
gui.Parent = player:WaitForChild("PlayerGui")

local text = Instance.new("TextLabel")
text.Size = UDim2.new(0, 300, 0, 100)
text.Position = UDim2.new(0.5, -150, 0.5, -50)
text.Text = "MAIN LUA JALAN ✅"
text.TextScaled = true
text.BackgroundColor3 = Color3.fromRGB(25,25,25)
text.TextColor3 = Color3.new(1,1,1)
text.Parent = gui
