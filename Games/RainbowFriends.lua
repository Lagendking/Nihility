getgenv().GameName = "Rainbow Friends"
getgenv().AutoWin = false

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
                for _, child in pairs(workspace:GetChildren()) do
                    if child.Name:match("Block") or child.Name:match("Food") or child.Name:match("Fuse") or child.Name:match("Battery") then
                        if child:FindFirstChild("TouchTrigger") then
                            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, child.TouchTrigger, 1)
                            wait()
                            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, child.TouchTrigger, 0)
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").GroupBuildStructures:GetChildren()[1].Trigger.CFrame
                        else
                            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, child, 1)
                            wait()
                            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, child, 0)
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").GroupBuildStructures:GetChildren()[1].Trigger.CFrame
                        end
                    end
                end
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").GroupBuildStructures:GetChildren()[1].Trigger.CFrame
            end
        end)
    end,
})

---> ESP Section <---
local Label = Tab:CreateLabel("ESP")

local MESPToggle = Tab:CreateToggle({
    Name = "Monster ESP",
    CurrentValue = false,
    Flag = "MESP",
    Callback = function(Value)
        MonsterESP = Value
        spawn(function()
            while MonsterESP do
                wait()
                for _, child in pairs(workspace.Monsters:GetChildren()) do
                    if not child:FindFirstChild("ESP") then
                        local ESP = Instance.new("Highlight")
                        ESP.Name = "ESP"
                        ESP.Parent = child
                    end
                end
            end
            for _, child in pairs(workspace.Monsters:GetChildren()) do
                if child:FindFirstChild("ESP") then
                    child:FindFirstChild("ESP"):Destroy()
                end
            end
        end)
    end,
})

---> Item ESP <---
local IESPToggle = Tab:CreateToggle({
    Name = "Item ESP",
    CurrentValue = false,
    Flag = "IESP",
    Callback = function(Value)
        ItemESP = Value
        spawn(function()
            while ItemESP do
                wait()
                for _, child in pairs(workspace:GetChildren()) do
                    if child.Name:match("Block") or child.Name:match("Food") or child.Name:match("Fuse") or child.Name:match("Battery") and not child:FindFirstChild("ESP") then
                        local ESP = Instance.new("Highlight")
                        ESP.Name = "ESP"
                        ESP.Parent = child
                        ESP.FillColor = Color3.new(0, 1, 0)
                    end
                end
            end
            for _, child in pairs(workspace.Monsters:GetChildren()) do
                if child:FindFirstChild("ESP") and child.Name:match("Block") or child.Name:match("Food") or child.Name:match("Fuse") or child.Name:match("Battery") then
                    child:FindFirstChild("ESP"):Destroy()
                end
            end
        end)
    end,
})

Main()
