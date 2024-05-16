Clip = false

local speaker = game.Players.LocalPlayer
wait(0.1)
local function NoclipLoop()
	if Clip == false and speaker.Character ~= nil then
		for _, child in pairs(speaker.Character:GetDescendants()) do
			if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
				child.CanCollide = false
			end
		end
	end
end
Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
workspace:FindFirstChildOfClass('Terrain').WaterWaveSize = 0
workspace:FindFirstChildOfClass('Terrain').WaterWaveSpeed = 0
workspace:FindFirstChildOfClass('Terrain').WaterReflectance = 0
workspace:FindFirstChildOfClass('Terrain').WaterTransparency = 0
game:GetService("Lighting").GlobalShadows = false
game:GetService("Lighting").FogEnd = 9e9
settings().Rendering.QualityLevel = 1
for i, v in pairs(game:GetDescendants()) do
	if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or
		v:IsA("TrussPart") then
		v.Material = "Plastic"
		v.Reflectance = 0
	elseif v:IsA("Decal") then
		v.Transparency = 1
	elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
		v.Lifetime = NumberRange.new(0)
	elseif v:IsA("Explosion") then
		v.BlastPressure = 1
		v.BlastRadius = 1
	end
end
for i, v in pairs(game:GetService("Lighting"):GetDescendants()) do
	if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or
		v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
		v.Enabled = false
	end
end
workspace.DescendantAdded:Connect(function(child)
	coroutine.wrap(function()
		if child:IsA('ForceField') then
			game:GetService('RunService').Heartbeat:Wait()
			child:Destroy()
		elseif child:IsA('Sparkles') then
			game:GetService('RunService').Heartbeat:Wait()
			child:Destroy()
		elseif child:IsA('Smoke') or child:IsA('Fire') then
			game:GetService('RunService').Heartbeat:Wait()
			child:Destroy()
		end
	end)()
end)

local timeBegan = tick()
for i, v in ipairs(workspace:GetDescendants()) do
	if v:IsA("BasePart") then
		v.Material = "SmoothPlastic"
	end
end
for i, v in ipairs(game:GetService("Lighting"):GetChildren()) do
	v:Destroy()
end
local timeEnd = tick() - timeBegan
local timeMS = math.floor(timeEnd * 1000)

local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
	if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
		v.Material = "Plastic"
		v.Reflectance = 0
	elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
		v.Transparency = 1
	elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
		v.Lifetime = NumberRange.new(0)
	elseif v:IsA("Explosion") then
		v.BlastPressure = 1
		v.BlastRadius = 1
	elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
		v.Enabled = false
	elseif v:IsA("MeshPart") then
		v.Material = "Plastic"
		v.Reflectance = 0
		v.TextureID = 10385902758728957
	end
end
for i, e in pairs(l:GetChildren()) do
	if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or
		e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
		e.Enabled = false
	end
end

local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
	if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
		v.Material = "Plastic"
		v.Reflectance = 0
	elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
		v.Transparency = 1
	elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
		v.Lifetime = NumberRange.new(0)
	elseif v:IsA("Explosion") then
		v.BlastPressure = 1
		v.BlastRadius = 1
	elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
		v.Enabled = false
	elseif v:IsA("MeshPart") then
		v.Material = "Plastic"
		v.Reflectance = 0
		v.TextureID = 10385902758728957
	end
end
for i, e in pairs(l:GetChildren()) do
	if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or
		e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
		e.Enabled = false
	end
end

function RandomVariable(length)
	local res = ""
	for i = 1, length do
		res = res .. string.char(math.random(97, 122))
	end
	return res
end

-- Gui to Lua
-- Version: 3.2
game:GetService("RunService"):Set3dRenderingEnabled(false)
-- Instances:

local PSiwshuwDUItgsuiz = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")

--Properties:

PSiwshuwDUItgsuiz.Name = RandomVariable(20)
PSiwshuwDUItgsuiz.Parent = game.CoreGui
PSiwshuwDUItgsuiz.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
PSiwshuwDUItgsuiz.IgnoreGuiInset = true

Frame.Parent = PSiwshuwDUItgsuiz
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(1, 0, 1, 36)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.379002213, 0, 0.0237247907, 0)
TextLabel.Size = UDim2.new(0, 325, 0, 54)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "Dorans AltControl v1"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
TextButton.Position = UDim2.new(0.293445259, 0, 0.123193428, 0)
TextButton.Size = UDim2.new(0, 274, 0, 72)
TextButton.Font = Enum.Font.Code
TextButton.Text = " Copy Discord "
TextButton.TextColor3 = Color3.fromRGB(220, 220, 220)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 30)
UICorner.Parent = TextButton

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
TextButton_2.Position = UDim2.new(0.534929276, 0, 0.123193428, 0)
TextButton_2.Size = UDim2.new(0, 274, 0, 72)
TextButton_2.Font = Enum.Font.Code
TextButton_2.Text = "  Leave Game  "
TextButton_2.TextColor3 = Color3.fromRGB(220, 220, 220)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 30)
UICorner_2.Parent = TextButton_2

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.378997803, 0, 0.869513631, 0)
TextLabel_2.Size = UDim2.new(0, 325, 0, 54)
TextLabel_2.Font = Enum.Font.Code
TextLabel_2.Text = "Version 1"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.350120336, 0, 0.290628701, 0)
TextLabel_3.Size = UDim2.new(0, 907, 0, 54)
TextLabel_3.Font = Enum.Font.Code
TextLabel_3.Text = "Name: NotAimbot20201"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 49.000
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.378457874, 0, 0.369802684, 0)
TextLabel_4.Size = UDim2.new(0, 907, 0, 54)
TextLabel_4.Font = Enum.Font.Code
TextLabel_4.Text = "Money: HOLDER"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 49.000
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left


-- Scripts:

local function XCBMJ_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local StarterGui = game:GetService("StarterGui")
	StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)

	local StarterGui = game:GetService("StarterGui")
	StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)

	local StarterGui = game:GetService("StarterGui")
	StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)

	local StarterGui = game:GetService("StarterGui")
	StarterGui:SetCore("TopbarEnabled", false)

	local UIS = game:GetService("UserInputService")
	UIS.ModalEnabled = true
end
coroutine.wrap(XCBMJ_fake_script)()
local function PPEQE_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local button = script.Parent

	function leftClick()
		setclipboard("https://discord.gg/A26rSsfsS")
	end

	button.MouseButton1Click:Connect(leftClick)
end
coroutine.wrap(PPEQE_fake_script)()
local function CDDHNKJ_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local button = script.Parent

	function leftClick()
		setclipboard(
			"https://www.roblox.com/groups/7482906/fire-is-fire-no-liars#!/about")
	end

	button.MouseButton1Click:Connect(leftClick)
end
coroutine.wrap(CDDHNKJ_fake_script)()
local function RUQFMCI_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_2)

	local button = script.Parent

	function leftClick()
		game.Players.LocalPlayer:Kick('Left game succcessfully.')
	end

	button.MouseButton1Click:Connect(leftClick)
end
coroutine.wrap(RUQFMCI_fake_script)()
local function PJZGR_fake_script() -- TextLabel_3.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_3)

	local text = script.Parent

	text.Text = "Name: " .. game.Players.LocalPlayer.Name
end
coroutine.wrap(PJZGR_fake_script)()
local function WDTSQEC_fake_script() -- TextLabel_4.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_4)

	local text = script.Parent

	while wait() do
		text.Text = "Money: " ..
			game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.MoneyText.Text
	end
end
coroutine.wrap(WDTSQEC_fake_script)()

local RunService = game:GetService("RunService")
local MaxFPS = getgenv().altFPS
while true do
	local t0 = tick()
	RunService.Heartbeat:Wait()
	repeat
	until (t0 + 1 / MaxFPS) < tick()
end
