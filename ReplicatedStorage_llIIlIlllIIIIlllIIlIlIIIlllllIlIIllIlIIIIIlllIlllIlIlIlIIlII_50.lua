-- Path: ReplicatedStorage.llIIlIlllIIIIlllIIlIlIIIlllllIlIIllIlIIIIIlllIlllIlIlIlIIlII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:29
-- Luau version 6, Types version 3
-- Time taken: 0.001810 seconds

local module_2 = {}
local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("llIIllIlIIllIlIIllllIlIIllllIIIIIlIIlIIllIlIIllllIIIIllllIll")
function module_2.case(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	local tbl = {}
	for i, v in pairs(any_import_result1_upvr.cases[arg1].rarities) do
		for _ = 1, v do
			table.insert(tbl, i)
		end
	end
	local var17 = tbl[math.random(1, #tbl)]
	local module = {}
	for i_3, v_2 in pairs(any_import_result1_upvr.cases[arg1].items) do
		if v_2.rarity == var17 then
			table.insert(module, i_3)
		end
	end
	return module[math.random(1, #module)], var17
end
return module_2