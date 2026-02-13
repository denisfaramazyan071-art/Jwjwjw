-- Path: StarterPlayer.StarterPlayerScripts.PlayerModule.CameraModule.ZoomController.Popper

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:02:21
-- Luau version 6, Types version 3
-- Time taken: 0.020652 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Players = game:GetService("Players")
local module = require(script.Parent.Parent.Parent:WaitForChild("CommonUtils"):WaitForChild("FlagUtil"))
local any_getUserFlag_result1_upvr_2 = module.getUserFlag("UserRaycastUpdateAPI")
local any_getUserFlag_result1_upvr_3 = module.getUserFlag("UserCurrentCameraUpdate2")
local var22_upvr = "UserPlayerConnectionMemoryLeak"
local any_getUserFlag_result1_upvr = module.getUserFlag(var22_upvr)
if any_getUserFlag_result1_upvr_3 then
	var22_upvr = require(script.Parent.Parent.Parent:WaitForChild("CommonUtils"):WaitForChild("CameraWrapper")).new()
else
	var22_upvr = nil
end
if any_getUserFlag_result1_upvr_3 then
	local _
else
end
if any_getUserFlag_result1_upvr_3 then
	var22_upvr:Enable()
end
local tan_upvr = math.tan
local rad_upvr = math.rad
local new_upvr = Ray.new
local RaycastParams_new_result1_upvr = RaycastParams.new()
RaycastParams_new_result1_upvr.IgnoreWater = true
RaycastParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Exclude
local RaycastParams_new_result1_upvr_2 = RaycastParams.new()
RaycastParams_new_result1_upvr_2.IgnoreWater = true
local Include_upvr = Enum.RaycastFilterType.Include
RaycastParams_new_result1_upvr_2.FilterType = Include_upvr
if any_getUserFlag_result1_upvr then
	Include_upvr = require(script.Parent.Parent.Parent:WaitForChild("CommonUtils"):WaitForChild("ConnectionUtil")).new()
else
	Include_upvr = nil
end
local function _(arg1) -- Line 42, Named "getTotalTransparency"
	return 1 - (1 - arg1.Transparency) * (1 - arg1.LocalTransparencyModifier)
end
local function _(arg1, arg2) -- Line 46, Named "eraseFromEnd"
	for i = #arg1, arg2 + 1, -1 do
		arg1[i] = nil
	end
end
if any_getUserFlag_result1_upvr_3 then
	local var32_upvw
	local var33_upvw
	local function updateProjection() -- Line 56
		--[[ Upvalues[5]:
			[1]: var22_upvr (readonly)
			[2]: rad_upvr (readonly)
			[3]: var32_upvw (read and write)
			[4]: tan_upvr (readonly)
			[5]: var33_upvw (read and write)
		]]
		local any_getCamera_result1_2 = var22_upvr:getCamera()
		local ViewportSize_2 = any_getCamera_result1_2.ViewportSize
		var32_upvw = tan_upvr(rad_upvr(any_getCamera_result1_2.FieldOfView) / 2) * 2
		var33_upvw = ViewportSize_2.X / ViewportSize_2.Y * var32_upvw
	end
	var22_upvr:Connect("FieldOfView", updateProjection)
	var22_upvr:Connect("ViewportSize", updateProjection)
	local any_getCamera_result1 = var22_upvr:getCamera()
	local ViewportSize = any_getCamera_result1.ViewportSize
	var32_upvw = tan_upvr(rad_upvr(any_getCamera_result1.FieldOfView) / 2) * 2
	local var38_upvw = var32_upvw
	var33_upvw = ViewportSize.X / ViewportSize.Y * var38_upvw
	local NearPlaneZ_upvw = var22_upvr:getCamera().NearPlaneZ
	var22_upvr:Connect("NearPlaneZ", function() -- Line 72
		--[[ Upvalues[2]:
			[1]: NearPlaneZ_upvw (read and write)
			[2]: var22_upvr (readonly)
		]]
		NearPlaneZ_upvw = var22_upvr:getCamera().NearPlaneZ
	end)
	-- KONSTANTWARNING: GOTO [213] #159
end
local CurrentCamera_upvw = game.Workspace.CurrentCamera
local function updateProjection() -- Line 78
	--[[ Upvalues[5]:
		[1]: CurrentCamera_upvw (read and write)
		[2]: rad_upvr (readonly)
		[3]: var38_upvw (read and write)
		[4]: tan_upvr (readonly)
		[5]: var33_upvw (read and write)
	]]
	local ViewportSize_4 = CurrentCamera_upvw.ViewportSize
	var38_upvw = tan_upvr(rad_upvr(CurrentCamera_upvw.FieldOfView) / 2) * 2
	var33_upvw = ViewportSize_4.X / ViewportSize_4.Y * var38_upvw
end
CurrentCamera_upvw:GetPropertyChangedSignal("FieldOfView"):Connect(updateProjection)
CurrentCamera_upvw:GetPropertyChangedSignal("ViewportSize"):Connect(updateProjection)
local ViewportSize_5 = CurrentCamera_upvw.ViewportSize
var38_upvw = tan_upvr(rad_upvr(CurrentCamera_upvw.FieldOfView) / 2) * 2
local var44_upvw = var38_upvw
var33_upvw = ViewportSize_5.X / ViewportSize_5.Y * var44_upvw
NearPlaneZ_upvw = CurrentCamera_upvw.NearPlaneZ
local var45_upvw = NearPlaneZ_upvw
CurrentCamera_upvw:GetPropertyChangedSignal("NearPlaneZ"):Connect(function() -- Line 92
	--[[ Upvalues[2]:
		[1]: var45_upvw (read and write)
		[2]: CurrentCamera_upvw (read and write)
	]]
	var45_upvw = CurrentCamera_upvw.NearPlaneZ
end)
local tbl_upvw = {}
local tbl_upvr = {}
local function _() -- Line 101, Named "refreshIgnoreList"
	--[[ Upvalues[2]:
		[1]: tbl_upvw (read and write)
		[2]: tbl_upvr (readonly)
	]]
	local var53 = 1
	tbl_upvw = {}
	for _, v in pairs(tbl_upvr) do
		tbl_upvw[var53] = v
		var53 += 1
	end
end
local function playerAdded(arg1) -- Line 110
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvw (read and write)
		[3]: any_getUserFlag_result1_upvr (readonly)
		[4]: Include_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local function characterAdded(arg1_2) -- Line 111
		--[[ Upvalues[3]:
			[1]: tbl_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: tbl_upvw (copied, read and write)
		]]
		tbl_upvr[arg1] = arg1_2
		local var69 = 1
		tbl_upvw = {}
		for _, v_2 in pairs(tbl_upvr) do
			tbl_upvw[var69] = v_2
			var69 += 1
		end
	end
	local function characterRemoving() -- Line 115
		--[[ Upvalues[3]:
			[1]: tbl_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: tbl_upvw (copied, read and write)
		]]
		tbl_upvr[arg1] = nil
		local var77 = 1
		tbl_upvw = {}
		for _, v_3 in pairs(tbl_upvr) do
			tbl_upvw[var77] = v_3
			var77 += 1
		end
	end
	if any_getUserFlag_result1_upvr then
		Include_upvr:trackConnection(`{arg1.UserId}CharacterAdded`, arg1.CharacterAdded:Connect(characterAdded))
		Include_upvr:trackConnection(`{arg1.UserId}CharacterRemoving`, arg1.CharacterRemoving:Connect(characterRemoving))
	else
		arg1.CharacterAdded:Connect(characterAdded)
		arg1.CharacterRemoving:Connect(characterRemoving)
	end
	if arg1.Character then
		tbl_upvr[arg1] = arg1.Character
		tbl_upvw = {}
		for _, v_4 in pairs(tbl_upvr) do
			tbl_upvw[1] = v_4
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local var84
		end
	end
end
Players.PlayerAdded:Connect(playerAdded)
Players.PlayerRemoving:Connect(function(arg1) -- Line 133, Named "playerRemoving"
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvw (read and write)
		[3]: any_getUserFlag_result1_upvr (readonly)
		[4]: Include_upvr (readonly)
	]]
	tbl_upvr[arg1] = nil
	local var89 = 1
	tbl_upvw = {}
	for _, v_5 in pairs(tbl_upvr) do
		tbl_upvw[var89] = v_5
		var89 += 1
	end
	if any_getUserFlag_result1_upvr then
		v_5 = arg1.UserId
		Include_upvr:disconnect(`{v_5}CharacterAdded`)
		v_5 = arg1.UserId
		Include_upvr:disconnect(`{v_5}CharacterRemoving`)
	end
end)
for _, v_6 in ipairs(Players:GetPlayers()) do
	playerAdded(v_6)
	local var96
end
tbl_upvw = {}
local var97_upvw = tbl_upvw
for _, v_7 in pairs(tbl_upvr) do
	var97_upvw[1] = v_7
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var101
end
tbl_upvr = nil
local var102_upvw = tbl_upvr
local var103_upvw
if any_getUserFlag_result1_upvr_3 then
	var101 = "CameraSubject"
	nil(var101, function() -- Line 173
		--[[ Upvalues[2]:
			[1]: var22_upvr (readonly)
			[2]: var103_upvw (read and write)
		]]
		local CameraSubject_2 = var22_upvr:getCamera().CameraSubject
		if CameraSubject_2 and CameraSubject_2:IsA("Humanoid") then
			var103_upvw = CameraSubject_2.RootPart
		else
			if CameraSubject_2 and CameraSubject_2:IsA("BasePart") then
				var103_upvw = CameraSubject_2
				return
			end
			var103_upvw = nil
		end
	end)
else
	CurrentCamera_upvw:GetPropertyChangedSignal("CameraSubject"):Connect(function() -- Line 184
		--[[ Upvalues[2]:
			[1]: CurrentCamera_upvw (read and write)
			[2]: var103_upvw (read and write)
		]]
		local CameraSubject = CurrentCamera_upvw.CameraSubject
		if CameraSubject:IsA("Humanoid") then
			var103_upvw = CameraSubject.RootPart
		else
			if CameraSubject:IsA("BasePart") then
				var103_upvw = CameraSubject
				return
			end
			var103_upvw = nil
		end
	end)
end
local function _(arg1) -- Line 196, Named "canOcclude"
	--[[ Upvalues[1]:
		[1]: var102_upvw (read and write)
	]]
	local var110 = false
	if 1 - (1 - arg1.Transparency) * (1 - arg1.LocalTransparencyModifier) < 0.25 then
		var110 = arg1.CanCollide
		if var110 then
			var110 = false
			if var102_upvw ~= (arg1:GetRootPart() or arg1) then
				var110 = not arg1:IsA("TrussPart")
			end
		end
	end
	return var110
end
local tbl_upvr_2 = {Vector2.new(0.4, 0), Vector2.new(-0.4, 0), Vector2.new(0, -0.4), Vector2.new(0, 0.4), Vector2.new(0, 0.2)}
local function getCollisionPoint_upvr(arg1, arg2) -- Line 224, Named "getCollisionPoint"
	--[[ Upvalues[4]:
		[1]: any_getUserFlag_result1_upvr_2 (readonly)
		[2]: RaycastParams_new_result1_upvr (readonly)
		[3]: var97_upvw (read and write)
		[4]: new_upvr (readonly)
	]]
	-- KONSTANTERROR: Failed to generate AST for function `getCollisionPoint`:
assertion failed!
Traceback:
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K

end
local function queryPoint_upvr(arg1, arg2, arg3, arg4) -- Line 262, Named "queryPoint"
	--[[ Upvalues[7]:
		[1]: var97_upvw (read and write)
		[2]: var45_upvw (read and write)
		[3]: any_getUserFlag_result1_upvr_2 (readonly)
		[4]: RaycastParams_new_result1_upvr (readonly)
		[5]: var102_upvw (read and write)
		[6]: RaycastParams_new_result1_upvr_2 (readonly)
		[7]: new_upvr (readonly)
	]]
	-- KONSTANTERROR: Failed to generate AST for function `queryPoint`:
assertion failed!
Traceback:
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K

end
local function queryViewport_upvr(arg1, arg2) -- Line 365, Named "queryViewport"
	--[[ Upvalues[7]:
		[1]: CurrentCamera_upvw (read and write)
		[2]: any_getUserFlag_result1_upvr_3 (readonly)
		[3]: var22_upvr (readonly)
		[4]: var33_upvw (read and write)
		[5]: var44_upvw (read and write)
		[6]: var45_upvw (read and write)
		[7]: queryPoint_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	debug.profilebegin("queryViewport")
	local lookVector = arg1.lookVector
	local var121
	if any_getUserFlag_result1_upvr_3 then
		lookVector = var22_upvr:getCamera()
	else
		lookVector = CurrentCamera_upvw
	end
	CurrentCamera_upvw = lookVector
	local ViewportSize_3 = CurrentCamera_upvw.ViewportSize
	var121 = math.huge
	for i_9 = 0, 1 do
		for i_10 = 0, 1 do
			local queryPoint_result1, queryPoint_result2 = queryPoint_upvr(arg1.p + var45_upvw * ((arg1.rightVector) * ((i_9 - 0.5) * var33_upvw) + (arg1.upVector) * ((i_10 - 0.5) * var44_upvw)), -lookVector, arg2, CurrentCamera_upvw:ViewportPointToRay(ViewportSize_3.x * i_9, ViewportSize_3.y * i_10).Origin)
			if queryPoint_result2 < math.huge then
			end
			if queryPoint_result1 < var121 then
				var121 = queryPoint_result1
			end
		end
	end
	debug.profileend()
	return var121, queryPoint_result2
end
local min_upvr = math.min
local function testPromotion_upvr(arg1, arg2, arg3) -- Line 408, Named "testPromotion"
	--[[ Upvalues[4]:
		[1]: getCollisionPoint_upvr (readonly)
		[2]: min_upvr (readonly)
		[3]: queryPoint_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
	]]
	debug.profilebegin("testPromotion")
	local p = arg1.p
	debug.profilebegin("extrapolate")
	for i_11 = 0, min_upvr(1.25, arg3.rotVelocity.magnitude + (getCollisionPoint_upvr(p, arg3.posVelocity * 1.25) - p).Magnitude / arg3.posVelocity.magnitude), 0.0625 do
		local any_extrapolate_result1 = arg3.extrapolate(i_11)
		if arg2 <= queryPoint_upvr(any_extrapolate_result1.p, -any_extrapolate_result1.lookVector, arg2) then
			return false
		end
	end
	debug.profileend()
	debug.profilebegin("testOffsets")
	for _, v_8 in ipairs(tbl_upvr_2) do
		local getCollisionPoint_result1 = getCollisionPoint_upvr(p, arg1.rightVector * v_8.x + arg1.upVector * v_8.y)
		if queryPoint_upvr(getCollisionPoint_result1, (p + -arg1.lookVector * arg2 - getCollisionPoint_result1).Unit, arg2) == math.huge then
			return false
		end
	end
	debug.profileend()
	debug.profileend()
	return true
end
return function(arg1, arg2, arg3) -- Line 457, Named "Popper"
	--[[ Upvalues[4]:
		[1]: var102_upvw (read and write)
		[2]: var103_upvw (read and write)
		[3]: queryViewport_upvr (readonly)
		[4]: testPromotion_upvr (readonly)
	]]
	debug.profilebegin("popper")
	local var135
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var135 = var103_upvw:GetRootPart()
		return var135
	end
	if not var103_upvw or not INLINED() then
		var135 = var103_upvw
	end
	var102_upvw = var135
	var135 = arg2
	local queryViewport_upvr_result1, queryViewport_upvr_result2 = queryViewport_upvr(arg1, arg2)
	if queryViewport_upvr_result2 < var135 then
		var135 = queryViewport_upvr_result2
	end
	if queryViewport_upvr_result1 < var135 and testPromotion_upvr(arg1, arg2, arg3) then
		var135 = queryViewport_upvr_result1
	end
	var102_upvw = nil
	debug.profileend()
	return var135
end