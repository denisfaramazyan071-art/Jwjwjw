-- Path: ReplicatedStorage.lIIIIlIlllllllIIlIIIllllIIIIIlIIllllllIIllIlllIlIIIllllIIlll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:17
-- Luau version 6, Types version 3
-- Time taken: 0.000731 seconds

return {
	update = function(arg1, arg2) -- Line 4, Named "update"
		game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("stats"):WaitForChild("dev"):WaitForChild("client"):WaitForChild(arg1).Text = arg1..": "..arg2
	end;
}