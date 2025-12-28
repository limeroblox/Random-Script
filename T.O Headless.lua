-- edited by haxel :)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local cameraHandler = LocalPlayer.PlayerGui:WaitForChild("CameraHandler")
cameraHandler.Enabled = false

local headTilt = LocalPlayer.PlayerGui:WaitForChild("HeadTilt")
headTilt.Disabled = true

local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

local head = character:WaitForChild("Head")
head.CanCollide = false
head.CanTouch = false
head.CanQuery = false
head.MassLess = true
local torso = character:WaitForChild("Torso")
local neck = torso:WaitForChild("Neck")

local originalC0 = neck.C0
local scale = character:GetScale()

neck.C0 =
	CFrame.new(0, (originalC0.Y * scale) - 100, 0)
	* CFrame.Angles(math.rad(-90), 0, math.rad(180))

headTilt.Disabled = false
