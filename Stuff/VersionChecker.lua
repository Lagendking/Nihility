local Version = game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Version.txt")

if (writefile) then
    if isfile("NihilityHub/Version.txt") then
        if readfile("NihilityHub/Version.txt") == Version then
            
            ---> Execute Game Script <---
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/script.lua"))()
        else
            
            ---> Update Scripts <---
            writefile("NihilityHub/Version.txt", Version)
            writefile("NihilityHub/Main.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Main.lua"))
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Updater.lua"))()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/script.lua"))()
        end
    else
        
        ---> Create files <---
        writefile("NihilityHub/Version.txt", Version)
        writefile("NihilityHub/Main.txt", game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Main.lua"))
        makefolder("NihilityHub/Games")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Stuff/Updater.lua"))()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/script.lua"))()
    end
end
