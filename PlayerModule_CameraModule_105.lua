-- Path: StarterPlayer.StarterPlayerScripts.PlayerModule.CameraModule

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:02:19
-- Luau version 6, Types version 3
-- Time taken: 0.030131 seconds

local tbl_upvr_3 = {}
tbl_upvr_3.__index = tbl_upvr_3
local tbl_upvr_5 = {"CameraMinZoomDistance", "CameraMaxZoomDistance", "CameraMode", "DevCameraOcclusionMode", "DevComputerCameraMode", "DevTouchCameraMode", "DevComputerMovementMode", "DevTouchMovementMode", "DevEnableMouseLock"}
local tbl_upvr = {"ComputerCameraMovementMode", "ComputerMovementMode", "ControlMode", "GamepadCameraSensitivity", "MouseSensitivity", "RotationType", "TouchCameraMovementMode", "TouchMovementMode"}
local Players_upvr = game:GetService("Players")
local UserInputService_upvr = game:GetService("UserInputService")
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local CommonUtils = script.Parent:WaitForChild("CommonUtils")
local module = require(CommonUtils:WaitForChild("FlagUtil"))
local module_upvr_8 = require(script:WaitForChild("CameraUtils"))
if not Players_upvr.LocalPlayer then
	return {}
end
assert(Players_upvr.LocalPlayer, "Strict typing check")
local PlayerScripts = Players_upvr.LocalPlayer:WaitForChild("PlayerScripts")
PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Default)
PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Follow)
PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Classic)
PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Default)
PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Follow)
PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Classic)
PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.CameraToggle)
local any_getUserFlag_result1_upvr_3 = module.getUserFlag("UserRespectLegacyCameraOptions")
local any_getUserFlag_result1_upvr_4 = module.getUserFlag("UserPlayerConnectionMemoryLeak")
local module_upvr_3 = require(script:WaitForChild("TransparencyController"))
local module_upvr_9 = require(CommonUtils:WaitForChild("ConnectionUtil"))
local module_upvr_11 = require(script:WaitForChild("MouseLockController"))
local RunService_upvr = game:GetService("RunService")
function tbl_upvr_3.new() -- Line 147
	--[[ Upvalues[12]:
		[1]: module_upvr_3 (readonly)
		[2]: any_getUserFlag_result1_upvr_4 (readonly)
		[3]: module_upvr_9 (readonly)
		[4]: tbl_upvr_3 (readonly)
		[5]: Players_upvr (readonly)
		[6]: module_upvr_11 (readonly)
		[7]: any_getUserFlag_result1_upvr_3 (readonly)
		[8]: RunService_upvr (readonly)
		[9]: tbl_upvr_5 (readonly)
		[10]: tbl_upvr (readonly)
		[11]: UserGameSettings_upvr (readonly)
		[12]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {}
	local any_new_result1 = module_upvr_3.new()
	tbl.activeTransparencyController = any_new_result1
	if any_getUserFlag_result1_upvr_4 then
		any_new_result1 = module_upvr_9.new()
	else
		any_new_result1 = nil
	end
	tbl.connectionUtil = any_new_result1
	local setmetatable_result1 = setmetatable(tbl, tbl_upvr_3)
	setmetatable_result1.activeCameraController = nil
	setmetatable_result1.activeOcclusionModule = nil
	setmetatable_result1.activeMouseLockController = nil
	setmetatable_result1.currentComputerCameraMovementMode = nil
	setmetatable_result1.cameraSubjectChangedConn = nil
	setmetatable_result1.cameraTypeChangedConn = nil
	for var51, v in pairs(Players_upvr:GetPlayers()) do
		setmetatable_result1:OnPlayerAdded(v)
		local var47_upvr
	end
	Players_upvr.PlayerAdded:Connect(function(arg1) -- Line 170
		--[[ Upvalues[1]:
			[1]: var47_upvr (readonly)
		]]
		var47_upvr:OnPlayerAdded(arg1)
	end)
	if any_getUserFlag_result1_upvr_4 then
		Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 175
			--[[ Upvalues[1]:
				[1]: var47_upvr (readonly)
			]]
			var47_upvr:OnPlayerRemoving(arg1)
		end)
	end
	var47_upvr.activeTransparencyController:Enable(true)
	var47_upvr.activeMouseLockController = module_upvr_11.new()
	assert(var47_upvr.activeMouseLockController, "Strict typing check")
	local any_GetBindableToggleEvent_result1 = var47_upvr.activeMouseLockController:GetBindableToggleEvent()
	if any_GetBindableToggleEvent_result1 then
		function var51() -- Line 187
			--[[ Upvalues[1]:
				[1]: var47_upvr (readonly)
			]]
			var47_upvr:OnMouseLockToggled()
		end
		any_GetBindableToggleEvent_result1:Connect(var51)
	end
	if any_getUserFlag_result1_upvr_3 then
		var47_upvr:ActivateCameraController()
	else
		var51 = var47_upvr:GetCameraControlChoice()
		var47_upvr:ActivateCameraController(var51)
	end
	var47_upvr:ActivateOcclusionModule(Players_upvr.LocalPlayer.DevCameraOcclusionMode)
	var47_upvr:OnCurrentCameraChanged()
	RunService_upvr:BindToRenderStep("cameraRenderUpdate", Enum.RenderPriority.Camera.Value, function(arg1) -- Line 199
		--[[ Upvalues[1]:
			[1]: var47_upvr (readonly)
		]]
		var47_upvr:Update(arg1)
	end)
	for _, v_2_upvr in pairs(tbl_upvr_5) do
		Players_upvr.LocalPlayer:GetPropertyChangedSignal(v_2_upvr):Connect(function() -- Line 203
			--[[ Upvalues[2]:
				[1]: var47_upvr (readonly)
				[2]: v_2_upvr (readonly)
			]]
			var47_upvr:OnLocalPlayerCameraPropertyChanged(v_2_upvr)
		end)
		local var57_upvr
	end
	for _, v_3_upvr in pairs(tbl_upvr) do
		UserGameSettings_upvr:GetPropertyChangedSignal(v_3_upvr):Connect(function() -- Line 209
			--[[ Upvalues[2]:
				[1]: var57_upvr (readonly)
				[2]: v_3_upvr (readonly)
			]]
			var57_upvr:OnUserGameSettingsPropertyChanged(v_3_upvr)
		end)
		local var62_upvr
	end
	game.Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 213
		--[[ Upvalues[1]:
			[1]: var62_upvr (readonly)
		]]
		var62_upvr:OnCurrentCameraChanged()
	end)
	UserInputService_upvr:GetPropertyChangedSignal("PreferredInput"):Connect(function() -- Line 216
		--[[ Upvalues[1]:
			[1]: var62_upvr (readonly)
		]]
		var62_upvr:OnPreferredInputChanged()
	end)
	return var62_upvr
end
function tbl_upvr_3.GetCameraMovementModeFromSettings(arg1) -- Line 223
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: module_upvr_8 (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: UserGameSettings_upvr (readonly)
	]]
	local var65
	if Players_upvr.LocalPlayer.CameraMode == Enum.CameraMode.LockFirstPerson then
		var65 = module_upvr_8
		var65 = Enum.ComputerCameraMovementMode.Classic
		return var65.ConvertCameraModeEnumToStandard(var65)
	end
	local var66
	var65 = nil
	if UserInputService_upvr.PreferredInput == Enum.PreferredInput.Touch then
		var66 = module_upvr_8.ConvertCameraModeEnumToStandard(Players_upvr.LocalPlayer.DevTouchCameraMode)
		var65 = module_upvr_8.ConvertCameraModeEnumToStandard(UserGameSettings_upvr.TouchCameraMovementMode)
	else
		var66 = module_upvr_8.ConvertCameraModeEnumToStandard(Players_upvr.LocalPlayer.DevComputerCameraMode)
		var65 = module_upvr_8.ConvertCameraModeEnumToStandard(UserGameSettings_upvr.ComputerCameraMovementMode)
	end
	if var66 == Enum.DevComputerCameraMovementMode.UserChoice then
		return var65
	end
	return var66
end
local module_upvr_4 = require(script:WaitForChild("Poppercam"))
local module_2_upvr = require(script:WaitForChild("Invisicam"))
local tbl_upvr_4 = {}
function tbl_upvr_3.ActivateOcclusionModule(arg1, arg2) -- Line 248
	--[[ Upvalues[4]:
		[1]: module_upvr_4 (readonly)
		[2]: module_2_upvr (readonly)
		[3]: tbl_upvr_4 (readonly)
		[4]: Players_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 51 start (CF ANALYSIS FAILED)
	local var70
	if arg2 == Enum.DevCameraOcclusionMode.Zoom then
		var70 = module_upvr_4
	elseif arg2 == Enum.DevCameraOcclusionMode.Invisicam then
		var70 = module_2_upvr
	else
		warn("CameraScript ActivateOcclusionModule called with unsupported mode")
		return
	end
	arg1.occlusionMode = arg2
	-- KONSTANTERROR: [0] 1. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 17. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 17. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 21. Error Block 38 start (CF ANALYSIS FAILED)
	if not arg1.activeOcclusionModule:GetEnabled() then
		arg1.activeOcclusionModule:Enable(true)
	end
	do
		return
	end
	-- KONSTANTERROR: [30] 21. Error Block 38 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 30. Error Block 13 start (CF ANALYSIS FAILED)
	arg1.activeOcclusionModule = tbl_upvr_4[var70]
	-- KONSTANTERROR: [43] 30. Error Block 13 end (CF ANALYSIS FAILED)
end
function tbl_upvr_3.ShouldUseVehicleCamera(arg1) -- Line 327
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local CurrentCamera = workspace.CurrentCamera
	local var78
	if not CurrentCamera then
		return false
	end
	local CameraType = CurrentCamera.CameraType
	local var81 = true
	var78 = Enum.CameraType.Custom
	if CameraType ~= var78 then
		var78 = Enum.CameraType.Follow
		if CameraType ~= var78 then
			var81 = false
		else
			var81 = true
		end
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var78 = CurrentCamera.CameraSubject:IsA("VehicleSeat")
		return var78
	end
	if not CurrentCamera.CameraSubject or not INLINED_2() then
		var78 = false
	end
	if arg1.occlusionMode == Enum.DevCameraOcclusionMode.Invisicam then
	else
	end
	if var78 then
		if var81 then
		end
	end
	return true
end
local module_upvr_10 = require(script:WaitForChild("LegacyCamera"))
local VRService_upvr = game:GetService("VRService")
local module_upvr_5 = require(script:WaitForChild("VRCamera"))
local module_upvr_6 = require(script:WaitForChild("ClassicCamera"))
local module_upvr = require(script:WaitForChild("OrbitalCamera"))
local module_upvr_12 = require(script:WaitForChild("VRVehicleCamera"))
local module_upvr_7 = require(script:WaitForChild("VehicleCamera"))
local tbl_upvr_2 = {}
local any_getUserFlag_result1_upvr = module.getUserFlag("UserPSFixCameraControllerReset")
function tbl_upvr_3.ActivateCameraController(arg1, arg2, arg3) -- Line 343
	--[[ Upvalues[10]:
		[1]: any_getUserFlag_result1_upvr_3 (readonly)
		[2]: module_upvr_10 (readonly)
		[3]: VRService_upvr (readonly)
		[4]: module_upvr_5 (readonly)
		[5]: module_upvr_6 (readonly)
		[6]: module_upvr (readonly)
		[7]: module_upvr_12 (readonly)
		[8]: module_upvr_7 (readonly)
		[9]: tbl_upvr_2 (readonly)
		[10]: any_getUserFlag_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 111 start (CF ANALYSIS FAILED)
	local var91
	if any_getUserFlag_result1_upvr_3 then
		var91 = workspace.CurrentCamera.CameraType
	end
	if any_getUserFlag_result1_upvr_3 then
		-- KONSTANTWARNING: GOTO [21] #17
	end
	-- KONSTANTERROR: [0] 1. Error Block 111 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 108 start (CF ANALYSIS FAILED)
	if var91 == nil then
	else
	end
	-- KONSTANTERROR: [17] 14. Error Block 108 end (CF ANALYSIS FAILED)
end
function tbl_upvr_3.OnCameraSubjectChanged(arg1) -- Line 463
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local CurrentCamera_4 = workspace.CurrentCamera
	local var93
	if CurrentCamera_4 then
		var93 = CurrentCamera_4.CameraSubject
	else
		var93 = nil
	end
	if arg1.activeTransparencyController then
		arg1.activeTransparencyController:SetSubject(var93)
	end
	if arg1.activeOcclusionModule then
		arg1.activeOcclusionModule:OnCameraSubjectChanged(var93)
	end
	if CurrentCamera_4 then
	else
	end
	arg1:ActivateCameraController(nil, nil)
end
function tbl_upvr_3.OnCameraTypeChanged(arg1, arg2) -- Line 478
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: module_upvr_8 (readonly)
	]]
	if arg2 == Enum.CameraType.Scriptable and UserInputService_upvr.MouseBehavior == Enum.MouseBehavior.LockCenter then
		module_upvr_8.restoreMouseBehavior()
	end
	arg1:ActivateCameraController(nil, arg2)
end
function tbl_upvr_3.OnCurrentCameraChanged(arg1) -- Line 490
	local CurrentCamera_2_upvr = game.Workspace.CurrentCamera
	if not CurrentCamera_2_upvr then
	else
		if arg1.cameraSubjectChangedConn then
			arg1.cameraSubjectChangedConn:Disconnect()
		end
		if arg1.cameraTypeChangedConn then
			arg1.cameraTypeChangedConn:Disconnect()
		end
		arg1.cameraSubjectChangedConn = CurrentCamera_2_upvr:GetPropertyChangedSignal("CameraSubject"):Connect(function() -- Line 502
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:OnCameraSubjectChanged()
		end)
		arg1.cameraTypeChangedConn = CurrentCamera_2_upvr:GetPropertyChangedSignal("CameraType"):Connect(function() -- Line 506
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CurrentCamera_2_upvr (readonly)
			]]
			arg1:OnCameraTypeChanged(CurrentCamera_2_upvr.CameraType)
		end)
		arg1:OnCameraSubjectChanged()
		arg1:OnCameraTypeChanged(CurrentCamera_2_upvr.CameraType)
	end
end
function tbl_upvr_3.OnLocalPlayerCameraPropertyChanged(arg1, arg2) -- Line 514
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: module_upvr_8 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 25. Error Block 34 start (CF ANALYSIS FAILED)
	if Players_upvr.LocalPlayer.CameraMode == Enum.CameraMode.Classic then
		arg1:ActivateCameraController(module_upvr_8.ConvertCameraModeEnumToStandard(arg1:GetCameraMovementModeFromSettings()))
		return
	end
	warn("Unhandled value for property player.CameraMode: ", Players_upvr.LocalPlayer.CameraMode)
	do
		return
	end
	-- KONSTANTERROR: [39] 25. Error Block 34 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [70] 46. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [70] 46. Error Block 12 end (CF ANALYSIS FAILED)
end
local any_getUserFlag_result1_upvr_2 = module.getUserFlag("UserCheckTouchControlMode")
function tbl_upvr_3.OnUserGameSettingsPropertyChanged(arg1, arg2) -- Line 558
	--[[ Upvalues[2]:
		[1]: any_getUserFlag_result1_upvr_2 (readonly)
		[2]: module_upvr_8 (readonly)
	]]
	if arg2 == "ComputerCameraMovementMode" or any_getUserFlag_result1_upvr_2 and arg2 == "TouchCameraMovementMode" then
		arg1:ActivateCameraController(module_upvr_8.ConvertCameraModeEnumToStandard(arg1:GetCameraMovementModeFromSettings()))
	end
end
function tbl_upvr_3.OnPreferredInputChanged(arg1) -- Line 565
	--[[ Upvalues[1]:
		[1]: module_upvr_8 (readonly)
	]]
	arg1:ActivateCameraController(module_upvr_8.ConvertCameraModeEnumToStandard(arg1:GetCameraMovementModeFromSettings()))
end
local module_upvr_2 = require(script:WaitForChild("CameraInput"))
function tbl_upvr_3.Update(arg1, arg2) -- Line 576
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1.activeCameraController then
		arg1.activeCameraController:UpdateMouseBehavior()
		local any_Update_result1_2, any_Update_result2 = arg1.activeCameraController:Update(arg2)
		if arg1.activeOcclusionModule then
			local any_Update_result1, any_Update_result2_2 = arg1.activeOcclusionModule:Update(arg2, any_Update_result1_2, any_Update_result2)
			any_Update_result1_2 = any_Update_result1
		end
		local CurrentCamera_3 = game.Workspace.CurrentCamera
		CurrentCamera_3.CFrame = any_Update_result1_2
		CurrentCamera_3.Focus = any_Update_result2_2
		if arg1.activeTransparencyController then
			arg1.activeTransparencyController:Update(arg2)
		end
		if module_upvr_2.getInputEnabled() then
			module_upvr_2.resetInputForFrameEnd()
		end
	end
end
function tbl_upvr_3.GetCameraControlChoice(arg1) -- Line 604
	--[[ Upvalues[5]:
		[1]: any_getUserFlag_result1_upvr_3 (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: module_upvr_8 (readonly)
		[5]: UserGameSettings_upvr (readonly)
	]]
	assert(not any_getUserFlag_result1_upvr_3, "CameraModule:GetCameraControlChoice should not be called when FFlagUserRespectLegacyCameraOptions is enabled")
	if UserInputService_upvr:GetLastInputType() == Enum.UserInputType.Touch or UserInputService_upvr.TouchEnabled then
		if Players_upvr.LocalPlayer.DevTouchCameraMode == Enum.DevTouchCameraMovementMode.UserChoice then
			return module_upvr_8.ConvertCameraModeEnumToStandard(UserGameSettings_upvr.TouchCameraMovementMode)
		end
		return module_upvr_8.ConvertCameraModeEnumToStandard(Players_upvr.LocalPlayer.DevTouchCameraMode)
	end
	if Players_upvr.LocalPlayer.DevComputerCameraMode == Enum.DevComputerCameraMovementMode.UserChoice then
		return module_upvr_8.ConvertCameraModeEnumToStandard(module_upvr_8.ConvertCameraModeEnumToStandard(UserGameSettings_upvr.ComputerCameraMovementMode))
	end
	return module_upvr_8.ConvertCameraModeEnumToStandard(Players_upvr.LocalPlayer.DevComputerCameraMode)
end
function tbl_upvr_3.OnCharacterAdded(arg1, arg2, arg3) -- Line 624
	if arg1.activeOcclusionModule then
		arg1.activeOcclusionModule:CharacterAdded(arg2, arg3)
	end
end
function tbl_upvr_3.OnCharacterRemoving(arg1, arg2, arg3) -- Line 630
	if arg1.activeOcclusionModule then
		arg1.activeOcclusionModule:CharacterRemoving(arg2, arg3)
	end
end
function tbl_upvr_3.OnPlayerAdded(arg1, arg2) -- Line 636
	--[[ Upvalues[1]:
		[1]: any_getUserFlag_result1_upvr_4 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 3 start (CF ANALYSIS FAILED)
	arg1.connectionUtil:trackConnection(`{arg2.UserId}CharacterAdded`, arg2.CharacterAdded:Connect(function(arg1_2) -- Line 640
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1:OnCharacterAdded(arg1_2, arg2)
	end))
	arg1.connectionUtil:trackConnection(`{arg2.UserId}CharacterRemoving`, arg2.CharacterRemoving:Connect(function(arg1_3) -- Line 643
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1:OnCharacterRemoving(arg1_3, arg2)
	end))
	do
		return
	end
	-- KONSTANTERROR: [5] 5. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 34. Error Block 4 start (CF ANALYSIS FAILED)
	arg2.CharacterAdded:Connect(function(arg1_4) -- Line 648
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1:OnCharacterAdded(arg1_4, arg2)
	end)
	arg2.CharacterRemoving:Connect(function(arg1_5) -- Line 651
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1:OnCharacterRemoving(arg1_5, arg2)
	end)
	-- KONSTANTERROR: [46] 34. Error Block 4 end (CF ANALYSIS FAILED)
end
function tbl_upvr_3.OnPlayerRemoving(arg1, arg2) -- Line 657
	if arg1.connectionUtil then
		arg1.connectionUtil:disconnect(`{arg2.UserId}CharacterAdded`)
		arg1.connectionUtil:disconnect(`{arg2.UserId}CharacterRemoving`)
	end
end
function tbl_upvr_3.OnMouseLockToggled(arg1) -- Line 665
	if arg1.activeMouseLockController and arg1.activeCameraController then
		arg1.activeCameraController:SetIsMouseLocked(arg1.activeMouseLockController:GetIsMouseLocked())
		arg1.activeCameraController:SetMouseLockOffset(arg1.activeMouseLockController:GetMouseLockOffset())
	end
end
tbl_upvr_3.new()
return {}