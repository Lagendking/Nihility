if (writefile) then
    print("Hi")
    writefile("NihilityHub/Games/RainbowFriends.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Main.lua"))
    appendfile("NihilityHub/Games/RainbowFriends.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Games/RainbowFriends.lua"))
end
