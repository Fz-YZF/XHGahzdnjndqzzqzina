-- ON START
game:GetService("StarterGui"):SetCore("SendNotification",{Title="El patron of Voice Chat FR",Text="By FZ.YZF ;)", Duration=10})

-- LOCAL
local BannieresValue = workspace.Parent:GetService("Players").LocalPlayer.PlayerGui.GameUI.OverHead.Bannieres.OverHeadBuy.Username
local TitresValue = workspace.Parent:GetService("Players").LocalPlayer.PlayerGui.GameUI.OverHead.Titres.OverheadP.Choosed
local MiniG_upvr = game:GetService("ReplicatedStorage"):WaitForChild("adminReplicated").MiniG
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Fz-YZF/RBLX-UI-lib/refs/heads/main/Module.lua"))()

-- MAIN
local UI = Material.Load({
	Title = "El patron of Voice Chat FR",
	Style = 3,
	SizeX = 300,
	SizeY = 180,
	Theme = "Dark",

})
local Page = UI.New({
	Title = "Functions"
})

local Page2 = UI.New({
	Title = "PRESET"
})

Page.Button({
	Text = "Changer le titre",
	Callback = function()
		game.ReplicatedStorage.Tags.Equip:FireServer("TAG-SERVER-001", true, TitresValue.Value)
	end,
	Menu = {
		Information = function(self)
			UI.Banner({
				Text = "Sélectionnez un titre depuis le menu de base, puis cliquez sur ce bouton pour l'équiper, même si vous ne le possédez pas."
			})
		end
	}
})

Page.Button({
	Text = "Changer la bannière",
	Callback = function()
		game.ReplicatedStorage:WaitForChild("OverheadRS").Equiper:FireServer(tostring(BannieresValue.Image), BannieresValue.Image)
	end,
	Menu = {
		Information = function(self)
			UI.Banner({
				Text = "Sélectionnez une bannière depuis le menu de base, puis cliquez sur ce bouton pour l'équiper, même si vous ne la possédez pas."
			})
		end
	}
})

local H = Page.TextField({
	Text = "CUSTOM BANNER ID",
	Callback = function(Value)
		game.ReplicatedStorage:WaitForChild("OverheadRS").Equiper:FireServer(tostring("rbxassetid://"..Value), "rbxassetid://"..Value)
	end
})

local H = Page.TextField({
	Text = "CUSTOM MONEY REQUEST",
	Callback = function(Value)
		local Value = tonumber(Value)
		if Value then
			for i = 1, Value do
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
			end
		else
			print("Valeur non valide.")
		end
	end
})

IsOn = false

local B = Page.Toggle({
	Text = "ARGENT INFINI",
	Callback = function(Value)
		if Value == true then
			IsOn = true
			while IsOn == true do
				wait(0.1)
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
				MiniG_upvr:FireServer("OOOOOOO_OOOOOOOOOOOO")
			end
		elseif Value == false then
			IsOn = false
		end
	end,
	Enabled = false
})

local B = Page.Toggle({
	Text = "AFK",
	Callback = function(Value)
		if Value == true then
			game.ReplicatedStorage.IsAFK:FireServer(true)
		elseif Value == false then
			game.ReplicatedStorage.IsAFK:FireServer(false)
		end
	end,
	Enabled = false
})

Page2.Button({
	Text = "JUL",
	Callback = function()
		game.ReplicatedStorage:WaitForChild("OverheadRS").Equiper:FireServer(tostring("rbxassetid://79941321424644"), "rbxassetid://79941321424644")
	end
})

Page2.Button({
	Text = "JUL2",
	Callback = function()
		game.ReplicatedStorage:WaitForChild("OverheadRS").Equiper:FireServer(tostring("rbxassetid://5409698393"), "rbxassetid://5409698393")
	end
})

Page2.Button({
	Text = "ZEMOUR",
	Callback = function()
		game.ReplicatedStorage:WaitForChild("OverheadRS").Equiper:FireServer(tostring("rbxassetid://13933982372"), "rbxassetid://13933982372")
	end
})

Page2.Button({
	Text = "CHAT",
	Callback = function()
		game.ReplicatedStorage:WaitForChild("OverheadRS").Equiper:FireServer(tostring("rbxassetid://15986569383"), "rbxassetid://15986569383")
	end
})

Page2.Button({
	Text = "URSS",
	Callback = function()
		game.ReplicatedStorage:WaitForChild("OverheadRS").Equiper:FireServer(tostring("rbxassetid://17287082726"), "rbxassetid://17287082726")
	end
})
