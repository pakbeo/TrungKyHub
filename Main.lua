local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Trung Ky Hub", "BloodTheme")

--MAIN
local Main = Window:NewTab("Main")
local ScriptsSection = Main:NewSection("Scripts")

ScriptsSection:NewButton("Neva Hub - Blox Fruit", "This Hub works on blox fruits and idk", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2'))()
end)

ScriptsSection:NewButton("Prison life Hub", "A script for a old game", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
end)

ScriptsSection:NewButton("BlackTrap ( Ninja leg - PSX)", "Works only on ninja legends and PSX", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/BdvUGb2q"))()
end)

ScriptsSection:NewButton("Dex - Arsenal", "A arsenal script", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/HonestlyDex/DexHub/main/V3.lua"))()
end)

ScriptsSection:NewButton("Arsenal Lean - Arsenal", "A arsenal script", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/KeoneGithub/KeoneGithub/main/Arsenal",true))()
end)

--HUBS
local Hubs = Window:NewTab("Hubs")
local HubsSection = Hubs:NewSection("Hubs")

HubsSection:NewButton("Zen Hub - Blox Fruit", "Has Key", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader'))()
end)

HubsSection:NewButton("Trung Ky Hub ( Ren ) - Blox Fruit", "Has Key", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pakbeo/Bl-FruitTrungKy/main/Main.lua"))()
end)

--LOCAL PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Tốc độ chạy lũ", "Lũ kìa !", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewButton("FE Flip", "Z để nhảy, X để nhảy ngược lại", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/xi23b40Y"))()
end)

PlayerSection:NewToggle("SIÊU TRUNG KỲ", "Chạy lũ đi", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)
