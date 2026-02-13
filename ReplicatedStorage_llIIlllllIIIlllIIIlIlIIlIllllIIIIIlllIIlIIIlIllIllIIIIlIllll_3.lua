-- Path: ReplicatedStorage.llIIlllllIIIlllIIIlIlIIlIllllIIIIIlllIIlIIIlIllIllIIIIlIllll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:00:49
-- Luau version 6, Types version 3
-- Time taken: 0.001589 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local module = {}
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("lIIlIIIllIllIIIllllIlIllIlIlIlIlIIlllIlIlllllIllIllIlIllIllI")
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IlllIIIIIlllIlIllIlIllIIlllIlIIllIlIIIllIllIIlIIllIlllIIlIII")
function module.miss(arg1, arg2) -- Line 8
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr_2 (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	any_import_result1_upvr_2.appear(1, 2, 0.1, 3)
	if 15 <= arg2 then
	elseif 10 <= arg2 then
	elseif 5 <= arg2 then
	elseif 2 <= arg2 then
	end
	any_import_result1_upvr.playWorld(game.ReplicatedStorage.resources.sounds.bullet:GetChildren()[math.random(1, #game.ReplicatedStorage.resources.sounds.bullet:GetChildren())].Name, arg1, {
		PlaybackSpeed = {
			low = 0.8;
			high = 1.2;
		};
	})
end
return module