if (writefile) then
    print("Welcome To Nihility Hub, ".. game.Players.LocalPlayer.Name.. ".")
    
    ---> Rainbow Friends <---
    writefile("NihilityHub/Games/RainbowFriends.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Main.lua"))
    appendfile("NihilityHub/Games/RainbowFriends.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Games/RainbowFriends.lua"))
    
    ---> +1 jump <---
    writefile("NihilityHub/Games/1Jump.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Main.lua"))
    appendfile("NihilityHub/Games/1Jump.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Games/1Jump.lua"))
    
    ---> +1 Point <---
    writefile("NihilityHub/Games/1Point.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Main.lua"))
    appendfile("NihilityHub/Games/1Point.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Games/1Point.lua"))
    
    ---> 99% Fail <---
    writefile("NihilityHub/Games/99Fail.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Main.lua"))
    appendfile("NihilityHub/Games/99Fail.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Games/99Fail.lua"))
    
    ---> Mega Easy <---
    writefile("NihilityHub/Games/MegaEasy.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Main.lua"))
    appendfile("NihilityHub/Games/MegaEasy.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Games/MegaEasy.lua"))
    
    ---> LOS Main <---
    writefile("NihilityHub/Games/LOSMain.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Main.lua"))
    appendfile("NihilityHub/Games/LOSMain.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Games/LOS/Main.lua"))
end
