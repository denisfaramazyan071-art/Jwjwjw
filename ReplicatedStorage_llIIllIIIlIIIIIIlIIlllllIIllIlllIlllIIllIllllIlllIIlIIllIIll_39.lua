-- Path: ReplicatedStorage.llIIllIIIlIIIIIIlIIlllllIIllIlllIlllIIllIllllIlllIIlIIllIIll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:20
-- Luau version 6, Types version 3
-- Time taken: 0.001023 seconds

return {
	toggle = function(arg1, arg2) -- Line 4, Named "toggle"
		local tbl = {}
		tbl.BackgroundTransparency = arg1
		game:GetService("TweenService"):Create(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("black"):WaitForChild("Frame"), TweenInfo.new(arg2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), tbl):Play()
	end;
}