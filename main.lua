--// SilverHub Universal Main
--// Works on ALL games (anti UI destroy)
--// User: amabar49-boop

repeat task.wait() until game:IsLoaded()

-- ==== SERVICES ====
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

-- ==== SAFE PARENT ====
local function getSafeParent()
	if gethui then
		local ok, hui = pcall(gethui)
		if ok and hui then
			return hui
		end
	end
	return CoreGui
end

-- ==== UI CREATOR ====
local function createUI()
	-- destroy old if exists
	for _, v in pairs(getSafeParent():GetChildren()) do
		if v.Name == "SilverHubMain" then
			v:Destroy()
		end
	end

	local gui = Instance.new("ScreenGui")
	gui.Name = "SilverHubMain"
	gui.ResetOnSpawn = false
	gui.IgnoreGuiInset = true
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	gui.Parent = getSafeParent()

	-- main frame
	local main = Instance.new("Frame", gui)
	main.Size = UDim2.fromScale(0.45, 0.35)
	main.Position = UDim2.fromScale(0.5, 0.5)
	main.AnchorPoint = Vector2.new(0.5, 0.5)
	main.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	main.BorderSizePixel = 0
	main.Active = true
	main.Draggable = true

	Instance.new("UICorner", main).CornerRadius = UDim.new(0, 16)

	-- title
	local title = Instance.new("TextLabel", main)
	title.Size = UDim2.new(1, 0, 0.25, 0)
	title.BackgroundTransparency = 1
	title.Text = "SilverHub | Universal"
	title.Font = Enum.Font.GothamBold
	title.TextSize = 18
	title.TextColor3 = Color3.fromRGB(255, 255, 255)

	-- button
	local btn = Instance.new("TextButton", main)
	btn.Size = UDim2.fromScale(0.8, 0.3)
	btn.Position = UDim2.fromScale(0.1, 0.5)
	btn.Text = "TEST FEATURE"
	btn.Font = Enum.Font.GothamBold
	btn.TextSize = 16
	btn.TextColor3 = Color3.fromRGB(255,255,255)
	btn.BackgroundColor3 = Color3.fromRGB(90, 90, 170)
	btn.BorderSizePixel = 0
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 12)

	btn.MouseButton1Click:Connect(function()
		warn("[SilverHub] Button clicked")
	end)

	return gui
end

-- ==== UI PROTECTION LOOP ====
local gui = createUI()

task.spawn(function()
	while task.wait(1) do
		if not gui or not gui.Parent then
			warn("[SilverHub] UI destroyed, recreating...")
			gui = createUI()
		end
	end
end)

-- ==== NOTIFICATION TEST ====
pcall(function()
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "SilverHub",
		Text = "Main.lua loaded (Universal)",
		Duration = 4
	})
end)

warn("[SilverHub] Universal main.lua loaded successfully")
