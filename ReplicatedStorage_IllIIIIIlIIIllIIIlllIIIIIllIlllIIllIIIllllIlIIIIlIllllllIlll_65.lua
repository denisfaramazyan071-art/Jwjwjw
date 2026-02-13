-- Path: ReplicatedStorage.IllIIIIIlIIIllIIIlllIIIIIllIlllIIllIIIllllIlIIIIlIllllllIlll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:42
-- Luau version 6, Types version 3
-- Time taken: 0.009015 seconds

local any_import_result1 = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI")
local any_import_result1_4_upvr = any_import_result1.import("lIIIIIlIIIlIlllllllIIIIllIIIllllIIIlllIlIIIIIIIIIIllIlIllIll")
local any_import_result1_3_upvr = any_import_result1.import("lllIIllllIlIlIIllIIIIIIIlllIIllIIllIIIIIlIIllllIIIlllIIIIlII")
local any_import_result1_upvr = any_import_result1.import("IlIlIlIIIIIlIIIlIlIlIIIIlIllIllIIIIIIlIIlIllIlIlIIIlIlllIIll")
local tbl_upvr = {
	[Enum.UserInputState.Begin] = true;
	[Enum.UserInputState.End] = false;
}
local module_upvr = {}
module_upvr.__index = module_upvr
setmetatable(module_upvr, any_import_result1_4_upvr)
function module_upvr.new(arg1) -- Line 41
	--[[ Upvalues[2]:
		[1]: any_import_result1_4_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_new_result1 = any_import_result1_4_upvr.new(arg1)
	setmetatable(any_new_result1, module_upvr)
	any_new_result1.state = "idle"
	any_new_result1.crouching = false
	any_new_result1.validCFrame = nil
	any_new_result1.updateConnection = nil
	any_new_result1.lastUse = tick()
	any_new_result1.localconnections = {}
	any_new_result1.billboards = {}
	return any_new_result1
end
function module_upvr.cleanUp(arg1) -- Line 65
	for i, v in pairs(arg1.localconnections) do
		v:Disconnect()
		arg1.localconnections[i] = nil
	end
	for i_2, v_2 in pairs(arg1.billboards) do
		v_2:Destroy()
		arg1.billboards[i_2] = nil
	end
end
function module_upvr.createBillboard(arg1, arg2) -- Line 79
	pcall(function() -- Line 81
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 8. Error Block 22 start (CF ANALYSIS FAILED)
		if arg2.HumanoidRootPart:FindFirstChild("hpbillboard") then
			arg2.HumanoidRootPart:FindFirstChild("hpbillboard"):Destroy()
		end
		local clone = script.hpbillboard:Clone()
		clone.Parent = arg2.HumanoidRootPart
		table.insert(arg1.billboards, clone)
		clone.Frame.Frame.Size = UDim2.new(arg2:FindFirstChildOfClass("Humanoid").Health / 100, 0, 1, 0)
		if arg2:FindFirstChildOfClass("Humanoid").Health <= 0 then
			clone:Destroy()
			-- KONSTANTWARNING: GOTO [103] #70
		end
		-- KONSTANTERROR: [13] 8. Error Block 22 end (CF ANALYSIS FAILED)
	end)
end
local any_import_result1_5_upvr = any_import_result1.import("llIIIlllllIIllIIlIlllIlIlIIIlIlIlIIllIlllllIIlIIllIIIIIlIllI")
function module_upvr.setup(arg1) -- Line 121
	--[[ Upvalues[1]:
		[1]: any_import_result1_5_upvr (readonly)
	]]
	local var25 = ""
	if any_import_result1_5_upvr.players[game.Players.LocalPlayer.Name] == "attackers" then
		var25 = "lIIooolll"
	elseif any_import_result1_5_upvr.players[game.Players.LocalPlayer.Name] == "defenders" then
		var25 = "IIoooIIl"
	end
	local SOME = workspace:FindFirstChild("IIIIllllIIIllIIlIlI_IIllIlIIIllII_o"):WaitForChild(var25)
	arg1.localconnections.added = SOME.ChildAdded:Connect(function(arg1_2) -- Line 133
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:createBillboard(arg1_2)
	end)
	for _, v_3 in pairs(SOME:GetChildren()) do
		arg1:createBillboard(v_3)
	end
end
function module_upvr.activate(arg1) -- Line 144
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	pcall(function() -- Line 146
		--[[ Upvalues[2]:
			[1]: any_import_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if any_import_result1_upvr.currentInstance and any_import_result1_upvr.currentInstance.Parent:FindFirstChildOfClass("Humanoid") and (any_import_result1_upvr.currentInstance.Position - workspace.CurrentCamera.CFrame.Position).Magnitude <= 7 and 1 <= tick() - arg1.lastUse then
			arg1.lastUse = tick()
			game.ReplicatedStorage.network.heal:FireServer(any_import_result1_upvr.currentInstance.Parent:FindFirstChildOfClass("Humanoid"))
		end
	end)
end
function module_upvr.input(arg1, arg2, arg3, arg4) -- Line 178
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
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
function module_upvr.setState(arg1, arg2) -- Line 202
	arg1:setWalkspeed(arg1.data.states[arg2].walkspeed)
	arg1:setFov(arg1.data.states[arg2].fov)
	arg1.state = arg2
	arg1:debug("state", arg1.state)
end
function module_upvr.sprint(arg1, arg2) -- Line 213
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
function module_upvr.initDebug(arg1) -- Line 237
	arg1:debug("name", arg1.name)
	arg1:debug("state", arg1.state)
	arg1:debug("crouching", arg1.crouching)
end
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr.unbind(arg1) -- Line 243
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	for _, v_4 in pairs(arg1.data.bindableActions) do
		ContextActionService_upvr:UnbindAction(v_4.action)
	end
end
function module_upvr.destroyLocal(arg1) -- Line 249
	--[[ Upvalues[2]:
		[1]: any_import_result1_3_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	arg1:cleanUp()
	any_import_result1_3_upvr.remove()
	arg1:unbind()
	arg1:setSensitivity("default")
	any_import_result1_upvr.remove()
end
local any_import_result1_2_upvr = any_import_result1.import("IIlIIIllIIIlllllIIllIlIIIllIIIIIlllIIllIllllIIlIlIllllllIIll")
function module_upvr.initLocal(arg1) -- Line 262
	--[[ Upvalues[3]:
		[1]: any_import_result1_upvr (readonly)
		[2]: any_import_result1_2_upvr (readonly)
		[3]: any_import_result1_3_upvr (readonly)
	]]
	arg1:initDebug()
	arg1:setState("idle")
	arg1:setup()
	any_import_result1_upvr.new(arg1.instance.Parent.Parent.CameraBone)
	if any_import_result1_2_upvr() == "mobile" then
		arg1.connections.mobileBinds = game.ReplicatedStorage.network.mobileBind.Event:Connect(function(arg1_3, arg2, arg3) -- Line 279
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local pairs_result1_3, pairs_result2, pairs_result3_2 = pairs(arg1.data.bindableActions)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [65] 44. Error Block 19 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [65] 44. Error Block 19 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [9] 7. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [65.8]
			-- KONSTANTERROR: [9] 7. Error Block 2 end (CF ANALYSIS FAILED)
		end)
		any_import_result1_3_upvr.new(arg1.data.bindableActions)
	end
end
return module_upvr