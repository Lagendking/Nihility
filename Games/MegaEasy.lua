getgenv().AutoWin = false
getgenv().AutoPrestige = false

---> Main Tab <---
local AutoWinToggle = Tab:CreateToggle({
    Name = "Auto Win",
    CurrentValue = false,
    Flag = "Win",
    Callback = function(Value)
        AutoWin = Value
        
        spawn(function()
            
            while AutoWin do
                wait()
                
                for _, v in pairs(game:GetService("Workspace").Checkpoints:GetChildren()) do
                    
                    if tonumber(v.Name) == game.Players.LocalPlayer.leaderstats.Stage.Value + 1 then
    
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, 5, 0)
                    end
                end
            end
        end)
    end,
})


local PrestigeToggle = Tab:CreateToggle({
    Name = "Auto Prestige",
    CurrentValue = false,
    Flag = "Prestige",
    Callback = function(Value)
        AutoPrestige = Value
        
        if AutoPrestige then
            spawn(function()
                while AutoPrestige do
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("prestige"):FireServer()
                end
            end)
        end
    end,
})
