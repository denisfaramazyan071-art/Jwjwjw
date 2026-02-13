-- Path: StarterPlayer.StarterPlayerScripts.PlayerModule.ControlModule

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:02:08
-- Luau version 6, Types version 3
-- Time taken: 0.033609 seconds

local module_upvr_3 = {}
module_upvr_3.__index = module_upvr_3
local Players_upvr = game:GetService("Players")
local UserInputService_upvr = game:GetService("UserInputService")
local GuiService_upvr = game:GetService("GuiService")
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local VRService_upvr = game:GetService("VRService")
local module_upvr_7 = require(script:WaitForChild("Keyboard"))
local module_upvr_8 = require(script:WaitForChild("Gamepad"))
local module_upvr_4 = require(script:WaitForChild("DynamicThumbstick"))
local pcall_result1, pcall_result2 = pcall(function() -- Line 41
	return UserSettings():IsUserFeatureEnabled("UserDynamicThumbstickSafeAreaUpdate")
end)
local module_upvr_2 = require(script:WaitForChild("TouchThumbstick"))
local module_upvr_5 = require(script:WaitForChild("ClickToMoveController"))
local Value_upvr = Enum.ContextActionPriority.Medium.Value
local tbl_upvr = {
	[Enum.TouchMovementMode.DPad] = module_upvr_4;
	[Enum.DevTouchMovementMode.DPad] = module_upvr_4;
	[Enum.TouchMovementMode.Thumbpad] = module_upvr_4;
	[Enum.DevTouchMovementMode.Thumbpad] = module_upvr_4;
	[Enum.TouchMovementMode.Thumbstick] = module_upvr_2;
	[Enum.DevTouchMovementMode.Thumbstick] = module_upvr_2;
	[Enum.TouchMovementMode.DynamicThumbstick] = module_upvr_4;
	[Enum.DevTouchMovementMode.DynamicThumbstick] = module_upvr_4;
	[Enum.TouchMovementMode.ClickToMove] = module_upvr_5;
	[Enum.DevTouchMovementMode.ClickToMove] = module_upvr_5;
	[Enum.TouchMovementMode.Default] = module_upvr_4;
	[Enum.ComputerMovementMode.Default] = module_upvr_7;
	[Enum.ComputerMovementMode.KeyboardMouse] = module_upvr_7;
	[Enum.DevComputerMovementMode.KeyboardMouse] = module_upvr_7;
	[Enum.DevComputerMovementMode.Scriptable] = nil;
	[Enum.ComputerMovementMode.ClickToMove] = module_upvr_5;
	[Enum.DevComputerMovementMode.ClickToMove] = module_upvr_5;
}
local module_upvr_6 = require(script:WaitForChild("VehicleController"))
local RunService_upvr = game:GetService("RunService")
function module_upvr_3.new() -- Line 84
	--[[ Upvalues[8]:
		[1]: module_upvr_3 (readonly)
		[2]: Players_upvr (readonly)
		[3]: module_upvr_6 (readonly)
		[4]: Value_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: UserGameSettings_upvr (readonly)
		[7]: GuiService_upvr (readonly)
		[8]: UserInputService_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr_3)
	setmetatable_result1_upvr.controllers = {}
	setmetatable_result1_upvr.activeControlModule = nil
	setmetatable_result1_upvr.activeController = nil
	setmetatable_result1_upvr.touchJumpController = nil
	setmetatable_result1_upvr.moveFunction = Players_upvr.LocalPlayer.Move
	setmetatable_result1_upvr.humanoid = nil
	setmetatable_result1_upvr.controlsEnabled = true
	setmetatable_result1_upvr.humanoidSeatedConn = nil
	setmetatable_result1_upvr.vehicleController = nil
	setmetatable_result1_upvr.touchControlFrame = nil
	setmetatable_result1_upvr.currentTorsoAngle = 0
	setmetatable_result1_upvr.inputMoveVector = Vector3.new(0, 0, 0)
	setmetatable_result1_upvr.vehicleController = module_upvr_6.new(Value_upvr)
	Players_upvr.LocalPlayer.CharacterAdded:Connect(function(arg1) -- Line 109
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnCharacterAdded(arg1)
	end)
	Players_upvr.LocalPlayer.CharacterRemoving:Connect(function(arg1) -- Line 110
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnCharacterRemoving(arg1)
	end)
	if Players_upvr.LocalPlayer.Character then
		setmetatable_result1_upvr:OnCharacterAdded(Players_upvr.LocalPlayer.Character)
	end
	RunService_upvr:BindToRenderStep("ControlScriptRenderstep", Enum.RenderPriority.Input.Value, function(arg1) -- Line 115
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:OnRenderStepped(arg1)
	end)
	UserGameSettings_upvr:GetPropertyChangedSignal("TouchMovementMode"):Connect(function() -- Line 119
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:UpdateMovementMode()
	end)
	Players_upvr.LocalPlayer:GetPropertyChangedSignal("DevTouchMovementMode"):Connect(function() -- Line 122
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:UpdateMovementMode()
	end)
	UserGameSettings_upvr:GetPropertyChangedSignal("ComputerMovementMode"):Connect(function() -- Line 126
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:UpdateMovementMode()
	end)
	Players_upvr.LocalPlayer:GetPropertyChangedSignal("DevComputerMovementMode"):Connect(function() -- Line 129
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:UpdateMovementMode()
	end)
	setmetatable_result1_upvr.playerGui = nil
	setmetatable_result1_upvr.touchGui = nil
	setmetatable_result1_upvr.playerGuiAddedConn = nil
	GuiService_upvr:GetPropertyChangedSignal("TouchControlsEnabled"):Connect(function() -- Line 138
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:UpdateMovementMode()
		setmetatable_result1_upvr:UpdateActiveControlModuleEnabled()
	end)
	UserInputService_upvr:GetPropertyChangedSignal("PreferredInput"):Connect(function() -- Line 143
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:UpdateMovementMode()
	end)
	setmetatable_result1_upvr.playerGui = Players_upvr.LocalPlayer:FindFirstChildOfClass("PlayerGui")
	if not setmetatable_result1_upvr.playerGui then
		setmetatable_result1_upvr.playerGuiAddedConn = Players_upvr.LocalPlayer.ChildAdded:Connect(function(arg1) -- Line 149
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			if arg1:IsA("PlayerGui") then
				setmetatable_result1_upvr.playerGui = arg1
				setmetatable_result1_upvr.playerGuiAddedConn:Disconnect()
				setmetatable_result1_upvr.playerGuiAddedConn = nil
				setmetatable_result1_upvr:UpdateMovementMode()
			end
		end)
	end
	setmetatable_result1_upvr:UpdateMovementMode()
	return setmetatable_result1_upvr
end
function module_upvr_3.GetMoveVector(arg1) -- Line 167
	if arg1.activeController then
		return arg1.activeController:GetMoveVector()
	end
	return Vector3.new(0, 0, 0)
end
local function _(arg1) -- Line 174, Named "NormalizeAngle"
	arg1 = (arg1 + 12.566370614359172) % (-math.pi*2)
	local var30 = arg1
	if math.pi < var30 then
		var30 -= (-math.pi*2)
	end
	return var30
end
local function _(arg1, arg2) -- Line 182, Named "AverageAngle"
	local var31 = (arg2 - arg1 + 12.566370614359172) % (-math.pi*2)
	if math.pi < var31 then
		var31 -= (-math.pi*2)
	end
	local var32 = (arg1 + var31 / 2 + 12.566370614359172) % (-math.pi*2)
	if math.pi < var32 then
		var32 -= (-math.pi*2)
	end
	return var32
end
function module_upvr_3.GetEstimatedVRTorsoFrame(arg1) -- Line 187
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	local any_GetUserCFrame_result1 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
	local _, any_ToEulerAnglesYXZ_result2, _ = any_GetUserCFrame_result1:ToEulerAnglesYXZ()
	local var37
	if not VRService_upvr:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) or not VRService_upvr:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand) then
		arg1.currentTorsoAngle = -any_ToEulerAnglesYXZ_result2
	else
		local var38 = any_GetUserCFrame_result1.Position - VRService_upvr:GetUserCFrame(Enum.UserCFrame.LeftHand).Position
		local _ = any_GetUserCFrame_result1.Position - VRService_upvr:GetUserCFrame(Enum.UserCFrame.RightHand).Position
		local _ = -math.atan2(var38.X, var38.Z)
		var37 = _.Z
		var37 = -math.atan2(_.X, var37) - _
		var37 = (var37 + 12.566370614359172) % (-math.pi*2)
		if math.pi < var37 then
			var37 -= (-math.pi*2)
		end
		var37 = _ + var37 / 2
		var37 = (var37 + 12.566370614359172) % (-math.pi*2)
		if math.pi < var37 then
			var37 -= (-math.pi*2)
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if math.pi < (-any_ToEulerAnglesYXZ_result2 - arg1.currentTorsoAngle + 12.566370614359172) % (-math.pi*2) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
		local var41 = (-any_ToEulerAnglesYXZ_result2 - arg1.currentTorsoAngle + 12.566370614359172) % (-math.pi*2) - (-math.pi*2)
		local var42 = (var37 - arg1.currentTorsoAngle + 12.566370614359172) % (-math.pi*2)
		if math.pi < var42 then
			var42 -= (-math.pi*2)
		end
		var42 = false
		local var43 = var42
		if (-math.pi/2) < var42 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if var42 >= (math.pi/2) then
				var43 = false
			else
				var43 = true
			end
		end
		if not var43 then
		end
		local minimum = math.min(var41, var41)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local maximum = math.max(var41, var41)
		local var46 = 0
		if 0 < minimum then
			var46 = minimum
		elseif maximum < 0 then
			var46 = maximum
		end
		arg1.currentTorsoAngle = var46 + arg1.currentTorsoAngle
	end
	return CFrame.new(any_GetUserCFrame_result1.Position) * CFrame.fromEulerAnglesYXZ(0, -arg1.currentTorsoAngle, 0)
end
function module_upvr_3.GetActiveController(arg1) -- Line 231
	return arg1.activeController
end
local module_upvr = require(script:WaitForChild("TouchJump"))
function module_upvr_3.UpdateActiveControlModuleEnabled(arg1) -- Line 236
	--[[ Upvalues[7]:
		[1]: Players_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: module_upvr_4 (readonly)
		[6]: module_upvr (readonly)
		[7]: GuiService_upvr (readonly)
	]]
	local function _() -- Line 238
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Players_upvr (copied, readonly)
		]]
		arg1.activeController:Enable(false)
		if arg1.touchJumpController then
			arg1.touchJumpController:Enable(false)
		end
		if arg1.moveFunction then
			arg1.moveFunction(Players_upvr.LocalPlayer, Vector3.new(0, 0, 0), true)
		end
	end
	if not arg1.activeController then
	else
		if not arg1.controlsEnabled then
			arg1.activeController:Enable(false)
			if arg1.touchJumpController then
				arg1.touchJumpController:Enable(false)
			end
			if arg1.moveFunction then
				arg1.moveFunction(Players_upvr.LocalPlayer, Vector3.new(0, 0, 0), true)
			end
			return
		end
		if not GuiService_upvr.TouchControlsEnabled and UserInputService_upvr.PreferredInput == Enum.PreferredInput.Touch and (arg1.activeControlModule == module_upvr_5 or arg1.activeControlModule == module_upvr_2 or arg1.activeControlModule == module_upvr_4) then
			arg1.activeController:Enable(false)
			if arg1.touchJumpController then
				arg1.touchJumpController:Enable(false)
			end
			if arg1.moveFunction then
				arg1.moveFunction(Players_upvr.LocalPlayer, Vector3.new(0, 0, 0), true)
			end
			return
		end
		;(function() -- Line 249
			--[[ Upvalues[7]:
				[1]: arg1 (readonly)
				[2]: UserInputService_upvr (copied, readonly)
				[3]: module_upvr_5 (copied, readonly)
				[4]: module_upvr_2 (copied, readonly)
				[5]: module_upvr_4 (copied, readonly)
				[6]: module_upvr (copied, readonly)
				[7]: Players_upvr (copied, readonly)
			]]
			if arg1.touchControlFrame and UserInputService_upvr.PreferredInput == Enum.PreferredInput.Touch and (arg1.activeControlModule == module_upvr_5 or arg1.activeControlModule == module_upvr_2 or arg1.activeControlModule == module_upvr_4) then
				if not arg1.controllers[module_upvr] then
					arg1.controllers[module_upvr] = module_upvr.new()
				end
				arg1.touchJumpController = arg1.controllers[module_upvr]
				arg1.touchJumpController:Enable(true, arg1.touchControlFrame)
			elseif arg1.touchJumpController then
				arg1.touchJumpController:Enable(false)
			end
			local var50
			if arg1.activeControlModule == module_upvr_5 then
				if Players_upvr.LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.UserChoice then
					var50 = false
				else
					var50 = true
				end
				arg1.activeController:Enable(true, var50, arg1.touchJumpController)
			else
				if arg1.touchControlFrame then
					var50 = arg1.touchControlFrame
					arg1.activeController:Enable(true, var50)
					return
				end
				arg1.activeController:Enable(true)
			end
		end)()
	end
end
function module_upvr_3.Enable(arg1, arg2) -- Line 307
	if arg2 == nil then
		local var51 = true
	end
	if arg1.controlsEnabled == var51 then
	else
		arg1.controlsEnabled = var51
		if not arg1.activeController then return end
		arg1:UpdateActiveControlModuleEnabled()
	end
end
function module_upvr_3.Disable(arg1) -- Line 322
	arg1:Enable(false)
end
function module_upvr_3.SelectComputerMovementModule(arg1) -- Line 328
	--[[ Upvalues[7]:
		[1]: UserInputService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: module_upvr_8 (readonly)
		[4]: module_upvr_7 (readonly)
		[5]: UserGameSettings_upvr (readonly)
		[6]: module_upvr_5 (readonly)
		[7]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 3 start (CF ANALYSIS FAILED)
	do
		return nil, false
	end
	-- KONSTANTERROR: [8] 7. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 4 end (CF ANALYSIS FAILED)
end
function module_upvr_3.SelectTouchModule(arg1) -- Line 371
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: UserGameSettings_upvr (readonly)
	]]
	local var52
	local DevTouchMovementMode = Players_upvr.LocalPlayer.DevTouchMovementMode
	if DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice then
		var52 = tbl_upvr[UserGameSettings_upvr.TouchMovementMode]
	else
		if DevTouchMovementMode == Enum.DevTouchMovementMode.Scriptable then
			return nil, true
		end
		var52 = tbl_upvr[DevTouchMovementMode]
	end
	return var52, true
end
local function getGamepadRightThumbstickPosition_upvr() -- Line 384, Named "getGamepadRightThumbstickPosition"
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	for _, v in pairs(UserInputService_upvr:GetGamepadState(Enum.UserInputType.Gamepad1)) do
		if v.KeyCode == Enum.KeyCode.Thumbstick2 then
			return v.Position
		end
	end
	return Vector3.new(0, 0, 0)
end
local Workspace_upvr = game:GetService("Workspace")
function module_upvr_3.calculateRawMoveVector(arg1, arg2, arg3) -- Line 394
	--[[ Upvalues[3]:
		[1]: Workspace_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: getGamepadRightThumbstickPosition_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local CurrentCamera = Workspace_upvr.CurrentCamera
	if not CurrentCamera then
		return arg3
	end
	local var61
	if VRService_upvr.VREnabled and arg2.RootPart then
		local any_GetEstimatedVRTorsoFrame_result1 = arg1:GetEstimatedVRTorsoFrame()
		if (CurrentCamera.Focus.Position - var61.Position).Magnitude < 3 then
			var61 *= any_GetEstimatedVRTorsoFrame_result1
		else
			var61 = CurrentCamera.CFrame * (any_GetEstimatedVRTorsoFrame_result1.Rotation + any_GetEstimatedVRTorsoFrame_result1.Position * CurrentCamera.HeadScale)
		end
	end
	if arg2:GetState() == Enum.HumanoidStateType.Swimming then
		if VRService_upvr.VREnabled then
			local vector3 = Vector3.new(arg3.X, 0, arg3.Z)
			if vector3.Magnitude < 0.01 then
				return Vector3.new(0, 0, 0)
			end
			local _, any_ToEulerAnglesYXZ_result2_2, _ = var61:ToEulerAnglesYXZ()
			return CFrame.fromEulerAnglesYXZ(-getGamepadRightThumbstickPosition_upvr().Y * 1.3962634015954636, math.atan2(-vector3.X, -vector3.Z) + any_ToEulerAnglesYXZ_result2_2, 0).LookVector
		end
		return var61:VectorToWorldSpace(vector3)
	end
	local _, _, _, any_GetComponents_result4, any_GetComponents_result5, any_GetComponents_result6, _, _, any_GetComponents_result9, _, _, any_GetComponents_result12 = var61:GetComponents()
	local var79
	if any_GetComponents_result9 < 1 and -1 < any_GetComponents_result9 then
		var79 = any_GetComponents_result12
		local _ = any_GetComponents_result6
	else
		var79 = any_GetComponents_result4
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local squareroot = math.sqrt(var79 * var79 + (-any_GetComponents_result5 * math.sign(any_GetComponents_result9)) * (-any_GetComponents_result5 * math.sign(any_GetComponents_result9)))
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	return Vector3.new((var79 * vector3.X + -any_GetComponents_result5 * math.sign(any_GetComponents_result9) * vector3.Z) / squareroot, 0, (var79 * vector3.Z - -any_GetComponents_result5 * math.sign(any_GetComponents_result9) * vector3.X) / squareroot)
end
function module_upvr_3.OnRenderStepped(arg1, arg2) -- Line 453
	--[[ Upvalues[3]:
		[1]: module_upvr_8 (readonly)
		[2]: VRService_upvr (readonly)
		[3]: Players_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var88
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	var88 = arg1.activeController.enabled
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 3 start (CF ANALYSIS FAILED)
	var88 = arg1.humanoid
	-- KONSTANTERROR: [8] 6. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 22. Error Block 41 start (CF ANALYSIS FAILED)
	if 0 < var88.magnitude then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [38.4]
		nil:CleanupPath()
	else
		nil:OnRenderStepped(arg2)
		var88 = nil:GetMoveVector()
		local any_IsMoveVectorCameraRelative_result1 = nil:IsMoveVectorCameraRelative()
	end
	local var90
	if arg1.vehicleController then
		if arg1.activeControlModule ~= module_upvr_8 then
			var90 = false
		else
			var90 = true
		end
		local any_Update_result1, _ = arg1.vehicleController:Update(var88, any_IsMoveVectorCameraRelative_result1, var90)
		var88 = any_Update_result1
	end
	if any_IsMoveVectorCameraRelative_result1 then
		var88 = arg1:calculateRawMoveVector(arg1.humanoid, var88)
	end
	arg1.inputMoveVector = var88
	if VRService_upvr.VREnabled then
		var88 = arg1:updateVRMoveVector(var88)
	end
	arg1.moveFunction(Players_upvr.LocalPlayer, var88, false)
	local any_GetIsJumping_result1 = arg1.activeController:GetIsJumping()
	if not any_GetIsJumping_result1 then
		any_GetIsJumping_result1 = arg1.touchJumpController
		if any_GetIsJumping_result1 then
			any_GetIsJumping_result1 = arg1.touchJumpController:GetIsJumping()
		end
	end
	arg1.humanoid.Jump = any_GetIsJumping_result1
	-- KONSTANTERROR: [33] 22. Error Block 41 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [119] 83. Error Block 25 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [119] 83. Error Block 25 end (CF ANALYSIS FAILED)
end
function module_upvr_3.updateVRMoveVector(arg1, arg2) -- Line 502
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	local CurrentCamera_2 = workspace.CurrentCamera
	local var95
	if (CurrentCamera_2.Focus.Position - CurrentCamera_2.CFrame.Position).Magnitude < 5 then
		var95 = true
	end
	if arg2.Magnitude == 0 and var95 and VRService_upvr.AvatarGestures and arg1.humanoid and not arg1.humanoid.Sit then
		local any_GetUserCFrame_result1_2 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
		local var97 = (CurrentCamera_2.CFrame * (any_GetUserCFrame_result1_2.Rotation + any_GetUserCFrame_result1_2.Position * CurrentCamera_2.HeadScale) * CFrame.new(0, -0.7 * arg1.humanoid.RootPart.Size.Y / 2, 0)).Position - arg1.humanoid.RootPart.CFrame.Position
		return Vector3.new(var97.x, 0, var97.z)
	end
	return arg2
end
function module_upvr_3.OnHumanoidSeated(arg1, arg2, arg3) -- Line 527
	--[[ Upvalues[1]:
		[1]: Value_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 7. Error Block 12 start (CF ANALYSIS FAILED)
	if not arg1.vehicleController then
		arg1.vehicleController = arg1.vehicleController.new(Value_upvr)
	end
	arg1.vehicleController:Enable(true, arg3)
	do
		return
	end
	-- KONSTANTERROR: [7] 7. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 20. Error Block 10 start (CF ANALYSIS FAILED)
	if arg1.vehicleController then
		arg1.vehicleController:Enable(false, arg3)
	end
	-- KONSTANTERROR: [26] 20. Error Block 10 end (CF ANALYSIS FAILED)
end
function module_upvr_3.OnCharacterAdded(arg1, arg2) -- Line 542
	arg1.humanoid = arg2:FindFirstChildOfClass("Humanoid")
	while not arg1.humanoid do
		arg2.ChildAdded:wait()
		arg1.humanoid = arg2:FindFirstChildOfClass("Humanoid")
	end
	if arg1.humanoidSeatedConn then
		arg1.humanoidSeatedConn:Disconnect()
		arg1.humanoidSeatedConn = nil
	end
	arg1.humanoidSeatedConn = arg1.humanoid.Seated:Connect(function(arg1_2, arg2_2) -- Line 553
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:OnHumanoidSeated(arg1_2, arg2_2)
	end)
	arg1:UpdateMovementMode()
end
function module_upvr_3.OnCharacterRemoving(arg1, arg2) -- Line 560
	arg1.humanoid = nil
	arg1:UpdateMovementMode()
end
function module_upvr_3.UpdateTouchGuiVisibility(arg1) -- Line 566
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	local var100
	if var100 then
		var100 = GuiService_upvr.TouchControlsEnabled
		if var100 then
			if UserInputService_upvr.PreferredInput ~= Enum.PreferredInput.Touch then
				var100 = false
			else
				var100 = true
			end
		end
	end
	if var100 and not arg1.touchGui then
		arg1:CreateTouchGuiContainer()
	end
	if arg1.touchGui then
		arg1.touchGui.Enabled = not not var100
	end
end
function module_upvr_3.SwitchToController(arg1, arg2) -- Line 585
	--[[ Upvalues[1]:
		[1]: Value_upvr (readonly)
	]]
	if not arg2 then
		if arg1.activeController then
			arg1.activeController:Enable(false)
		end
		arg1.activeController = nil
		arg1.activeControlModule = nil
	else
		if not arg1.controllers[arg2] then
			arg1.controllers[arg2] = arg2.new(Value_upvr)
		end
		if arg1.activeController ~= arg1.controllers[arg2] then
			if arg1.activeController then
				arg1.activeController:Enable(false)
			end
			arg1.activeController = arg1.controllers[arg2]
			arg1.activeControlModule = arg2
			arg1:UpdateActiveControlModuleEnabled()
		end
	end
end
function module_upvr_3.UpdateMovementMode(arg1) -- Line 624
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg1:UpdateTouchGuiVisibility()
	local PreferredInput = UserInputService_upvr.PreferredInput
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 12. Error Block 4 start (CF ANALYSIS FAILED)
	arg1:SwitchToController(PreferredInput)
	do
		return
	end
	-- KONSTANTERROR: [17] 12. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 16. Error Block 5 start (CF ANALYSIS FAILED)
	arg1:SwitchToController(arg1:SelectComputerMovementModule())
	-- KONSTANTERROR: [22] 16. Error Block 5 end (CF ANALYSIS FAILED)
end
local var102_upvw = pcall_result1 and pcall_result2
function module_upvr_3.CreateTouchGuiContainer(arg1) -- Line 640
	--[[ Upvalues[1]:
		[1]: var102_upvw (read and write)
	]]
	if not arg1.playerGui then
	else
		if arg1.touchGui then
			arg1.touchGui:Destroy()
		end
		arg1.touchGui = Instance.new("ScreenGui")
		arg1.touchGui.Name = "TouchGui"
		arg1.touchGui.ResetOnSpawn = false
		arg1.touchGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		if var102_upvw then
			arg1.touchGui.ClipToDeviceSafeArea = false
		end
		arg1.touchControlFrame = Instance.new("Frame")
		arg1.touchControlFrame.Name = "TouchControlFrame"
		arg1.touchControlFrame.Size = UDim2.new(1, 0, 1, 0)
		arg1.touchControlFrame.BackgroundTransparency = 1
		arg1.touchControlFrame.Parent = arg1.touchGui
		arg1.touchGui.Parent = arg1.playerGui
	end
end
function module_upvr_3.GetClickToMoveController(arg1) -- Line 666
	--[[ Upvalues[2]:
		[1]: module_upvr_5 (readonly)
		[2]: Value_upvr (readonly)
	]]
	if not arg1.controllers[module_upvr_5] then
		arg1.controllers[module_upvr_5] = module_upvr_5.new(Value_upvr)
	end
	return arg1.controllers[module_upvr_5]
end
return module_upvr_3.new()