-- Path: ReplicatedStorage.llllIIlIIllIlIIlllIlIIIIIlIlIlIIllIIIlllIIlIllIIlIIlIlIIIIII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:24
-- Luau version 6, Types version 3
-- Time taken: 0.003239 seconds

local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("llIIIlllllIIllIIlIlllIlIlIIIlIlIlIIllIlllllIIlIIllIIIIIlIllI")
local module = {}
local _ = {
	attackers = Color3.fromRGB(255, 111, 111);
	defenders = Color3.fromRGB(124, 126, 255);
}
function module.drone() -- Line 13
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	for _, v in pairs(workspace:FindFirstChild("ignoreFolder__D"):GetChildren()) do
		if v.PrimaryPart:WaitForChild("Team").Value == any_import_result1_upvr.players[game.Players.LocalPlayer.Name] then
			v.PrimaryPart:WaitForChild("BillboardGui").Enabled = true
		else
			v.PrimaryPart:WaitForChild("BillboardGui").Enabled = false
		end
		if game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("cinematic").Enabled == true then
			v.PrimaryPart:WaitForChild("BillboardGui").Enabled = false
		end
	end
end
function module.new(arg1) -- Line 26
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	if game.Players.LocalPlayer ~= arg1 then
		local Character = arg1.Character
		local Head = Character:WaitForChild("Head")
		if Head:FindFirstChild("BillboardGui") then
			Head:FindFirstChild("BillboardGui"):Destroy()
		end
		if Head:FindFirstChild("Nametag") then
			Head:FindFirstChild("Nametag"):Destroy()
		end
		if any_import_result1_upvr.players[game.Players.LocalPlayer.Name] == any_import_result1_upvr.players[arg1.Name] then
			local clone_upvr = script.BillboardGui:Clone()
			clone_upvr.Parent = Head
			local clone_upvr_2 = script.Nametag:Clone()
			clone_upvr_2.TextLabel.Text = arg1.Name
			clone_upvr_2.Parent = Head
			if game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("cinematic").Enabled == true then
				clone_upvr_2.Enabled = false
				clone_upvr.Enabled = false
			end
			Character:WaitForChild("Humanoid").Died:Connect(function() -- Line 60
				--[[ Upvalues[2]:
					[1]: clone_upvr (readonly)
					[2]: clone_upvr_2 (readonly)
				]]
				pcall(function() -- Line 61
					--[[ Upvalues[1]:
						[1]: clone_upvr (copied, readonly)
					]]
					clone_upvr:Destroy()
				end)
				pcall(function() -- Line 64
					--[[ Upvalues[1]:
						[1]: clone_upvr_2 (copied, readonly)
					]]
					clone_upvr_2:Destroy()
				end)
			end)
		end
	end
end
return module