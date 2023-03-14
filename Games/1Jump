---> Nihility Hub | +1 jump every second <---

---> Settings <---
local GameName = "1 Jump Per Second"
local TabName = "Main"
local RunService = game:GetService("RunService")
getgenv().AutoWin = false
getgenv().AutoRebirth = false
getgenv().AutoHatch = false
getgenv().antiAFK = false
getgenv().FullBright = false
getgenv().NoClip = false

---> Misc Settings <---
local AAFKToggle = true
local NCToggle = true
local FBToggle = true
local PESPToggle = false


---> Create The GUI <---
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
   Name = "Nihility Hub | ".. GameName,
   LoadingTitle = "Nihility Hub",
   LoadingSubtitle = GameName,
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Nihility Hub",
      FileName = GameName
   },
   Discord = {
      Enabled = false,
      Invite = "bRRdvBDhup",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/sirius)",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = "Hello"
   }
})

local Tab = Window:CreateTab(TabName, 4483362458)
local Tab2 = Window:CreateTab("Misc", 4483362458)

---> Main Tab <---

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


---> Misc tab <---

---> AntiAFK <---
if AAFKToggle then
    local GC = getconnections or get_signal_cons
    local antiAFKToggle = Tab2:CreateToggle({
        Name = "Anti AFK",
        CurrentValue = false,
        Flag = "AntiAFK",
        Callback = function(Value)
            antiAFK = Value
            local e_d
            if antiAFK then
                e_d = "Enabled"
            else
                e_d = "Disabled                                                "
            end
            Rayfield:Notify({
                Title = "AntiAFK",
                Content = "Has Been ".. e_d,
                Duration = 1,
                Image = 4483362458,
                Actions = {
                    Ignore = {
                        Name = "Hide",
                        Callback = function()end
                   },
                },
            })
            game:GetService("Players").LocalPlayer.Idled:connect(function()
                if antiAFK then
                    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    wait(0.5)
                    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                end
            end)
        end,
    })
end

---> FullBright <---
if FBToggle then
    local Bright
    local Clock
    local Fog
    local Shadows
    local Ambient
    local FullBrightToggle = Tab2:CreateToggle({
        Name = "Full Bright",
        CurrentValue = false,
        Flag = "FullBright",
        Callback = function(Value)
            FullBright = Value
            local e_d
            if FullBright then
                e_d = "Enabled"
            else
                e_d = "Disabled                                                "
            end
            Rayfield:Notify({
                Title = "Full Bright",
                Content = "Has Been ".. e_d,
                Duration = 1,
                Image = 4483362458,
                Actions = {
                    Ignore = {
                        Name = "Hide",
                        Callback = function()end
                   },
                },
            })
            if FullBright then
                Bright = Lighting.Brightness
                Clock = Lighting.ClockTime
                Fog = Lighting.FogEnd
                Shadows = Lighting.GlobalShadows
                Ambient = Lighting.OutdoorAmbient
            	Lighting.Brightness = 2
            	Lighting.ClockTime = 14
            	Lighting.FogEnd = 100000
            	Lighting.GlobalShadows = false
            	Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
            else
            	Lighting.Brightness = Bright
            	Lighting.ClockTime = Clock
            	Lighting.FogEnd = Fog
            	Lighting.GlobalShadows = Shadows
            	Lighting.OutdoorAmbient = Ambient
            end
        end,
    })
end

---> No Clip <---
if NCToggle then
    local NoClipToggle = Tab2:CreateToggle({
        Name = "No Clip",
        CurrentValue = false,
        Flag = "NoClip",
        Callback = function(Value)
            NoClip = Value
            local e_d
            if NoClip then
                e_d = "Enabled"
            else
                e_d = "Disabled                                                "
            end
            Rayfield:Notify({
                Title = "No Clip",
                Content = "Has Been ".. e_d,
                Duration = 1,
                Image = 4483362458,
                Actions = {
                    Ignore = {
                        Name = "Hide",
                        Callback = function()end
                   },
                },
            })
            local noclipping
            if NoClip then
                function NoClipLoop()
                    if game:GetService("Players").LocalPlayer.Character ~= nil then
                        if not NoClip then return end
                        for _, child in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                            if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
                            	child.CanCollide = false
                            end
                        end
                    end
                end
                noclipping = RunService.Stepped:Connect(NoClipLoop)
            end
        end,
    })
end

---> Player Esp <---
if PESPToggle then
    local PESPColor = Color3.new(1, 0, 0)
    local PESPToggle = Tab2:CreateToggle({
        Name = "Player ESP",
        CurrentValue = false,
        Flag = "PESP",
        Callback = function(Value)
            PlayerESP = Value
            local e_d
            if NoClip then
                e_d = "Enabled"
            else
                e_d = "Disabled                                                "
            end
            Rayfield:Notify({
                Title = "Player ESP",
                Content = "Has Been ".. e_d,
                Duration = 1,
                Image = 4483362458,
                Actions = {
                    Ignore = {
                        Name = "Hide",
                        Callback = function()end
                   },
                },
            })
            
        end,
    })
    local PESPColorPicker = Tab2:CreateColorPicker({
        Name = "Player ESP Color",
        Color = Color3.fromRGB(255,0,0),
        Flag = "PESPColor",
        Callback = function(Value)
            PESPColor = Value
        end
    })
    spawn(function()
        while wait(.5) do
            if PlayerESP then
                for _, child in pairs(game:GetService("Players"):GetPlayers()) do
                    if not child:FindFirstChild("ESP") and child.Name ~= game:GetService("Players").LocalPlayer.Name then
                        local ESP = Instance.new("Highlight")
                        ESP.Name = "ESP"
                        ESP.Parent = child.Character or child.CharacterAdded:Wait()
                        ESP.FillColor = PESPColor
                    elseif child:FindFirstChild("ESP") then
                        child:FindFirstChild("ESP").FillColor = PESPColor
                    end
                end
            else
                for _, child in pairs(game:GetService("Players"):GetPlayers()) do
                    if child:FindFirstChild("ESP") then
                        child:FindFirstChild("ESP"):Destroy()
                    end
                end
            end
        end
    end)
end

---> Gravity <---
local Gravity = workspace.Gravity
local Slider = Tab2:CreateSlider({
    Name = "Gravity",
    Range = {0, 1000},
    Increment = 1,
    Suffix = "",
    CurrentValue = Gravity,
    Flag = nil,
    Callback = function(Value)
        Gravity = Value
    end,
})
spawn(function()
    while wait() do
        workspace.Gravity = Gravity
    end
end)

---> Speed And Jump <---
local Speed = game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed
local Jump = game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower
local Slider = Tab2:CreateSlider({
    Name = "Walk Speed",
    Range = {10, 500},
    Increment = 1,
    Suffix = "",
    CurrentValue = Speed,
    Flag = nil,
    Callback = function(Value)
        Speed = Value
    end,
})
local Slider = Tab2:CreateSlider({
    Name = "Jump Power",
    Range = {10, 750},
    Increment = 1,
    Suffix = "",
    CurrentValue = Jump,
    Flag = nil,
    Callback = function(Value)
        Jump = Value
    end,
})
spawn(function()
    while wait() do
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Speed
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Jump
    end
end)
