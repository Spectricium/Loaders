function Loaded()
	loadstring(game:HttpGet(web))()
	end

local ScreenGui = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Loader = Instance.new("Frame")
local Percentage = Instance.new("Frame")
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
Background.Name = "Background"
Background.Parent = ScreenGui
Background.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Background.Position = UDim2.new(0.100775197, 0, 0.30751732, 0)
Background.Size = UDim2.new(0.868217051, 7, 0.369322896, 5)
Loader.Name = "Loader"
Loader.Parent = Background
Loader.Active = true
Loader.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Loader.BorderColor3 = Color3.fromRGB(0, 0, 0)
Loader.BorderSizePixel = 10
Loader.Position = UDim2.new(0.0449914709, 0, 0.234816879, 0)
Loader.Size = UDim2.new(0, 616, 0, 66)
Percentage.Name = "Percentage"
Percentage.Parent = Loader
Percentage.BackgroundColor3 = Color3.fromRGB(26, 255, 0)
Percentage.Size = UDim2.new(0, 6, 0, 66)


local function BORGVY_fake_script()
	local script = Instance.new('LocalScript', Background)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		dragSpeed = 0.15
		dragInput = nil
		dragStart = nil
		dragPos = nil
		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	dragify(script.Parent)
	
end
coroutine.wrap(BORGVY_fake_script)()
local function PUJS_fake_script()
	local script = Instance.new('LocalScript', Background)

	local bar = script.Parent.Loader.Percentage
	bar:TweenSize(UDim2.new(1,0,1,0), "In", "Linear", 20, true)
	wait(20)
	Loaded()
	wait(3)
	script.Parent.Parent:Destroy()
end
coroutine.wrap(PUJS_fake_script)() 
