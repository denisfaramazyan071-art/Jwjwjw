-- Path: ReplicatedStorage.IIlIlllIlIllIIIIllIIlIlIIIIIIlIlIIlllIIIlIlIIlllIllIIlllIlII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:30
-- Luau version 6, Types version 3
-- Time taken: 0.007458 seconds

local module_upvr = {}
function module_upvr.new(arg1) -- Line 48
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var2 = arg1 or 0
	return setmetatable({
		_time0 = tick();
		_position0 = var2;
		_velocity0 = 0 * var2;
		_target = var2;
		_damper = 1;
		_speed = 1;
	}, module_upvr)
end
function module_upvr.Impulse(arg1, arg2) -- Line 63
	arg1.Velocity += arg2
end
function module_upvr.TimeSkip(arg1, arg2) -- Line 69
	local tick_result1 = tick()
	local any__positionVelocity_result1_4, any__positionVelocity_result2_2 = arg1:_positionVelocity(tick_result1 + arg2)
	arg1._position0 = any__positionVelocity_result1_4
	arg1._velocity0 = any__positionVelocity_result2_2
	arg1._time0 = tick_result1
end
function module_upvr.__index(arg1, arg2) -- Line 77
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr[arg2] then
		return module_upvr[arg2]
	end
	if arg2 == "Value" or arg2 == "Position" or arg2 == 'p' then
		local any__positionVelocity_result1_6, any__positionVelocity_result2_7 = arg1:_positionVelocity(tick())
		return any__positionVelocity_result1_6
	end
	if arg2 == "Velocity" or arg2 == 'v' then
		local _, any__positionVelocity_result2_5 = arg1:_positionVelocity(tick())
		return any__positionVelocity_result2_5
	end
	if arg2 == "Target" or arg2 == 't' then
		return arg1._target
	end
	if arg2 == "Damper" or arg2 == 'd' then
		return arg1._damper
	end
	if arg2 == "Speed" or arg2 == 's' then
		return arg1._speed
	end
	error("%q is not a valid member of Spring":format(tostring(arg2)), 2)
end
function module_upvr.__newindex(arg1, arg2, arg3) -- Line 97
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg2 == "Value" or arg2 == "Position" or arg2 == 'p' then
		local _, any__positionVelocity_result2_4 = arg1:_positionVelocity(tick())
		arg1._position0 = arg3
		arg1._velocity0 = any__positionVelocity_result2_4
	elseif arg2 == "Velocity" or arg2 == 'v' then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local any__positionVelocity_result1_3, _ = arg1:_positionVelocity(tick())
		arg1._position0 = any__positionVelocity_result1_3
		arg1._velocity0 = arg3
	elseif arg2 == "Target" or arg2 == 't' then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local any__positionVelocity_result1_2, any__positionVelocity_result2 = arg1:_positionVelocity(tick())
		arg1._position0 = any__positionVelocity_result1_2
		arg1._velocity0 = any__positionVelocity_result2
		arg1._target = arg3
	elseif arg2 == "Damper" or arg2 == 'd' then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local any__positionVelocity_result1, any__positionVelocity_result2_3 = arg1:_positionVelocity(tick())
		arg1._position0 = any__positionVelocity_result1
		arg1._velocity0 = any__positionVelocity_result2_3
		arg1._damper = math.clamp(arg3, 0, 1)
	elseif arg2 == "Speed" or arg2 == 's' then
		local tick_result1_2 = tick()
		local any__positionVelocity_result1_5, any__positionVelocity_result2_6 = arg1:_positionVelocity(tick_result1_2)
		arg1._position0 = any__positionVelocity_result1_5
		arg1._velocity0 = any__positionVelocity_result2_6
		if arg3 < 0 then
		else
		end
		arg1._speed = arg3
	else
		error("%q is not a valid member of Spring":format(tostring(arg2)), 2)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	arg1._time0 = tick()
end
function module_upvr._positionVelocity(arg1, arg2) -- Line 130
	local _position0 = arg1._position0
	local _velocity0 = arg1._velocity0
	local _target = arg1._target
	local _damper = arg1._damper
	local _speed = arg1._speed
	local var27 = _speed * (arg2 - arg1._time0)
	local var28 = _damper * _damper
	local var29
	local var30
	if var28 < 1 then
		local squareroot_2 = math.sqrt(1 - var28)
		local var32 = math.exp(-_damper * var27) / squareroot_2
		var30 = var32 * math.cos(squareroot_2 * var27)
		var29 = var32 * math.sin(squareroot_2 * var27)
	elseif var28 == 1 then
		local var33 = math.exp(-_damper * var27) / 1
		var30 = var33
		var29 = var33 * var27
	else
		local squareroot = math.sqrt(var28 - 1)
		local var35 = (math.exp((-_damper + squareroot) * var27)) / (2 * squareroot)
		local var36 = (math.exp((-_damper - squareroot) * var27)) / (2 * squareroot)
		var30 = var35 + var36
		var29 = var35 - var36
	end
	return (squareroot * var30 + _damper * var29) * _position0 + ((1) - (squareroot * var30 + _damper * var29)) * _target + var29 / _speed * _velocity0, -_speed * var29 * _position0 + _speed * var29 * _target + (squareroot * var30 - _damper * var29) * _velocity0
end
return module_upvr