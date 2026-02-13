-- Path: ReplicatedStorage.IlllIIIIIllIllIlllllIlIIllIlllIIIlIIIIlIllIlllIIlllIlIlIIlII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:10
-- Luau version 6, Types version 3
-- Time taken: 0.002277 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local module_upvr = {
	DebugLogging = false;
	VisualizeCasts = false;
}
module_upvr.__index = module_upvr
module_upvr.__type = "FastCast"
module_upvr.HighFidelityBehavior = {
	Default = 1;
	Always = 3;
}
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llIlIIlllIlIlIIlIIlIIlIlllIlIIIIIIlllllIIlIIIIlIIlIlllIlIlII")
any_import_result1_upvr.SetStaticFastCastReference(module_upvr)
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llIlllIIIlIllllIIlIIllIllllIllIIIIIlllllIIIlIIIIIlIIIllllllI")
function module_upvr.new() -- Line 108
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	return setmetatable({
		LengthChanged = any_import_result1_upvr_2.new("LengthChanged");
		RayHit = any_import_result1_upvr_2.new("RayHit");
		RayPierced = any_import_result1_upvr_2.new("RayPierced");
		CastTerminating = any_import_result1_upvr_2.new("CastTerminating");
		WorldRoot = workspace;
	}, module_upvr)
end
function module_upvr.newBehavior() -- Line 120
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return {
		RaycastParams = nil;
		Acceleration = Vector3.new();
		MaxDistance = 1000;
		CanPierceFunction = nil;
		HighFidelityBehavior = module_upvr.HighFidelityBehavior.Default;
		HighFidelitySegmentSize = 0.5;
		CosmeticBulletTemplate = nil;
		CosmeticBulletProvider = nil;
		CosmeticBulletContainer = nil;
		AutoIgnoreContainer = true;
	}
end
local any_newBehavior_result1_upvr = module_upvr.newBehavior()
function module_upvr.Fire(arg1, arg2, arg3, arg4, arg5) -- Line 137
	--[[ Upvalues[2]:
		[1]: any_newBehavior_result1_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	if arg5 == nil then
	end
	local any_new_result1 = any_import_result1_upvr.new(arg1, arg2, arg3, arg4, any_newBehavior_result1_upvr)
	any_new_result1.RayInfo.WorldRoot = arg1.WorldRoot
	return any_new_result1
end
return module_upvr