

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local ScriptName = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local CandyFarm = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
main.Position = UDim2.new(0.238738745, 0, 0.313253015, 0)
main.Size = UDim2.new(0, 434, 0, 185)
main.Active = true
main.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = main

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.Position = UDim2.new(0.179723501, 0, 0, 0)
Title.Size = UDim2.new(0, 356, 0, 33)
Title.Font = Enum.Font.DenkOne
Title.Text = "Driving Empire Candy Auto farm"
Title.TextColor3 = Color3.fromRGB(255, 0, 4)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = Title

ScriptName.Name = "ScriptName"
ScriptName.Parent = main
ScriptName.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScriptName.Size = UDim2.new(0, 78, 0, 47)
ScriptName.Font = Enum.Font.Bangers
ScriptName.Text = "SV Hub"
ScriptName.TextColor3 = Color3.fromRGB(255, 0, 0)
ScriptName.TextScaled = true
ScriptName.TextSize = 14.000
ScriptName.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = ScriptName

CandyFarm.Name = "CandyFarm"
CandyFarm.Parent = main
CandyFarm.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CandyFarm.Position = UDim2.new(0.304147452, 0, 0.421621621, 0)
CandyFarm.Size = UDim2.new(0, 200, 0, 50)
CandyFarm.Font = Enum.Font.Bangers
CandyFarm.Text = "Candy Farm"
CandyFarm.TextColor3 = Color3.fromRGB(255, 0, 4)
CandyFarm.TextSize = 25.000
CandyFarm.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = CandyFarm

-- Scripts:

local function LSJTX_fake_script() -- CandyFarm.LocalScript 
	local script = Instance.new('LocalScript', CandyFarm)

	script.Parent.MouseButton1Click:connect(function()
		while wait(3) do
			for I,V in pairs(game:GetService("Workspace").Game.Halloween:GetDescendants()) do 
				if V.Name == "Candy" and V:FindFirstChild("TouchInterest") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = V.CFrame
				end
			end
		end
	end)
	
end
coroutine.wrap(LSJTX_fake_script)()
