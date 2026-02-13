-- Path: ReplicatedStorage.lIllllllIIlllIIlIIIllIIlIIlIllIIIlIIlllllIIlIIIIIlIIIIIIlIll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:00:50
-- Luau version 6, Types version 3
-- Time taken: 0.001716 seconds

local module = {}
local tbl_upvr = {
	reset = {
		Time = 0.01;
		HighGain = 10;
		MidGain = 10;
	};
	normal = {
		Time = 0.3;
		HighGain = 10;
		MidGain = 10;
	};
	damaged = {
		Time = 0.3;
		HighGain = 10;
		MidGain = 10;
	};
	dead = {
		Time = 0.3;
		HighGain = -80;
		MidGain = -80;
	};
}
local EqualizerSoundEffect_upvr = game.ReplicatedStorage.soundgroups.world.EqualizerSoundEffect
function module.new(arg1) -- Line 35
	--[[ Upvalues[2]:
		[1]: EqualizerSoundEffect_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	game:GetService("TweenService"):Create(EqualizerSoundEffect_upvr, TweenInfo.new(tbl_upvr[arg1].Time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
		HighGain = tbl_upvr[arg1].HighGain;
		MidGain = tbl_upvr[arg1].MidGain;
	}):Play()
end
return module