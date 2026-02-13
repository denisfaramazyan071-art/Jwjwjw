-- Path: ReplicatedStorage.llIIlIlIllllIllllIlIIllIIIIllIlIIlllIIlIllIlIIIllllIIlllllIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:16
-- Luau version 6, Types version 3
-- Time taken: 0.001196 seconds

return {
	update = function(arg1) -- Line 4, Named "update"
		local health = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("blood"):WaitForChild("health")
		health:WaitForChild("bar").Size = UDim2.new(arg1 / 100, 0, 1, 0)
		if arg1 == 100 or arg1 <= 0 then
			health.Visible = false
		else
			health.Visible = true
		end
	end;
}