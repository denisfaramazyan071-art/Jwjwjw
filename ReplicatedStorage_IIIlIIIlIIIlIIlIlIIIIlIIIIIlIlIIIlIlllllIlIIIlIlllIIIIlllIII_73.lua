-- Path: ReplicatedStorage.IIIlIIIlIIIlIIlIlIIIIlIIIIIlIlIIIlIlllllIlIIIlIlllIIIIlllIII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:51
-- Luau version 6, Types version 3
-- Time taken: 0.006657 seconds

local any_import_result1 = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI")
local _ = any_import_result1.import("IlllIIlllIIllIIlIllIIllIlIlllIlIIlIIllIIIIlIlllIIIlllIIIllII")
local module = {}
local any_import_result1_8_upvr = any_import_result1.import("lIIllIIIllIllllIIllIlllllIIIIlllIIllIIlIIIlIlllllIIlIlIIllll")
local any_import_result1_4_upvr = any_import_result1.import("llllIIlIIllIlIIlllIlIIIIIlIlIlIIllIIIlllIIlIllIIlIIlIlIIIIII")
local any_import_result1_2_upvr = any_import_result1.import("llIlIIllIlllIlllIIIlIIllIIIlllIIlllIIllIlIllllIIlIllIIIlIlII")
local any_import_result1_6_upvr = any_import_result1.import("IIIllIIlIIIlIIllllIlIllIlIIIIlIllllIIllIllIlIIIIIIlIllIlIllI")
local any_import_result1_5_upvr = any_import_result1.import("llIllIIlIllIllllIIIllIIlllIIlllllIIIlllIIlllIlllIIllllIIllll")
local any_import_result1_7_upvr = any_import_result1.import("lIIllIIlllIlIIIlIIIIIlIIIIlIllIIlIIIIllIllllIIIlIIIlIllIlllI")
local any_import_result1_9_upvr = any_import_result1.import("llIIIlllllIIllIIlIlllIlIlIIIlIlIlIIllIlllllIIlIIllIIIIIlIllI")
local any_import_result1_upvr = any_import_result1.import("IIlIIIllIIIlllllIIllIlIIIllIIIIIlllIIllIllllIIlIlIllllllIIll")
local any_import_result1_3_upvr = any_import_result1.import("llIllIIlIIlIIIIllIIllIIlIIlllIIIIIIIIIIllIllIlIllllIllIllIll")
function module.new(arg1) -- Line 20
	--[[ Upvalues[9]:
		[1]: any_import_result1_8_upvr (readonly)
		[2]: any_import_result1_4_upvr (readonly)
		[3]: any_import_result1_2_upvr (readonly)
		[4]: any_import_result1_6_upvr (readonly)
		[5]: any_import_result1_5_upvr (readonly)
		[6]: any_import_result1_7_upvr (readonly)
		[7]: any_import_result1_9_upvr (readonly)
		[8]: any_import_result1_upvr (readonly)
		[9]: any_import_result1_3_upvr (readonly)
	]]
	local any_InvokeServer_result1, any_InvokeServer_result2_upvr, any_InvokeServer_result3_upvr = game.ReplicatedStorage.network.deploy:InvokeServer(arg1)
	if type(any_InvokeServer_result1) == "string" and type(any_InvokeServer_result2_upvr) == "table" and type(any_InvokeServer_result3_upvr) == "table" then
		pcall(function() -- Line 28
			--[[ Upvalues[5]:
				[1]: any_import_result1_8_upvr (copied, readonly)
				[2]: any_InvokeServer_result3_upvr (readonly)
				[3]: any_import_result1_4_upvr (copied, readonly)
				[4]: any_InvokeServer_result2_upvr (readonly)
				[5]: any_import_result1_2_upvr (copied, readonly)
			]]
			coroutine.wrap(function() -- Line 30
				--[[ Upvalues[1]:
					[1]: any_import_result1_8_upvr (copied, readonly)
				]]
				repeat
					task.wait(0.1)
				until pcall(function() -- Line 32
					--[[ Upvalues[1]:
						[1]: any_import_result1_8_upvr (copied, readonly)
					]]
					any_import_result1_8_upvr.StarterGui:SetCore("ResetButtonCallback", true)
				end)
			end)()
			for _, v in pairs(workspace:WaitForChild("ignore"):WaitForChild("points"):GetChildren()) do
				if v.Name ~= "attackers" and v.Name ~= "defenders" and game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("cinematic").Enabled == false then
					v:WaitForChild("region"):WaitForChild("BillboardGui").Enabled = true
				end
			end
			for _, v_2_upvr in pairs(any_InvokeServer_result3_upvr) do
				coroutine.wrap(function() -- Line 46
					--[[ Upvalues[2]:
						[1]: any_import_result1_4_upvr (copied, readonly)
						[2]: v_2_upvr (readonly)
					]]
					pcall(function() -- Line 47
						--[[ Upvalues[2]:
							[1]: any_import_result1_4_upvr (copied, readonly)
							[2]: v_2_upvr (copied, readonly)
						]]
						any_import_result1_4_upvr.new(v_2_upvr)
					end)
				end)()
			end
			for i_3_upvr, v_3_upvr in pairs(any_InvokeServer_result2_upvr) do
				coroutine.wrap(function() -- Line 54
					--[[ Upvalues[3]:
						[1]: any_import_result1_2_upvr (copied, readonly)
						[2]: i_3_upvr (readonly)
						[3]: v_3_upvr (readonly)
					]]
					pcall(function() -- Line 55
						--[[ Upvalues[3]:
							[1]: any_import_result1_2_upvr (copied, readonly)
							[2]: i_3_upvr (copied, readonly)
							[3]: v_3_upvr (copied, readonly)
						]]
						any_import_result1_2_upvr.createInstance(i_3_upvr, v_3_upvr.name)
						if v_3_upvr.projectileVisible ~= nil then
							any_import_result1_2_upvr.setProjectileVisible(i_3_upvr, v_3_upvr.name, v_3_upvr.projectileVisible)
						end
					end)
				end)()
			end
		end)
		any_import_result1_6_upvr.firstPerson()
		any_import_result1_5_upvr.enable()
		any_import_result1_8_upvr.GuiService.TouchControlsEnabled = true
		any_import_result1_7_upvr.destroy()
		game.ReplicatedStorage.network.onDeploy.viewmodel:Fire(any_InvokeServer_result1)
		game.ReplicatedStorage.network.onDeploy.hotbar:Fire(any_InvokeServer_result1)
		if game.ReplicatedStorage:FindFirstChild("teamHighlight") then
			game.ReplicatedStorage:FindFirstChild("teamHighlight"):Destroy()
		end
		local var38 = ""
		if any_import_result1_9_upvr.players[game.Players.LocalPlayer.Name] == "defenders" then
			var38 = "IIoooIIl"
		elseif any_import_result1_9_upvr.players[game.Players.LocalPlayer.Name] == "attackers" then
			var38 = "lIIooolll"
		end
		local Highlight = Instance.new("Highlight")
		Highlight.FillTransparency = 1
		Highlight.OutlineTransparency = 0.85
		Highlight.OutlineColor = Color3.fromRGB(177, 255, 149)
		Highlight.Parent = game.ReplicatedStorage
		Highlight.DepthMode = Enum.HighlightDepthMode.Occluded
		Highlight.Adornee = workspace:FindFirstChild("IIIIllllIIIllIIlIlI_IIllIlIIIllII_o"):WaitForChild(var38)
		Highlight.Name = "teamHighlight"
		Highlight.Parent = game.ReplicatedStorage
		if any_import_result1_upvr() == "mobile" then
			game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("pickup"):WaitForChild("collect"):WaitForChild("TextLabel").Text = "[Tap] - Collect"
		else
			game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("pickup"):WaitForChild("collect"):WaitForChild("TextLabel").Text = string.format("[%s] - Collect", any_import_result1_3_upvr.data.collectammo)
		end
		game:GetService("TweenService"):Create(game.ReplicatedStorage.soundgroups.world, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
			Volume = any_import_result1_3_upvr.data.worldvolume;
		}):Play()
		return
	end
end
return module