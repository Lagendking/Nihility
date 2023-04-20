
---> Show Tiles <---
local Shower = Tab:CreateButton({
    Name = "Show Tiles",
    Callback = function()
        local Tiles = Workspace:WaitForChild("Map"):WaitForChild("Game"):WaitForChild("Tiles")
        local Original = Color3.fromRGB(198, 237, 255)
        
        Tiles.DescendantAdded:Connect(function(A_1)
            if A_1.Name == "GlassShatter" then
                A_1.Parent.Color = Color3.new(1, 0, 0)

                local Lane = A_1.Parent.Parent.Name
                if Lane == "Right" then
                    Lane = "Left"
                else
                    Lane = "Right"
                end

                local Number = A_1.Parent.Name:match("%d+")
                Tiles[Lane]["Tile" .. Number].Color = Color3.new(0, 1, 0)
            end
        end)
        

        for _, A_1 in next, Tiles:GetDescendants() do
            if A_1:IsA("TouchTransmitter") then
                local Part = A_1.Parent
                Part.Touched:Connect(function(A_2)

                    if A_2.Transparency == 1 then
                        return
                    end
                    
                    local Timer = tick() + 0.5
                    repeat
                        task.wait()
                    until tick() - Timer > 0 or Part.Transparency == 1
                    
                    local Lane = A_1.Parent.Parent.Name
                    if Lane == "Right" then
                        Lane = "Left"
                    else
                        Lane = "Right"
                    end
                    
                    if Part.Transparency == 1 then
                        Part.Color = Color3.new(1, 0, 0)
                        local Number = A_1.Parent.Name:match("%d+")
                        Tiles[Lane]["Tile" .. Number].Color = Color3.new(0, 1, 0)
                        
                    elseif A_2.Parent.Humanoid.Health == 100 then
                        Part.Color = Color3.new(0, 1, 0)
                        local Number = A_1.Parent.Name:match("%d+")
                        Tiles[Lane]["Tile" .. Number].Color = Color3.new(1, 0, 0)
                        
                    end
                end)
            end
        end
    end,
})
