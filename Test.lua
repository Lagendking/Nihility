local Nihility = Instance.new("ScreenGui")
local Start_Outer = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Start_Main = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local GameName = Instance.new("TextLabel")
local GameName_2 = Instance.new("TextLabel")

--Properties:

Nihility.Name = "Nihility"
Nihility.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Nihility.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Start_Outer.Name = "Start_Outer"
Start_Outer.Parent = Nihility
Start_Outer.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Start_Outer.Position = UDim2.new(0.00479018828, 0, 0.818142176, 0)
Start_Outer.Size = UDim2.new(0, 376, 0, 142)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Start_Outer

Start_Main.Name = "Start_Main"
Start_Main.Parent = Start_Outer
Start_Main.AnchorPoint = Vector2.new(0.5, 0.5)
Start_Main.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Start_Main.Position = UDim2.new(0.501475394, 0, 0.502042294, 0)
Start_Main.Size = UDim2.new(0, 366, 0, 132)

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = Start_Main

ImageLabel.Parent = Start_Main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Size = UDim2.new(0, 50, 0, 50)
ImageLabel.Image = "http://www.roblox.com/asset/?id=12914994400"

ImageLabel_2.Parent = Start_Main
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.Position = UDim2.new(0.862959623, 0, 0, 0)
ImageLabel_2.Size = UDim2.new(0, 50, 0, 50)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=12914994400"

TextLabel.Parent = Start_Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.156166106, 0, -0.00703037344, 0)
TextLabel.Size = UDim2.new(0, 249, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Nihility Hub"
TextLabel.TextColor3 = Color3.fromRGB(241, 241, 241)
TextLabel.TextSize = 50.000

GameName.Name = "GameName"
GameName.Parent = Start_Main
GameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameName.BackgroundTransparency = 1.000
GameName.Position = UDim2.new(0, 0, 0.309204102, 0)
GameName.Size = UDim2.new(0, 366, 0, 50)
GameName.Font = Enum.Font.SourceSans
GameName.Text = GameName
GameName.TextColor3 = Color3.fromRGB(171, 171, 171)
GameName.TextSize = 25.000

GameName_2.Name = "GameName"
GameName_2.Parent = Start_Main
GameName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameName_2.BackgroundTransparency = 1.000
GameName_2.Position = UDim2.new(0.0163934417, 0, 0.7789011, 0)
GameName_2.Size = UDim2.new(0, 359, 0, 29)
GameName_2.Font = Enum.Font.SourceSans
GameName_2.Text = "Script Made By: ".. Credits
GameName_2.TextColor3 = Color3.fromRGB(171, 171, 171)
GameName_2.TextSize = 16.000
GameName_2.TextXAlignment = Enum.TextXAlignment.Left
