-- Path: ReplicatedStorage.IIIllIIIIIIlIlIIlIIIIlIlIlIllIlllIlIlIIIlIlIlIIllllIllllIlll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:49
-- Luau version 6, Types version 3
-- Time taken: 0.001421 seconds

local module_upvr = {
	getCreditsForRank = function(arg1) -- Line 6, Named "getCreditsForRank"
		return (arg1 - 1) * 5 + 200
	end;
	getExpFromLevel = function(arg1) -- Line 11, Named "getExpFromLevel"
		local var4 = 0
		for i = 1, arg1 do
			var4 += (1000) * (i ^ 2 / i)
		end
		return var4
	end;
}
function module_upvr.getLevelFromExp(arg1) -- Line 28
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	while true do
		local var5 = 0 + 1
		if arg1 < module_upvr.getExpFromLevel(var5) then
			return var5 - 1
		end
	end
end
return module_upvr