-- Path: ReplicatedStorage.lIIlIlIIIIlIIIlllllIlIIlllIIIIIIllIIIlIIIIIlIIIlllIlIllIllll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:18
-- Luau version 6, Types version 3
-- Time taken: 0.003119 seconds

return {
	new = function(arg1, arg2) -- Line 4, Named "new"
		local clone_2 = script.frame:Clone()
		clone_2.main.credits.Text = "+$"..arg2
		clone_2.main.rank.Text = arg1
		clone_2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("prompts")
	end;
	updateLog = function(arg1, arg2) -- Line 15, Named "updateLog"
		local clone_4 = script.updateLog:Clone()
		clone_4.main.version.Text = 'v'..arg1
		for i, v in pairs(arg2) do
			local clone = script.updateLogText:Clone()
			clone.Text = v
			clone.LayoutOrder = i
			clone.Parent = clone_4.main.container
		end
		clone_4.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("prompts")
	end;
	creditPurchase = function(arg1) -- Line 31, Named "creditPurchase"
		local clone_6 = script.creditPurchase:Clone()
		clone_6.main.credits.Text = "+$"..arg1
		clone_6.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("prompts")
	end;
	ticketPurchase = function(arg1) -- Line 42, Named "ticketPurchase"
		local clone_3 = script.ticketPurchase:Clone()
		clone_3.main.credits.Text = "+\xA2"..arg1
		clone_3.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("prompts")
	end;
	questReward = function(arg1) -- Line 53, Named "questReward"
		local clone_5 = script.questReward:Clone()
		clone_5.main.credits.Text = "+$"..arg1
		clone_5.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("prompts")
	end;
	donation = function(arg1) -- Line 63, Named "donation"
		script.donation:Clone().Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("prompts")
	end;
}