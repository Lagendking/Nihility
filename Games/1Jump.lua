getgenv().GameName = "1 Jump"
getgenv().AutoWin = false
getgenv().AutoRebirth = false
getgenv().AutoHatch = false

---> Auto Win <---
local AutoWinToggle = Tab:CreateToggle({
    Name = "Auto Win",
    CurrentValue = false,
    Flag = "AutoWin",
    Callback = function(Value)
        AutoWin = Value
        spawn(function()
            while AutoWin do
                wait()
                firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Wins.World14, 1)
                wait()
                firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Wins.World14, 0)
            end
        end)
    end,
})

---> Auto Rebirth <---
local AutoRebirthToggle = Tab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Flag = "AutoRebirth",
    Callback = function(Value)
        AutoRebirth = Value
        spawn(function()
            while AutoRebirth do
                wait()
                game:GetService("ReplicatedStorage"):WaitForChild("RebirthEvent"):FireServer()
            end
        end)
    end,
})

---> Eggs Section <---
local eggs = {}
local egg = ""
for _, child in pairs(workspace.Eggs:GetChildren()) do
    table.insert(eggs, child.Name)
end

local Label = Tab:CreateLabel("Eggs")
local AutoHatchToggle = Tab:CreateToggle({
    Name = "Auto Hatch",
    CurrentValue = false,
    Flag = "AutoHatch",
    Callback = function(Value)
        AutoHatch = Value
        spawn(function()
            while AutoHatch do
                wait()
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position = workspace.Eggs:FindFirstChild(egg).EggModel.Egg.Position
                local args = {
                    [1] = egg,
                    [2] = "Single"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EggOpened"):InvokeServer(unpack(args))
            end
        end)
    end,
})

local EggDropdown = Tab:CreateDropdown({
   Name = "Select Egg",
   Options = eggs,
   CurrentOption = "",
   Flag = nil,
   Callback = function(Option)
        egg = Option
        print(egg)
   end,
})

Main()
