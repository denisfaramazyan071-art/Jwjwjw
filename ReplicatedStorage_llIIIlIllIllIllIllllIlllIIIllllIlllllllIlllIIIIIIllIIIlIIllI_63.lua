-- Path: ReplicatedStorage.llIIIlIllIllIllIllllIlllIIIllllIlllllllIlllIIIIIIllIIIlIIllI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:40
-- Luau version 6, Types version 3
-- Time taken: 0.011028 seconds

local any_import_result1 = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI")
local any_import_result1_upvr_6 = any_import_result1.import("lIIIIIlIIIlIlllllllIIIIllIIIllllIIIlllIlIIIIIIIIIIllIlIllIll")
local any_import_result1_upvr_2 = any_import_result1.import("llIlIlIIIIlIlIlllIlIlIllllIIlllIlIIlllllIlIIlIIlIlIlllIllllI")
local any_import_result1_upvr = any_import_result1.import("lllIIllllIlIlIIllIIIIIIIlllIIllIIllIIIIIlIIllllIIIlllIIIIlII")
local tbl_2_upvr = {
	[Enum.UserInputState.Begin] = true;
	[Enum.UserInputState.End] = false;
}
local module_upvr = {}
module_upvr.__index = module_upvr
setmetatable(module_upvr, any_import_result1_upvr_6)
function module_upvr.new(arg1) -- Line 36
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr_6 (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_new_result1 = any_import_result1_upvr_6.new(arg1)
	setmetatable(any_new_result1, module_upvr)
	any_new_result1.throwing = false
	any_new_result1.state = "idle"
	any_new_result1.crouching = false
	any_new_result1.grenades = any_new_result1.data.grenades
	any_new_result1.vingette = script.aim:Clone()
	any_new_result1.vingette.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	return any_new_result1
end
function module_upvr.updateUI(arg1) -- Line 59
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr_2 (readonly)
	]]
	any_import_result1_upvr_2.update(arg1.grenades)
end
function module_upvr.input(arg1, arg2, arg3, arg4) -- Line 64
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if arg3 == Enum.UserInputState.Cancel then
	else
		if arg2 == "throw" then
			arg1:throw()
			return
		end
		if arg2 == "sprint" then
			arg1:sprint(tbl_2_upvr[arg3])
			return
		end
		if arg2 == "aim" then
			if arg1.reloading == true then
			else
				arg1:aim(tbl_2_upvr[arg3])
			end
		end
		if arg2 == "reload" then
			if arg1.reloading == true then return end
			if arg3 == Enum.UserInputState.Begin then
				arg1:reload()
			end
		end
	end
end
function module_upvr.throw(arg1) -- Line 96
	if arg1.grenades <= 0 then
	else
		if arg1.throwing == true then return end
		arg1.throwing = true
		arg1.animations.throw:Play()
		for _, v_6 in pairs(arg1.instance:GetChildren()) do
			v_6.Transparency = 0
		end
	end
end
function module_upvr.setState(arg1, arg2) -- Line 116
	arg1:setWalkspeed(arg1.data.states[arg2].walkspeed)
	arg1:setFov(arg1.data.states[arg2].fov)
	arg1.state = arg2
	arg1:debug("state", arg1.state)
end
function module_upvr.setVingetteVisible(arg1, arg2) -- Line 125
	for _, v in pairs(arg1.vingette:GetChildren()) do
		local tbl = {}
		tbl.ImageTransparency = arg2
		game:GetService("TweenService"):Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), tbl):Play()
	end
end
function module_upvr.sprint(arg1, arg2) -- Line 131
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
function module_upvr.initDebug(arg1) -- Line 154
	arg1:debug("name", arg1.name)
	arg1:debug("state", arg1.state)
	arg1:debug("crouching", arg1.crouching)
end
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr.unbind(arg1) -- Line 163
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	for _, v_2 in pairs(arg1.data.bindableActions) do
		ContextActionService_upvr:UnbindAction(v_2.action)
	end
end
function module_upvr.destroyLocal(arg1) -- Line 169
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr_2 (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	if arg1.fireConnection then
		arg1:disconnectFire()
	end
	any_import_result1_upvr_2.destroy()
	any_import_result1_upvr.remove()
	arg1:setVingetteVisible(1)
	arg1:unbind()
	arg1:setSensitivity("default")
end
local any_import_result1_upvr_5 = any_import_result1.import("IIlIIIllIIIlllllIIllIlIIIllIIIIIlllIIllIllllIIlIlIllllllIIll")
local any_import_result1_upvr_3 = any_import_result1.import("lIIlllIIlIllIIIIllIlIlIIllIIlIlIlIlIlIllIlllllIIIlIlIIIllIIl")
local any_import_result1_upvr_4 = any_import_result1.import("IlllIIIIIlllIlIllIlIllIIlllIlIIllIlIIIllIllIIlIIllIlllIIlIII")
function module_upvr.initLocal(arg1) -- Line 181
	--[[ Upvalues[4]:
		[1]: any_import_result1_upvr_5 (readonly)
		[2]: any_import_result1_upvr (readonly)
		[3]: any_import_result1_upvr_3 (readonly)
		[4]: any_import_result1_upvr_4 (readonly)
	]]
	if arg1.grenades <= 0 then
		for _, v_3 in pairs(arg1.instance:GetChildren()) do
			v_3.Transparency = 1
		end
	end
	arg1.throwing = false
	arg1:initDebug()
	arg1:updateUI("equip")
	arg1:setState("idle")
	if any_import_result1_upvr_5() == "mobile" then
		arg1.connections.mobileBinds = game.ReplicatedStorage.network.mobileBind.Event:Connect(function(arg1_2, arg2, arg3) -- Line 202
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			for _, v_4 in pairs(arg1.data.bindableActions) do
				local var41
				if v_4.action == arg1_2 then
					if arg1_2 == "sprint" then
						if arg1.state == "sprint" then
							var41 = Enum.UserInputState.End
						else
							var41 = Enum.UserInputState.Begin
						end
					elseif arg1_2 == "crouch" then
						if arg1.crouching == true then
							var41 = Enum.UserInputState.End
						else
							var41 = Enum.UserInputState.Begin
						end
					end
					arg1:globalinput(arg1_2, var41, arg3)
					arg1:input(arg1_2, var41, arg3)
				end
			end
		end)
		any_import_result1_upvr.new(arg1.data.bindableActions)
	end
	arg1.connections.throwEnd = arg1.animations.throw.Ended:Connect(function() -- Line 236
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.throwing = false
		if 0 < arg1.grenades then
			for _, v_5 in pairs(arg1.instance:GetChildren()) do
				v_5.Transparency = 0
			end
		end
	end)
	arg1.connections.throw = arg1.animations.throw:GetMarkerReachedSignal("throw"):Connect(function() -- Line 246
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_import_result1_upvr_3 (copied, readonly)
			[3]: any_import_result1_upvr_4 (copied, readonly)
		]]
		if arg1.grenades <= 0 then
		else
			local var51 = arg1
			var51.grenades -= 1
			arg1:updateUI()
			any_import_result1_upvr_3.new("grenadeThrow")
			any_import_result1_upvr_4.play("throw")
			for _, v_7 in pairs(arg1.instance:GetChildren()) do
				v_7.Transparency = 1
			end
			game.ReplicatedStorage.network.throw:FireServer(arg1.name, arg1.instance.PrimaryPart.Position, workspace.CurrentCamera.CFrame.LookVector)
		end
	end)
	arg1.connections.pin = arg1.animations.throw:GetMarkerReachedSignal("pin"):Connect(function() -- Line 265
		--[[ Upvalues[1]:
			[1]: any_import_result1_upvr_4 (copied, readonly)
		]]
		any_import_result1_upvr_4.play("pin")
	end)
	arg1.connections.deletepin = arg1.animations.throw:GetMarkerReachedSignal("deletepin"):Connect(function() -- Line 269
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.instance:FindFirstChild("Ring") then
			arg1.instance:FindFirstChild("Ring").Transparency = 1
		end
	end)
end
return module_upvr