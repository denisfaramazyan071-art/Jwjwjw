-- Path: ReplicatedStorage.llllIlIIIllIllIlllIlIIllIIIIIIIIIIIIIIllllIlIllIIlIlIIIlIIIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:11
-- Luau version 6, Types version 3
-- Time taken: 0.008750 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local module_upvr = {}
module_upvr.__index = module_upvr
local zero_vector3_upvr = Vector3.new()
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llIllIIlIIIIIllIIlllllIlllIllIllllIllIllIIIllllllIIlIIllIIlI")
module_upvr.CameraShakeInstance = any_import_result1_upvr
module_upvr.Presets = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("lIIllIIlIlIIlIIIllIlIIIlllllIIlIlIIllIlIIllIIIIIllIIlIlIIlII")
function module_upvr.new(arg1, arg2) -- Line 26
	--[[ Upvalues[2]:
		[1]: zero_vector3_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var5
	if type(arg1) ~= "number" then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "RenderPriority must be a number (e.g.: Enum.RenderPriority.Camera.Value)")
	if type(arg2) ~= "function" then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "Callback must be a function")
	var5 = {}
	var5._running = false
	var5._renderName = "CameraShaker"
	var5._renderPriority = arg1
	var5._posAddShake = zero_vector3_upvr
	var5._rotAddShake = zero_vector3_upvr
	var5._camShakeInstances = {}
	var5._removeInstances = {}
	var5._callback = arg2
	return setmetatable(var5, module_upvr)
end
local profilebegin_upvr = debug.profilebegin
local profileend_upvr = debug.profileend
function module_upvr.Start(arg1) -- Line 47
	--[[ Upvalues[2]:
		[1]: profilebegin_upvr (readonly)
		[2]: profileend_upvr (readonly)
	]]
	if arg1._running then
	else
		arg1._running = true
		local _callback_upvr = arg1._callback
		game:GetService("RunService"):BindToRenderStep(arg1._renderName, arg1._renderPriority, function(arg1_2) -- Line 51
			--[[ Upvalues[4]:
				[1]: profilebegin_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: profileend_upvr (copied, readonly)
				[4]: _callback_upvr (readonly)
			]]
			profilebegin_upvr("CameraShakerUpdate")
			profileend_upvr()
			_callback_upvr(arg1:Update(arg1_2))
		end)
	end
end
function module_upvr.Stop(arg1) -- Line 60
	if not arg1._running then
	else
		game:GetService("RunService"):UnbindFromRenderStep(arg1._renderName)
		arg1._running = false
	end
end
function module_upvr.StopSustained(arg1, arg2) -- Line 67
	for _, v in pairs(arg1._camShakeInstances) do
		if v.fadeOutDuration == 0 then
			local var17 = arg2
			if not var17 then
				var17 = v.fadeInDuration
			end
			v:StartFadeOut(var17)
		end
	end
end
local CameraShakeState_upvr = any_import_result1_upvr.CameraShakeState
local new_2_upvr = CFrame.new
local Angles_upvr = CFrame.Angles
local rad_upvr = math.rad
function module_upvr.Update(arg1, arg2) -- Line 76
	--[[ Upvalues[5]:
		[1]: zero_vector3_upvr (readonly)
		[2]: CameraShakeState_upvr (readonly)
		[3]: new_2_upvr (readonly)
		[4]: Angles_upvr (readonly)
		[5]: rad_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local _camShakeInstances = arg1._camShakeInstances
	local var31
	for i_2 = 1, #_camShakeInstances do
		local var32 = _camShakeInstances[i_2]
		local any_GetState_result1 = var32:GetState()
		if any_GetState_result1 == CameraShakeState_upvr.Inactive and var32.DeleteOnInactive then
			arg1._removeInstances[#arg1._removeInstances + 1] = i_2
		elseif any_GetState_result1 ~= CameraShakeState_upvr.Inactive then
			local any_UpdateShake_result1 = var32:UpdateShake(arg2)
			var31 += any_UpdateShake_result1 * var32.PositionInfluence
			local var35 = zero_vector3_upvr + any_UpdateShake_result1 * var32.RotationInfluence
		end
	end
	for i_3 = #arg1._removeInstances, 1, -1 do
		table.remove(_camShakeInstances, arg1._removeInstances[i_3])
		arg1._removeInstances[i_3] = nil
	end
	return new_2_upvr(var31) * Angles_upvr(0, rad_upvr(var35.Y), 0) * Angles_upvr(rad_upvr(var35.X), 0, rad_upvr(var35.Z))
end
function module_upvr.Shake(arg1, arg2) -- Line 114
	local var36 = false
	if type(arg2) == "table" then
		var36 = arg2._camShakeInstance
	end
	assert(var36, "ShakeInstance must be of type CameraShakeInstance")
	arg1._camShakeInstances[#arg1._camShakeInstances + 1] = arg2
	return arg2
end
function module_upvr.ShakeSustain(arg1, arg2) -- Line 121
	local var37 = false
	if type(arg2) == "table" then
		var37 = arg2._camShakeInstance
	end
	assert(var37, "ShakeInstance must be of type CameraShakeInstance")
	arg1._camShakeInstances[#arg1._camShakeInstances + 1] = arg2
	arg2:StartFadeIn(arg2.fadeInDuration)
	return arg2
end
function module_upvr.ShakeOnce(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 129
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	local any_new_result1 = any_import_result1_upvr.new(arg2, arg3, arg4, arg5)
	local var39
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var39 = arg6
		return var39
	end
	if typeof(arg6) ~= "Vector3" or not INLINED() then
		var39 = Vector3.new(0.15000, 0.15000, 0.15000)
	end
	any_new_result1.PositionInfluence = var39
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var39 = arg7
		return var39
	end
	if typeof(arg7) ~= "Vector3" or not INLINED_2() then
		var39 = Vector3.new(1, 1, 1)
	end
	any_new_result1.RotationInfluence = var39
	var39 = arg1._camShakeInstances
	var39[#arg1._camShakeInstances + 1] = any_new_result1
	return any_new_result1
end
function module_upvr.StartShake(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 138
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	local any_new_result1_2 = any_import_result1_upvr.new(arg2, arg3, arg4)
	local var41
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var41 = arg5
		return var41
	end
	if typeof(arg5) ~= "Vector3" or not INLINED_3() then
		var41 = Vector3.new(0.15000, 0.15000, 0.15000)
	end
	any_new_result1_2.PositionInfluence = var41
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var41 = arg6
		return var41
	end
	if typeof(arg6) ~= "Vector3" or not INLINED_4() then
		var41 = Vector3.new(1, 1, 1)
	end
	any_new_result1_2.RotationInfluence = var41
	var41 = any_new_result1_2:StartFadeIn
	var41(arg4)
	var41 = arg1._camShakeInstances
	var41[#arg1._camShakeInstances + 1] = any_new_result1_2
	return any_new_result1_2
end
return module_upvr