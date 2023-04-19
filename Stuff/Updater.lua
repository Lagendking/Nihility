if (writefile) then
    print("Welcome To Nihility Hub, ".. game.Players.LocalPlayer.Name.. ".")
    
    ---> Rainbow Friends <---
    writefile("NihilityHub/Games/RainbowFriends.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Main.lua"))
    appendfile("NihilityHub/Games/RainbowFriends.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Games/RainbowFriends.lua"))
    
    ---> +1 jump <---
    writefile("NihilityHub/Games/1Jump.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Main.lua"))
    appendfile("NihilityHub/Games/1Jump.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Games/1Jump.lua"))
end
