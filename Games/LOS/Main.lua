getgenv().Area = "City"

---> Main Tab <---

---> Auto Hoop <---
local AutoRebirthToggle = Tab:CreateToggle({
    Name = "Auto Hoops",
    CurrentValue = false,
    Flag = "AutoHoops",
    Callback = function(Value)
        AutoHoops = Value
        spawn(function()
            if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("hoopGui") then
                game:GetService("Players").LocalPlayer.PlayerGui.hoopGui:Destroy()
            end
            while AutoHoops do
                wait()
                for _, child in pairs(workspace.Hoops:GetChildren()) do
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, child, 1)
                    wait()
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, child, 0)
                end
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
                local args = {
                    [1] = "rebirthRequest"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("rebirthEvent"):FireServer(unpack(args))
            end
        end)
    end,
})

---> Auto Orb <---
local AutoOrbToggle = Tab:CreateToggle({
    Name = "Auto Orb",
    CurrentValue = false,
    Flag = "AutoOrb",
    Callback = function(Value)
        AutoOrb = Value
        spawn(function()
            while AutoOrb do
                wait()
                local args = {
                    [1] = "collectOrb",
                    [2] = "Red Orb",
                    [3] = Area
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(args))
            end
        end)
    end,
})

--- > Auto Gem <---
local AutoGemToggle = Tab:CreateToggle({
    Name = "Auto Gem",
    CurrentValue = false,
    Flag = "AutoGem",
    Callback = function(Value)
        AutoGem = Value
        spawn(function()
            while AutoGem do
                wait()
                local args = {
                    [1] = "collectOrb",
                    [2] = "Gem",
                    [3] = Area
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(args))
            end
        end)
    end,
})

---> Area Selector <---
local Dropdown = Tab:CreateDropdown({
   Name = "Area Selector",
   Options = {"City","Snow City","Magma City"},
   CurrentOption = "City",
   Flag = "AreaSelector",
   Callback = function(Option)
        Area = Option
   end,
})
