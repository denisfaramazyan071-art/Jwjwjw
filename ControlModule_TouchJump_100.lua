-- Path: StarterPlayer.StarterPlayerScripts.PlayerModule.ControlModule.TouchJump

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:02:14
-- Luau version 6, Types version 3
-- Time taken: 0.009277 seconds

local CommonUtils = script.Parent.Parent:WaitForChild("CommonUtils")
local module_upvr = require(CommonUtils:WaitForChild("CharacterUtil"))
local tbl_upvr = {
	HUMANOID_STATE_ENABLED_CHANGED = "HUMANOID_STATE_ENABLED_CHANGED";
	HUMANOID_JUMP_POWER = "HUMANOID_JUMP_POWER";
	HUMANOID_JUMP_HEIGHT = "HUMANOID_JUMP_HEIGHT";
	HUMANOID = "HUMANOID";
	JUMP_INPUT_ENDED = "JUMP_INPUT_ENDED";
	MENU_OPENED = "MENU_OPENED";
}
local any_getUserFlag_result1_upvr = require(CommonUtils:WaitForChild("FlagUtil")).getUserFlag("UserTouchJumpHeightDisable")
local module_upvr_2 = require(script.Parent:WaitForChild("BaseCharacterController"))
local setmetatable_result1_2_upvr = setmetatable({}, module_upvr_2)
setmetatable_result1_2_upvr.__index = setmetatable_result1_2_upvr
local module_upvr_3 = require(CommonUtils:WaitForChild("ConnectionUtil"))
function setmetatable_result1_2_upvr.new() -- Line 54
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: setmetatable_result1_2_upvr (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	local setmetatable_result1 = setmetatable(module_upvr_2.new(), setmetatable_result1_2_upvr)
	setmetatable_result1.parentUIFrame = nil
	setmetatable_result1.jumpButton = nil
	setmetatable_result1.externallyEnabled = false
	setmetatable_result1.isJumping = false
	setmetatable_result1._active = false
	setmetatable_result1._connectionUtil = module_upvr_3.new()
	return setmetatable_result1
end
function setmetatable_result1_2_upvr._reset(arg1) -- Line 68
	arg1.isJumping = false
	arg1.touchObject = nil
	if arg1.jumpButton then
		arg1.jumpButton.ImageRectOffset = Vector2.new(1, 146)
	end
end
local GuiService_upvr = game:GetService("GuiService")
function setmetatable_result1_2_upvr.EnableButton(arg1, arg2) -- Line 79
	--[[ Upvalues[3]:
		[1]: any_getUserFlag_result1_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	if arg2 == arg1._active then
		if not any_getUserFlag_result1_upvr then
			arg1:_reset()
		end
	else
		if arg2 then
			if not arg1.jumpButton then
				arg1:Create()
			end
			arg1.jumpButton.Visible = true
			arg1._connectionUtil:trackConnection(tbl_upvr.JUMP_INPUT_ENDED, arg1.jumpButton.InputEnded:Connect(function(arg1_2) -- Line 97
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1_2 == arg1.touchObject then
					arg1:_reset()
				end
			end))
			arg1._connectionUtil:trackConnection(tbl_upvr.MENU_OPENED, GuiService_upvr.MenuOpened:Connect(function() -- Line 107
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1.touchObject then
					arg1:_reset()
				end
			end))
		else
			if arg1.jumpButton then
				arg1.jumpButton.Visible = false
			end
			arg1._connectionUtil:disconnect(tbl_upvr.JUMP_INPUT_ENDED)
			arg1._connectionUtil:disconnect(tbl_upvr.MENU_OPENED)
		end
		arg1:_reset()
		arg1._active = arg2
	end
end
function setmetatable_result1_2_upvr.UpdateEnabled(arg1) -- Line 124
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: any_getUserFlag_result1_upvr (readonly)
	]]
	local any_getChild_result1 = module_upvr.getChild("Humanoid", "Humanoid")
	if any_getUserFlag_result1_upvr then
		if any_getChild_result1 and arg1.externallyEnabled then
			if any_getChild_result1.UseJumpPower and 0 < any_getChild_result1.JumpPower or not any_getChild_result1.UseJumpPower and 0 < any_getChild_result1.JumpHeight then
				if any_getChild_result1:GetStateEnabled(Enum.HumanoidStateType.Jumping) then
					arg1:EnableButton(true)
					return
				end
			end
		end
		arg1:EnableButton(false)
	else
		if any_getChild_result1 and arg1.externallyEnabled and 0 < any_getChild_result1.JumpPower and any_getChild_result1:GetStateEnabled(Enum.HumanoidStateType.Jumping) then
			arg1:EnableButton(true)
			return
		end
		arg1:EnableButton(false)
	end
end
function setmetatable_result1_2_upvr._setupConfigurations(arg1) -- Line 141
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: any_getUserFlag_result1_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local function update_upvr() -- Line 142, Named "update"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:UpdateEnabled()
	end
	arg1._connectionUtil:trackConnection(tbl_upvr.HUMANOID, module_upvr.onChild("Humanoid", "Humanoid", function(arg1_3) -- Line 147
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: any_getUserFlag_result1_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
			[4]: update_upvr (readonly)
		]]
		arg1:UpdateEnabled()
		if any_getUserFlag_result1_upvr then
			arg1:_reset()
		end
		arg1._connectionUtil:trackConnection(tbl_upvr.HUMANOID_JUMP_POWER, arg1_3:GetPropertyChangedSignal("JumpPower"):Connect(update_upvr))
		if any_getUserFlag_result1_upvr then
			arg1._connectionUtil:trackConnection(tbl_upvr.HUMANOID_JUMP_HEIGHT, arg1_3:GetPropertyChangedSignal("JumpHeight"):Connect(update_upvr))
		end
		arg1._connectionUtil:trackConnection(tbl_upvr.HUMANOID_STATE_ENABLED_CHANGED, arg1_3.StateEnabledChanged:Connect(function(arg1_4, arg2) -- Line 164
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			if arg1_4 == Enum.HumanoidStateType.Jumping and arg2 ~= arg1._active then
				arg1:UpdateEnabled()
			end
		end))
	end))
end
function setmetatable_result1_2_upvr.Enable(arg1, arg2, arg3) -- Line 176
	if arg3 then
		arg1.parentUIFrame = arg3
	end
	if arg1.externallyEnabled == arg2 then
	else
		arg1.externallyEnabled = arg2
		arg1:UpdateEnabled()
		if arg2 then
			arg1:_setupConfigurations()
			return
		end
		arg1._connectionUtil:disconnectAll()
	end
end
function setmetatable_result1_2_upvr.Create(arg1) -- Line 193
	if not arg1.parentUIFrame then
	else
		if arg1.jumpButton then
			arg1.jumpButton:Destroy()
			arg1.jumpButton = nil
		end
		if arg1.absoluteSizeChangedConn then
			arg1.absoluteSizeChangedConn:Disconnect()
			arg1.absoluteSizeChangedConn = nil
		end
		arg1.jumpButton = Instance.new("ImageButton")
		arg1.jumpButton.Name = "JumpButton"
		arg1.jumpButton.Visible = false
		arg1.jumpButton.BackgroundTransparency = 1
		arg1.jumpButton.Image = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
		arg1.jumpButton.ImageRectOffset = Vector2.new(1, 146)
		arg1.jumpButton.ImageRectSize = Vector2.new(144, 144)
		local function ResizeJumpButton() -- Line 216
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local x = arg1.parentUIFrame.AbsoluteSize.x
			local var16
			if math.min(x, arg1.parentUIFrame.AbsoluteSize.y) > var16 then
				x = false
			else
				x = true
			end
			if x then
				var16 = 70
			else
				var16 = 120
			end
			arg1.jumpButton.Size = UDim2.new(0, var16, 0, var16)
			if not x or not UDim2.new(1, -(var16 * 1.5 - 10), 1, -var16 - 20) then
			end
			arg1.jumpButton.Position = UDim2.new(1, -(var16 * 1.5 - 10), 1, -var16 * 1.75)
		end
		ResizeJumpButton()
		arg1.absoluteSizeChangedConn = arg1.parentUIFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(ResizeJumpButton)
		arg1.touchObject = nil
		arg1.jumpButton.InputBegan:connect(function(arg1_5) -- Line 230
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.touchObject or arg1_5.UserInputType ~= Enum.UserInputType.Touch or arg1_5.UserInputState ~= Enum.UserInputState.Begin then
			else
				arg1.touchObject = arg1_5
				arg1.jumpButton.ImageRectOffset = Vector2.new(146, 146)
				arg1.isJumping = true
			end
		end)
		arg1.jumpButton.Parent = arg1.parentUIFrame
	end
end
return setmetatable_result1_2_upvr