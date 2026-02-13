-- Path: ReplicatedStorage.IIlIlIllIllIllIIllIllIllIlIIlllIllIlllllllIIIIlIIlllIllIIIIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:56
-- Luau version 6, Types version 3
-- Time taken: 0.006414 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local module = {}
local var3_upvw
local var4_upvw
local any_import_result1_upvr_3 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llIlIIllIlllIlllIIIlIIllIIIlllIIlllIIllIlIllllIIlIllIIIlIlII")
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llIIIlllllIIllIIlIlllIlIlIIIlIlIlIIllIlllllIIlIIllIIIIIlIllI")
local any_import_result1_upvr_4 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IIIllIIlIIIlIIllllIlIllIlIIIIlIllllIIllIllIlIIIIIIlIllIlIllI")
function module.new(arg1) -- Line 12
	--[[ Upvalues[5]:
		[1]: var4_upvw (read and write)
		[2]: any_import_result1_upvr_3 (readonly)
		[3]: any_import_result1_upvr (readonly)
		[4]: any_import_result1_upvr_4 (readonly)
		[5]: var3_upvw (read and write)
	]]
	if game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("spectate") then
		local spectate = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("spectate")
		for _, v in pairs(spectate.Main.Container:GetChildren()) do
			if v:IsA("Frame") then
				v:Destroy()
			end
		end
		var4_upvw = arg1.Character
		for _, v_2 in pairs(arg1.Character:GetChildren()) do
			if v_2:IsA("BasePart") then
				v_2.Transparency = 1
			elseif v_2:IsA("Accessory") then
				for _, v_5 in pairs(v_2:GetDescendants()) do
					if v_5:IsA("BasePart") then
						v_5.Transparency = 1
					end
				end
			end
		end
		local any_InvokeServer_result1 = game.ReplicatedStorage.network.getEquippedItem:InvokeServer(arg1)
		if any_InvokeServer_result1 then
			any_import_result1_upvr_3.createInstance(arg1, any_InvokeServer_result1)
		end
		if game.ReplicatedStorage:FindFirstChild("spectateHighlight") then
			game.ReplicatedStorage:FindFirstChild("spectateHighlight"):Destroy()
		end
		local Highlight = Instance.new("Highlight")
		Highlight.Name = "spectateHighlight"
		Highlight.FillTransparency = 0.6
		Highlight.OutlineTransparency = 1
		Highlight.FillColor = Color3.fromRGB(255, 66, 66)
		Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		Highlight.Parent = game.ReplicatedStorage
		if any_import_result1_upvr.players[arg1.Name] == "attackers" then
			Highlight.Adornee = workspace:FindFirstChild("IIIIllllIIIllIIlIlI_IIllIlIIIllII_o"):FindFirstChild("IIoooIIl")
		else
			Highlight.Adornee = workspace:FindFirstChild("IIIIllllIIIllIIlIlI_IIllIlIIIllII_o"):FindFirstChild("lIIooolll")
		end
		any_import_result1_upvr_4.spectate(arg1.Character.PrimaryPart)
		if var3_upvw then
			var3_upvw:Disconnect()
		end
		var3_upvw = game:GetService("RunService").RenderStepped:Connect(function() -- Line 79
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var3_upvw (copied, read and write)
			]]
			if arg1.Character then
				if arg1.Character:FindFirstChild("Head") then
					workspace.CurrentCamera.CFrame = arg1.Character:FindFirstChild("Head").CFrame
				else
					var3_upvw:Disconnect()
				end
			end
			var3_upvw:Disconnect()
		end)
		spectate:WaitForChild("Main"):WaitForChild("Topbar"):WaitForChild("TextLabel").Text = arg1.Name
		game.Lighting.main.Enabled = false
		_G.VisBullets = true
		spectate.Enabled = true
		game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("lobby").Enabled = false
		game.ReplicatedStorage:WaitForChild("soundgroups"):WaitForChild("world").Volume = 0.2
		game.ReplicatedStorage.network.moderation.subscribe:FireServer(true, arg1.Name)
	end
end
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("lIIllIIlllIlIIIlIIIIIlIIIIlIllIIlIIIIllIllllIIIlIIIlIllIlllI")
function module.exit() -- Line 110
	--[[ Upvalues[3]:
		[1]: var3_upvw (read and write)
		[2]: any_import_result1_upvr_2 (readonly)
		[3]: var4_upvw (read and write)
	]]
	if var3_upvw then
		var3_upvw:Disconnect()
	end
	any_import_result1_upvr_2.changeView("main")
	if game.ReplicatedStorage:FindFirstChild("spectateHighlight") then
		game.ReplicatedStorage:FindFirstChild("spectateHighlight"):Destroy()
	end
	local spectate_2 = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("spectate")
	for _, v_3 in pairs(spectate_2.Main.Container:GetChildren()) do
		if v_3:IsA("Frame") then
			v_3:Destroy()
		end
	end
	spectate_2.Enabled = false
	game.Lighting.main.Enabled = true
	_G.VisBullets = false
	game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("lobby").Enabled = true
	game.ReplicatedStorage:WaitForChild("soundgroups"):WaitForChild("world").Volume = 0
	pcall(function() -- Line 139
		--[[ Upvalues[1]:
			[1]: var4_upvw (copied, read and write)
		]]
		for _, v_4 in pairs(var4_upvw:GetChildren()) do
			if v_4:IsA("BasePart") then
				v_4.Transparency = 0
			elseif v_4:IsA("Accessory") then
				for _, v_6 in pairs(v_4:GetDescendants()) do
					if v_6:IsA("BasePart") then
						v_6.Transparency = 0
					end
				end
			end
		end
	end)
	game.ReplicatedStorage.network.moderation.subscribe:FireServer()
end
return module