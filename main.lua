--// SilverHub - No Loader Universal UI
--// User: amabar49-boop

repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

-- SAFE GUI PARENT
local function getParent()
	if gethui then
		local ok, res = pcall(gethui)
		if ok and res then
			return res
		end
	end
	return CoreGui
end

-- REMOVE OLD UI
pcall(function()
	for _, v in pairs(getParent():GetChildren()) do
		if v.Name == "SilverHubUI" then
			v:Destroy()
		end
	end
end)

-- SCREEN GUI
local gui = Instance.new("ScreenGui")
gui.Name = "SilverHubUI"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
gui.Parent = getParent()

-- MAIN FRAME
local main = Instance.ne
