-- Path: StarterPlayer.StarterPlayerScripts.PlayerModule.CameraModule.MouseLockController

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:02:33
-- Luau version 6, Types version 3
-- Time taken: 0.008681 seconds

local Players_upvr = game:GetService("Players")
local ContextActionService_upvr = game:GetService("ContextActionService")
local UserInputService_upvr = game:GetService("UserInputService")
local GameSettings_upvr = UserSettings().GameSettings
local module_upvr_2 = require(script.Parent:WaitForChild("CameraUtils"))
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 32
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: GameSettings_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	setmetatable_result1_upvr.isMouseLocked = false
	setmetatable_result1_upvr.savedMouseCursor = nil
	setmetatable_result1_upvr.boundKeys = {Enum.KeyCode.LeftShift, Enum.KeyCode.RightShift}
	setmetatable_result1_upvr.mouseLockToggledEvent = Instance.new("BindableEvent")
	local BoundKeys = script:FindFirstChild("BoundKeys")
	if not BoundKeys or not BoundKeys:IsA("StringValue") then
		if BoundKeys then
			BoundKeys:Destroy()
		end
		local StringValue = Instance.new("StringValue")
		assert(StringValue, "")
		StringValue.Name = "BoundKeys"
		StringValue.Value = "LeftShift,RightShift"
		StringValue.Parent = script
	end
	if StringValue then
		StringValue.Changed:Connect(function(arg1) -- Line 57
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			setmetatable_result1_upvr:OnBoundKeysObjectChanged(arg1)
		end)
		setmetatable_result1_upvr:OnBoundKeysObjectChanged(StringValue.Value)
	end
	GameSettings_upvr.Changed:Connect(function(arg1) -- Line 64
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		if arg1 == "ControlMode" or arg1 == "ComputerMovementMode" then
			setmetatable_result1_upvr:UpdateMouseLockAvailability()
		end
	end)
	Players_upvr.LocalPlayer:GetPropertyChangedSignal("DevEnableMouseLock"):Connect(function() -- Line 71
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:UpdateMouseLockAvailability()
	end)
	Players_upvr.LocalPlayer:GetPropertyChangedSignal("DevComputerMovementMode"):Connect(function() -- Line 76
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:UpdateMouseLockAvailability()
	end)
	UserInputService_upvr:GetPropertyChangedSignal("PreferredInput"):Connect(function() -- Line 80
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:UpdateMouseLockAvailability()
	end)
	setmetatable_result1_upvr:UpdateMouseLockAvailability()
	return setmetatable_result1_upvr
end
function module_upvr.GetIsMouseLocked(arg1) -- Line 89
	return arg1.isMouseLocked
end
function module_upvr.GetBindableToggleEvent(arg1) -- Line 93
	return arg1.mouseLockToggledEvent.Event
end
function module_upvr.GetMouseLockOffset(arg1) -- Line 97
	return Vector3.new(1.75, 0, 0)
end
function module_upvr.UpdateMouseLockAvailability(arg1) -- Line 101
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: GameSettings_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 36 start (CF ANALYSIS FAILED)
	if Players_upvr.LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.Scriptable then
	else
	end
	if GameSettings_upvr.ControlMode ~= Enum.ControlMode.MouseLockSwitch then
		-- KONSTANTWARNING: GOTO [25] #17
	end
	-- KONSTANTERROR: [0] 1. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 16. Error Block 39 start (CF ANALYSIS FAILED)
	if GameSettings_upvr.ComputerMovementMode ~= Enum.ComputerMovementMode.ClickToMove then
		-- KONSTANTWARNING: GOTO [34] #23
	end
	-- KONSTANTERROR: [24] 16. Error Block 39 end (CF ANALYSIS FAILED)
end
function module_upvr.OnBoundKeysObjectChanged(arg1, arg2) -- Line 114
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg1.boundKeys = {}
	local _, _, _ = string.gmatch(arg2, "[^%s,]+")
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 2 start (CF ANALYSIS FAILED)
	local _, pairs_result2, _ = pairs(Enum.KeyCode:GetEnumItems())
	-- KONSTANTERROR: [10] 8. Error Block 2 end (CF ANALYSIS FAILED)
end
function module_upvr.OnMouseLockToggled(arg1) -- Line 129
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	arg1.isMouseLocked = not arg1.isMouseLocked
	if arg1.isMouseLocked then
		local CursorImage = script:FindFirstChild("CursorImage")
		if CursorImage and CursorImage:IsA("StringValue") and CursorImage.Value then
			module_upvr_2.setMouseIconOverride(CursorImage.Value)
		else
			if CursorImage then
				CursorImage:Destroy()
			end
			local StringValue_2 = Instance.new("StringValue")
			assert(StringValue_2, "")
			StringValue_2.Name = "CursorImage"
			StringValue_2.Value = "rbxasset://textures/MouseLockedCursor.png"
			StringValue_2.Parent = script
			module_upvr_2.setMouseIconOverride("rbxasset://textures/MouseLockedCursor.png")
		end
	else
		module_upvr_2.restoreMouseIcon()
	end
	arg1.mouseLockToggledEvent:Fire()
end
function module_upvr.DoMouseLockSwitch(arg1, arg2, arg3, arg4) -- Line 154
	if arg3 == Enum.UserInputState.Begin then
		arg1:OnMouseLockToggled()
		return Enum.ContextActionResult.Sink
	end
	return Enum.ContextActionResult.Pass
end
local Value_upvr = Enum.ContextActionPriority.Medium.Value
function module_upvr.BindContextActions(arg1) -- Line 162
	--[[ Upvalues[2]:
		[1]: ContextActionService_upvr (readonly)
		[2]: Value_upvr (readonly)
	]]
	ContextActionService_upvr:BindActionAtPriority("MouseLockSwitchAction", function(arg1_2, arg2, arg3) -- Line 163
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:DoMouseLockSwitch(arg1_2, arg2, arg3)
	end, false, Value_upvr, unpack(arg1.boundKeys))
end
function module_upvr.UnbindContextActions(arg1) -- Line 168
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindAction("MouseLockSwitchAction")
end
function module_upvr.IsMouseLocked(arg1) -- Line 172
	local enabled = arg1.enabled
	if enabled then
		enabled = arg1.isMouseLocked
	end
	return enabled
end
function module_upvr.EnableMouseLock(arg1, arg2) -- Line 176
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if arg2 ~= arg1.enabled then
		arg1.enabled = arg2
		if arg1.enabled then
			arg1:BindContextActions()
			return
		end
		module_upvr_2.restoreMouseIcon()
		arg1:UnbindContextActions()
		if arg1.isMouseLocked then
			arg1.mouseLockToggledEvent:Fire()
		end
		arg1.isMouseLocked = false
	end
end
return module_upvr