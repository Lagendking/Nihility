if game.PlaceId == 11063612131 then
    loadfile("NihilityHub/Games/1Jump")()
elseif game.PlaceId == 8888615802 then
    loadfile("NihilityHub/Games/RainbowFriends.txt")()
elseif game.PlaceId == 3101667897 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Games/LOS/Main.lua"))()
elseif game.PlaceId == 3276265788 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Games/LOS/Desert.lua"))()
elseif game.PlaceId == 7584496019 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lagendking/Nihility/main/Games/99%25.lua"))()
else
    loadfile("NihilityHub/Main.txt")()
end
