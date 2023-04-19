getgenv().AutoWin = false
getgenv().AutoRebirth = false
getgenv().SelectedEgg = "Desert"

local Eggs = {}
local Eggmod = require(game:GetService("ReplicatedStorage").Pets.Eggs)
for _, v in pairs(Eggmod) do
    table.insert(Eggs, {["EggName"] = _, ["Cost"] = v.Cost})
end

---> Auto Win <---
local AutoWinToggle = Tab:CreateToggle({
    Name = "Auto Win",
    CurrentValue = false,
    Flag = "Win",
    Callback = function(Value)
        AutoWin = Value
        spawn(function()
            while AutoWin do
                wait()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Wins.Stage10, 1)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Wins.Stage10, 0)
            end
        end)
    end,
})

---> Auto Rebirth <---
local AutoRebirthToggle = Tab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Flag = "Rebirth",
    Callback = function(Value)
        AutoRebirth = Value
        spawn(function()
            while AutoRebirth do
                wait()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Model.RebirthTouch, 1)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Model.RebirthTouch, 0)
            end
        end)
    end,
})

local Tab3 = Window:CreateTab("Eggs", 4483362458)

---> Auto Hatch <---
local HatchToggle = Tab3:CreateToggle({
    Name = "Auto Hatch",
    CurrentValue = false,
    Flag = "Hatch",
    Callback = function(Value)
        AutoHatch = Value
        if AutoHatch then
            spawn(function()
                while AutoHatch do
                    for _, v in pairs(Eggs) do
                        if v.EggName == SelectedEgg then
                            if game.Players.LocalPlayer.leaderstats.Wins.Value >= v.Cost then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Eggs[SelectedEgg].UIanchor.CFrame
                            end
                        end
                    end
                    
                    local args = {[1] = SelectedEgg,[2] = "Single"}
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EggOpened"):InvokeServer(unpack(args))
                end
            end)
        end
    end,
})

---> Egg Select <---
local EggOptions = {}
for _, v in pairs(Eggs) do
    table.insert(EggOptions, v.EggName)
end
local EggDropdown = Tab3:CreateDropdown({
    Name = "Select Egg",
    Options = EggOptions,
    CurrentOption = {"Noob"},
    MultipleOptions = false,
    Flag = "SelectEgg", 
    Callback = function(Option)
        SelectEgg = Option
    end,
})
