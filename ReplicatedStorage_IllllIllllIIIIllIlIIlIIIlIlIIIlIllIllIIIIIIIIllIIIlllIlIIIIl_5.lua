-- Path: ReplicatedStorage.IllllIllllIIIIllIlIIlIIIlIlIIIlIllIllIIIIIIIIllIIIlllIlIIIIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:00:51
-- Luau version 6, Types version 3
-- Time taken: 0.001800 seconds

local module = {}
local damage_upvr = game.Lighting.damage
function module.onDeath() -- Line 6
	--[[ Upvalues[1]:
		[1]: damage_upvr (readonly)
	]]
	damage_upvr.Saturation = 0
end
function module.update(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: damage_upvr (readonly)
	]]
	local blood = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("blood")
	for _, v in pairs(blood:WaitForChild("ref"):GetChildren()) do
		local ImageTransparency = v.ImageTransparency
		local var12 = arg1 / 100
		damage_upvr.Saturation = -(0.5 - 0.5 * var12)
		blood:WaitForChild("main"):WaitForChild(v.Name).ImageTransparency = ImageTransparency + (1 - ImageTransparency) * var12
	end
end
return module