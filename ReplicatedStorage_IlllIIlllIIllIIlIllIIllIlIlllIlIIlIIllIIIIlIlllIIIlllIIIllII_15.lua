-- Path: ReplicatedStorage.IlllIIlllIIllIIlIllIIllIlIlllIlIIlIIllIIIIlIlllIIIlllIIIllII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:00
-- Luau version 6, Types version 3
-- Time taken: 0.002808 seconds

local any_import_result1 = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("llllIllIIllllIIlIlIIIlIlIIIlIllIIlIllIllIIlIlIIIlIIlIllIlIIl")
local module_upvr = {}
function module_upvr.get(arg1, arg2) -- Line 6
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg2 then
		if arg2 == 1 then
			return arg1, table.unpack(module_upvr.table[arg1][arg2])
		end
		if arg2 == 2 then
			return table.unpack(module_upvr.table[arg1][arg2])
		end
	end
	return arg1, table.unpack(module_upvr.table[arg1])
end
module_upvr.table = {
	["au4nf-2nfnrG-Kbf4221"] = {any_import_result1.String, any_import_result1.Vector3F32, any_import_result1.Vector3F32};
	["event-repcastrecv"] = {any_import_result1.Instance, any_import_result1.String, any_import_result1.String, any_import_result1.Vector3F32, any_import_result1.Vector3F32, any_import_result1.CFrameF32U16};
	["event.equip"] = {any_import_result1.NumberU8};
	["event.characterposition"] = {any_import_result1.Instance, any_import_result1.String, any_import_result1.String};
	["event.equiprecv"] = {any_import_result1.Instance, any_import_result1.String};
	["event.deploy"] = {{any_import_result1.String}, {any_import_result1.String, any_import_result1.Any, any_import_result1.Any}};
	["event.clientdeployed"] = {any_import_result1.Instance};
	["event.projectilevisible"] = {any_import_result1.String, any_import_result1.Boolean8};
	["event.projectilevisiblerecv"] = {any_import_result1.Instance, any_import_result1.String, any_import_result1.Boolean8};
	lIIlIIllIlIIIIllIIIIIIIIIlIIllIIllIIlIlIlIIIllIIlIlIlIlIIIlllIIIIIlIlIIlIIlIlIlIlIlIIlIlIllIl = {any_import_result1.String, any_import_result1.Instance, any_import_result1.Vector3F32, any_import_result1.Vector3F32, any_import_result1.Vector3F32, any_import_result1.Vector3F32, any_import_result1.Vector3F32, any_import_result1.Vector3F32};
	["event.explosion"] = {any_import_result1.Vector3F32};
	["event.lookvector"] = {any_import_result1.NumberF16};
	we28fb4vsd2wrr = {any_import_result1.String, any_import_result1.String, any_import_result1.String};
	grt4g4g4gtg4tv = {any_import_result1.String};
	["update.item"] = {any_import_result1.String};
}
return module_upvr