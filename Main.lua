local keys = { 
"Namisreal",
"Nsm243",
"coconcac"
}

if table.find(keys, key) then
 local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/pakbeo/UI-/main/Ui')))()
local Window = OrionLib:MakeWindow({Name = "Trunky Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "TrunkyHub", IntroText = "Trunky Hub Ready",
IntroIcon = "rbxassetid://7733765398", Icon = "rbxassetid://8997381738"})


OrionLib:MakeNotification({
	Name = "Hello",
	Content = "Chao mung den voi TrunKy Hub(Made by Nam#0002)",
	Image = "rbxassetid://7743875503",
	Time = 5
})
--TAB 1 
local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://7733746980",
	PremiumOnly = false
})

local Section = MainTab:AddSection({
	Name = "Nang Cap Ban Than"
})

MainTab:AddSlider({
	Name = "Toc Do",
	Min = 0,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 10,
	ValueName = "Sonic",
	Callback = function(S1)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = S1
	end    
})

MainTab:AddSlider({
	Name = "Nhay Cao",
	Min = 0,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 10,
	ValueName = "W",
	Callback = function(J1)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = J1
	end    
})

MainTab:AddButton({
	Name = "Reset chi so",
	Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
  	end 
})

--OTHERS

local OtherTab = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://7733746980",
	PremiumOnly = false
})
OtherTab:AddButton({
	Name = "Destroy UI",
	Callback = function()
        OrionLib:Destroy()
  	end    
})
OrionLib:Init()
else
print("incorrect key!")
end
