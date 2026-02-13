-- Path: ReplicatedStorage.llIllIIlIIIIIllIIlllllIlllIllIllllIllIllIIIllllllIIlIIllIIlI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:07
-- Luau version 6, Types version 3
-- Time taken: 0.008058 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local new_2_upvr = Vector3.new
module_2_upvr.CameraShakeState = {
	FadingIn = 0;
	FadingOut = 1;
	Sustained = 2;
	Inactive = 3;
}
function module_2_upvr.new(arg1, arg2, arg3, arg4, arg5) -- Line 16
	--[[ Upvalues[2]:
		[1]: new_2_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	if arg3 == nil then
		local var4 = 0
	end
	if arg4 == nil then
		local const_number = 0
	end
	if type(arg1) ~= "number" then
	else
	end
	assert(true, "Magnitude must be a number")
	if type(arg2) ~= "number" then
		-- KONSTANTWARNING: GOTO [30] #23
	end
	assert(true, "Roughness must be a number")
	if type(var4) ~= "number" then
	else
	end
	assert(true, "FadeInTime must be a number")
	if arg5 == true then
	end
	local module = {}
	module.Magnitude = arg1
	module.Roughness = arg2
	module.PositionInfluence = new_2_upvr()
	module.RotationInfluence = new_2_upvr()
	module.DeleteOnInactive = true
	module.roughMod = 1
	module.magnMod = 1
	local any_NextNumber_result1 = Random.new():NextNumber(const_number[1], const_number[2])
	module.fadeOutDuration = any_NextNumber_result1
	module.fadeInDuration = var4
	if 0 >= var4 then
		any_NextNumber_result1 = false
	else
		any_NextNumber_result1 = true
	end
	module.sustain = any_NextNumber_result1
	if 0 < var4 then
	else
	end
	module.currentFadeTime = 1
	module.horizontalTick = Random.new():NextNumber(-100, 100)
	module.tick = -40
	module._camShakeInstance = true
	return setmetatable(module, module_2_upvr)
end
local noise_upvr = math.noise
function module_2_upvr.UpdateShake(arg1, arg2) -- Line 54
	--[[ Upvalues[2]:
		[1]: noise_upvr (readonly)
		[2]: new_2_upvr (readonly)
	]]
	local tick = arg1.tick
	local var10
	if 0 < arg1.fadeInDuration and arg1.sustain then
		if var10 < 1 then
			var10 += arg2 / arg1.fadeInDuration
		elseif 0 < arg1.fadeOutDuration then
			arg1.sustain = false
		end
	end
	if not arg1.sustain then
		var10 -= arg2 / arg1.fadeOutDuration
	end
	if arg1.sustain then
		arg1.tick = tick + arg2 * arg1.Roughness * arg1.roughMod
	else
		arg1.tick = tick + arg2 * arg1.Roughness * arg1.roughMod * var10
	end
	arg1.currentFadeTime = var10
	return new_2_upvr(noise_upvr(tick, 0) * 0.5, noise_upvr(0, arg1.horizontalTick) * 0.5, noise_upvr(tick, tick) * 0.5) * arg1.Magnitude * arg1.magnMod * var10
end
function module_2_upvr.StartFadeOut(arg1, arg2) -- Line 91
	if arg2 == 0 then
		arg1.currentFadeTime = 0
	end
	arg1.fadeOutDuration = arg2
	arg1.fadeInDuration = 0
	arg1.sustain = false
end
function module_2_upvr.StartFadeIn(arg1, arg2) -- Line 101
	if arg2 == 0 then
		arg1.currentFadeTime = 1
	end
	local var11 = arg2
	if not var11 then
		var11 = arg1.fadeInDuration
	end
	arg1.fadeInDuration = var11
	arg1.fadeOutDuration = 0
	arg1.sustain = true
end
function module_2_upvr.GetScaleRoughness(arg1) -- Line 111
	return arg1.roughMod
end
function module_2_upvr.SetScaleRoughness(arg1, arg2) -- Line 116
	arg1.roughMod = arg2
end
function module_2_upvr.GetScaleMagnitude(arg1) -- Line 121
	return arg1.magnMod
end
function module_2_upvr.SetScaleMagnitude(arg1, arg2) -- Line 126
	arg1.magnMod = arg2
end
function module_2_upvr.GetNormalizedFadeTime(arg1) -- Line 131
	return arg1.currentFadeTime
end
function module_2_upvr.IsShaking(arg1) -- Line 136
	local var12 = true
	if 0 >= arg1.currentFadeTime then
		var12 = arg1.sustain
	end
	return var12
end
function module_2_upvr.IsFadingOut(arg1) -- Line 141
	local var13 = not arg1.sustain
	if var13 then
		if 0 >= arg1.currentFadeTime then
			var13 = false
		else
			var13 = true
		end
	end
	return var13
end
function module_2_upvr.IsFadingIn(arg1) -- Line 146
	local var15 = false
	if arg1.currentFadeTime < 1 then
		var15 = arg1.sustain
		if var15 then
			if 0 >= arg1.fadeInDuration then
				var15 = false
			else
				var15 = true
			end
		end
	end
	return var15
end
function module_2_upvr.GetState(arg1) -- Line 151
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg1:IsFadingIn() then
		return module_2_upvr.CameraShakeState.FadingIn
	end
	if arg1:IsFadingOut() then
		return module_2_upvr.CameraShakeState.FadingOut
	end
	if arg1:IsShaking() then
		return module_2_upvr.CameraShakeState.Sustained
	end
	return module_2_upvr.CameraShakeState.Inactive
end
return module_2_upvr