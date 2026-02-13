-- Path: ReplicatedStorage.IIllIIlIlIIIlllIIIlIIlIlllIlIIIIIIllllIlIllIIlIlIlIIllllllIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:39
-- Luau version 6, Types version 3
-- Time taken: 0.007237 seconds

local any_import_result1 = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI")
local any_import_result1_upvr_4 = any_import_result1.import("lIIIIIlIIIlIlllllllIIIIllIIIllllIIIlllIlIIIIIIIIIIllIlIllIll")
local any_import_result1_upvr_2 = any_import_result1.import("lllIIllllIlIlIIllIIIIIIIlllIIllIIllIIIIIlIIllllIIIlllIIIIlII")
local tbl_upvr = {"rbxassetid://75207914901523", "rbxassetid://116849889006771", "rbxassetid://120235525511805", "rbxassetid://75165369605714", "rbxassetid://95004492403309", "rbxassetid://95513339831991", "rbxassetid://75720268565619"}
function round(arg1) -- Line 46
	return math.floor(arg1 * 10) / 10
end
local tbl_upvr_2 = {
	[Enum.UserInputState.Begin] = true;
	[Enum.UserInputState.End] = false;
}
local module_upvr = {}
module_upvr.__index = module_upvr
setmetatable(module_upvr, any_import_result1_upvr_4)
function module_upvr.new(arg1) -- Line 63
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr_4 (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_new_result1 = any_import_result1_upvr_4.new(arg1)
	setmetatable(any_new_result1, module_upvr)
	any_new_result1.state = "idle"
	any_new_result1.crouching = false
	any_new_result1.validCFrame = nil
	any_new_result1.updateConnection = nil
	return any_new_result1
end
function module_upvr.cleanUp(arg1) -- Line 124
	if arg1.updateConnection then
		arg1.updateConnection:Disconnect()
		arg1.updateConnection = nil
	end
end
local RunService_upvr = game:GetService("RunService")
function module_upvr.animate(arg1) -- Line 133
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if arg1.updateConnection then
		arg1.updateConnection:Disconnect()
		arg1.updateConnection = nil
	end
	arg1.updateConnection = RunService_upvr.RenderStepped:Connect(function() -- Line 140
		--[[ Upvalues[2]:
			[1]: tbl_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		arg1.instance.screen.SurfaceGui.Frame.ImageLabel.Image = tbl_upvr[math.random(1, #tbl_upvr)]
	end)
end
local any_import_result1_upvr = any_import_result1.import("lIlIllIIIlllIIllIIlIIIIlllIlIIIIIlIlllIIlIIlllIIlllIIIllIlIl")
function module_upvr.activate(arg1) -- Line 149
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	any_import_result1_upvr.new()
end
function module_upvr.input(arg1, arg2, arg3, arg4) -- Line 161
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [4] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_upvr.setState(arg1, arg2) -- Line 183
	arg1:setWalkspeed(arg1.data.states[arg2].walkspeed)
	arg1:setFov(arg1.data.states[arg2].fov)
	arg1.state = arg2
	arg1:debug("state", arg1.state)
end
function module_upvr.sprint(arg1, arg2) -- Line 194
	if arg1.state == "idle" or arg1.state == "sprint" then
		if arg2 == true then
			arg1:crouch(false)
			arg1:setState("sprint")
			arg1.characterAnimations.sprint:Play()
			arg1.animations.sprint:Play()
		else
			arg1:setState("idle")
			arg1.characterAnimations.sprint:Stop()
			arg1.animations.sprint:Stop()
		end
	end
	arg1.animations.sprint:Stop()
end
function module_upvr.initDebug(arg1) -- Line 218
	arg1:debug("name", arg1.name)
	arg1:debug("state", arg1.state)
	arg1:debug("crouching", arg1.crouching)
end
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr.unbind(arg1) -- Line 224
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	for _, v in pairs(arg1.data.bindableActions) do
		ContextActionService_upvr:UnbindAction(v.action)
	end
end
local any_import_result1_upvr_3 = any_import_result1.import("IlIlIlIIIIIlIIIlIlIlIIIIlIllIllIIIIIIlIIlIllIlIlIIIlIlllIIll")
function module_upvr.destroyLocal(arg1) -- Line 230
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr_2 (readonly)
		[2]: any_import_result1_upvr_3 (readonly)
	]]
	arg1:cleanUp()
	any_import_result1_upvr_2.remove()
	arg1:unbind()
	arg1:setSensitivity("default")
	any_import_result1_upvr_3.remove()
end
local any_import_result1_2_upvr = any_import_result1.import("IIlIIIllIIIlllllIIllIlIIIllIIIIIlllIIllIllllIIlIlIllllllIIll")
function module_upvr.initLocal(arg1) -- Line 243
	--[[ Upvalues[2]:
		[1]: any_import_result1_2_upvr (readonly)
		[2]: any_import_result1_upvr_2 (readonly)
	]]
	arg1:initDebug()
	arg1:animate()
	arg1:setState("idle")
	if any_import_result1_2_upvr() == "mobile" then
		arg1.connections.mobileBinds = game.ReplicatedStorage.network.mobileBind.Event:Connect(function(arg1_2, arg2, arg3) -- Line 257
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			for _, v_2 in pairs(arg1.data.bindableActions) do
				local var27
				if v_2.action == arg1_2 then
					if arg1_2 == "aim" then
						if arg1.state == "aim" then
							var27 = Enum.UserInputState.End
						else
							var27 = Enum.UserInputState.Begin
						end
					elseif arg1_2 == "sprint" then
						if arg1.state == "sprint" then
							var27 = Enum.UserInputState.End
						else
							var27 = Enum.UserInputState.Begin
						end
					elseif arg1_2 == "crouch" then
						if arg1.crouching == true then
							var27 = Enum.UserInputState.End
						else
							var27 = Enum.UserInputState.Begin
						end
					end
					arg1:globalinput(arg1_2, var27, arg3)
					arg1:input(arg1_2, var27, arg3)
				end
			end
		end)
		any_import_result1_upvr_2.new(arg1.data.bindableActions)
	end
end
return module_upvr