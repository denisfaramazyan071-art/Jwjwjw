-- Path: ReplicatedStorage.lllllIllIIllllIlIlIlllIllllllIIIIIllIlIIllllIIIIIlllIllIlIll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:22
-- Luau version 6, Types version 3
-- Time taken: 0.002303 seconds

local MarketplaceService_upvr = game:GetService("MarketplaceService")
MarketplaceService_upvr.PromptProductPurchaseFinished:Connect(function() -- Line 28
	game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("transaction").Enabled = false
end)
MarketplaceService_upvr.PromptGamePassPurchaseFinished:Connect(function() -- Line 33
	game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("transaction").Enabled = false
end)
return {
	devProduct = function(arg1) -- Line 6, Named "devProduct"
		--[[ Upvalues[1]:
			[1]: MarketplaceService_upvr (readonly)
		]]
		game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("transaction").Enabled = true
		MarketplaceService_upvr:PromptProductPurchase(game.Players.LocalPlayer, arg1)
	end;
	gamepass = function(arg1) -- Line 14, Named "gamepass"
		--[[ Upvalues[1]:
			[1]: MarketplaceService_upvr (readonly)
		]]
		game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("transaction").Enabled = true
		MarketplaceService_upvr:PromptGamePassPurchase(game.Players.LocalPlayer, arg1)
	end;
}