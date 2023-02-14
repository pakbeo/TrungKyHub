local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "Trung Ky Hub",
	LoadingTitle = "Trung Ky Hub",
	LoadingSubtitle = "by Nam",
	ConfigurationSaving = {
	   Enabled = true,
	   FolderName = TTH, -- Create a custom folder for your hub/game
	   FileName = "TTH"
	},
	Discord = {
	   Enabled = true,
	   Invite = "Sugarbaes", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
	   RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
	   Title = "Trung Ky Hub",
	   Subtitle = "Key System",
	   Note = "Join the discord (discord.gg/sugarbaes)",
	   FileName = "TTHKey",
	   SaveKey = true,
	   GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
	   Key = "https://pastebin.com/raw/FTEi7fZ9"
	}
 })

 local MainTab = Window:CreateTab("Main", 4483362458) -- Title, Image

 local Section = MainTab:CreateSection("Sức Mạnh Trung Kỳ")

 local Slider = MainTab:CreateSlider({
	Name = "Tốc độ chạy lũ",
	Range = {0, 500},
	Increment = 10,
	Suffix = "Speed",
	CurrentValue = 10,
	Flag = "S1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(S1)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = S1
	end,
 })

 local Slider = MainTab:CreateSlider({
	Name = "Bay cao nào nhảy cao nào",
	Range = {0, 250},
	Increment = 10,
	Suffix = "Jump Power",
	CurrentValue = 10,
	Flag = "J1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(J1)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = J1
	end,
 })
 local Toggle = MainTab:CreateToggle({
	Name = "Siêu Trung Kỳ",
	CurrentValue = false,
	Flag = "STT1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(STT1)
		if STT1 then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
		else
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
		end
	end,
 })

 -- HUBS

 local Hubs = Window:CreateTab("Hubs", 4483362458) -- Title, Image

 local Hub1 = Hubs:CreateButton({
	Name = "Trung Ky Hub (Ren) - Blox Fruits",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/pakbeo/Bl-FruitTrungKy/main/Main.lua"))()
	end,
 })

 local Hub2 = Hubs:CreateButton({
	Name = "Zen Hub - Blox Fruits",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader'))()
	end,
 })

 local Hub3 = Hubs:CreateButton({
	Name = "Neva Hub - Blox Fruits",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2'))()
	end,
 })
