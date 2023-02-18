getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/pakbeo/UI-/main/Ui'))()
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
 Rayfield:Notify({
	Title = "chac ca lac bum bum",
	Content = "chao em nha ! ",
	Duration = 6.5,
	Image = 4483362458,
	Actions = { -- Notification Buttons
	   Ignore = {
		  Name = "OK",
		  Callback = function()
		  print("discord.gg/sugarbaes")
	   end
	},
 },
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

 local Button = MainTab:CreateButton({
	Name = "Cú Nhảy Trung Kỳ ( Z-X-C )",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/Mk1S7m8P'))()
	end,
 })

 local Button = MainTab:CreateButton({
	Name = "Tele chi thuật ( Hold Ctrl + Click )",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/hEq1Wq3S'))()
	end,
 })

 local Button = MainTab:CreateButton({
	Name = "Trung Kỳ biết bay ( E để bật / tắt )",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/mGFDtD3a'))()
	end,
 })
 
 local Section = MainTab:CreateSection("Sức Mạnh Trung Kỳ 2")
 
 local Button = MainTab:CreateButton({
	Name = "Sech Trung Ky",
	Callback = function()
		loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/pakbeo/nekochan/main/Main"))()
	end,
 })


 -- HUBS

 local Hubs = Window:CreateTab("BF-Hubs", 4483362458) -- Title, Image

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

 local Hub4 = Hubs:CreateButton({
	Name = "Mukuro Hub - Blox Fruits",
	Callback = function()
		loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()
	end,
 })

 local BssHubs = Window:CreateTab("BSS-Hubs", 4483362458) -- Title, Image

 local BssHub1 = BssHubs:CreateButton({
	Name = "Kometa v1 - Bee Swarm Simulator",
	Callback = function()
		loadstring(game:HttpGet('https://s.kometa.pw/kometa.lua'))()
	end,
 })

 local PSXHubs = Window:CreateTab("PSX-Hubs", 4483362458) -- Title, Image

 local BssHub1 = PSXHubs:CreateButton({
	Name = "Milk Up - Pet Simulator X",
	Callback = function()
		loadstring(game:HttpGet("https://milkup.info/script/PetSimulatorX/"))()
	end,
 })


 -- MISC
 local Misc = Window:CreateTab("Misc", 4483362458) -- Title, Image

 local Destroy = Misc:CreateButton({
	Name = "Destroy UI ( xóa UI & reset value )",
	Callback = function()
		Rayfield:Destroy()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	end,
 })
