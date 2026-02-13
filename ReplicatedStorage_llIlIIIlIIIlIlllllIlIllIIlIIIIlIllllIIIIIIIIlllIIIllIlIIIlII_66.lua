-- Path: ReplicatedStorage.llIlIIIlIIIlIlllllIlIllIIlIIIIlIllllIIIIIIIIlllIIIllIlIIIlII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:43
-- Luau version 6, Types version 3
-- Time taken: 0.013226 seconds

local any_import_result1 = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI")
local any_import_result1_upvr_8 = any_import_result1.import("lIIIIIlIIIlIlllllllIIIIllIIIllllIIIlllIlIIIIIIIIIIllIlIllIll")
local any_import_result1_upvr_3 = any_import_result1.import("llIlIlIIIIlIlIlllIlIlIllllIIlllIlIIlllllIlIIlIIlIlIlllIllllI")
local any_import_result1_upvr = any_import_result1.import("lllIIllllIlIlIIllIIIIIIIlllIIllIIllIIIIIlIIllllIIIlllIIIIlII")
local any_import_result1_upvr_5 = any_import_result1.import("IlIlIlIIIIIlIIIlIlIlIIIIlIllIllIIIIIIlIIlIllIlIlIIIlIlllIIll")
local tbl_upvr = {
	[Enum.UserInputState.Begin] = true;
	[Enum.UserInputState.End] = false;
}
local module_upvr = {}
module_upvr.__index = module_upvr
setmetatable(module_upvr, any_import_result1_upvr_8)
function module_upvr.new(arg1) -- Line 41
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr_8 (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_new_result1 = any_import_result1_upvr_8.new(arg1)
	setmetatable(any_new_result1, module_upvr)
	any_new_result1.lastFire = tick()
	any_new_result1.state = "idle"
	any_new_result1.reloading = false
	any_new_result1.storedAmmunition = any_new_result1.data.defaultAmmo
	any_new_result1.loadedProjectile = "rocket"
	any_new_result1.crouching = false
	any_new_result1.vingette = script.aim:Clone()
	any_new_result1.vingette.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	return any_new_result1
end
local any_import_result1_upvr_6 = any_import_result1.import("IlllIIIlIllIlIIlIIIllIllIlIllllllIIIllIIllIIlIIlIllIlIlIllII")
local any_import_result1_upvr_9 = any_import_result1.import("lIIlllIIlIllIIIIllIlIlIIllIIlIlIlIlIlIllIlllllIIIlIlIIIllIIl")
local any_import_result1_upvr_4 = any_import_result1.import("IIIlIlIllIlIllllIlIIlIIIIlIIIIlIllIllIlIIllIIIIllIllIIIIllll")
function module_upvr.fire(arg1, arg2) -- Line 105
	--[[ Upvalues[3]:
		[1]: any_import_result1_upvr_6 (readonly)
		[2]: any_import_result1_upvr_9 (readonly)
		[3]: any_import_result1_upvr_4 (readonly)
	]]
	if not arg1.loadedProjectile then
	else
		arg1.lastFire = tick()
		arg1:debug("lastFire", arg1.lastFire)
		arg1:setProjectile(nil)
		arg1:sprint(false)
		any_import_result1_upvr_6.new(arg1.name, arg1.instance)
		coroutine.wrap(function() -- Line 140
			game:GetService("TweenService"):Create(game.ReplicatedStorage.Kickback, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Value = -0.15;
			}):Play()
			wait(0.05)
			game:GetService("TweenService"):Create(game.ReplicatedStorage.Kickback, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Value = 0;
			}):Play()
		end)()
		arg1:aim(false)
		any_import_result1_upvr_9.new(arg1.data.recoil)
		arg1:setProjectileVisible(nil)
		any_import_result1_upvr_4.new(arg1)
	end
end
function module_upvr.updateUI(arg1) -- Line 221
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr_3 (readonly)
	]]
	local var15 = 0
	if arg1.loadedProjectile then
		var15 = 1
	end
	any_import_result1_upvr_3.update(var15 + arg1.storedAmmunition)
end
function module_upvr.setReloading(arg1, arg2) -- Line 234
	arg1.reloading = arg2
	arg1:debug("reloading", arg1.reloading)
end
function module_upvr.setProjectile(arg1, arg2) -- Line 239
	arg1.loadedProjectile = arg2
	arg1:updateUI()
	arg1:debug("loadedProjectile", arg1.loadedProjectile)
end
function module_upvr.reload(arg1) -- Line 245
	if arg1.reloading == true then
	else
		if arg1.loadedProjectile then return end
		if arg1.storedAmmunition == 0 then return end
		arg1:sprint(false)
		arg1:aim(false)
		arg1:setReloading(true)
		arg1:playSound("reload", arg1.instance.Handle.FirePoint)
		arg1.animations.reload:Play()
	end
end
local var16_upvr = any_import_result1.import("llllIllIIllllIIlIlIIIlIlIIIlIllIIlIllIllIIlIlIIIlIIlIllIlIIl")(any_import_result1.import("IlllIIlllIIllIIlIllIIllIlIlllIlIIlIIllIIIIlIlllIIIlllIIIllII").get("event.projectilevisible"))
function module_upvr.setProjectileVisible(arg1, arg2) -- Line 274
	--[[ Upvalues[1]:
		[1]: var16_upvr (readonly)
	]]
	if arg1.data.visibleProjectile == true then
		local pairs_result1, pairs_result2_4, pairs_result3 = pairs(arg1.data.projectiles)
		for _, v in pairs_result1, pairs_result2_4, pairs_result3 do
			if v == arg2 then
				arg1.instance:FindFirstChild(v).Transparency = 0
				for i_2, v_2 in pairs(arg1.instance:FindFirstChild(v):GetChildren()) do
					v_2.Transparency = 0
				end
			else
				arg1.instance:FindFirstChild(v).Transparency = 1
				i_2 = v
				for _, v_3 in pairs(arg1.instance:FindFirstChild(i_2):GetChildren()) do
					v_3.Transparency = 1
				end
			end
		end
		pairs_result1 = false
		local var38 = pairs_result1
		if arg2 then
			var38 = true
		end
		var16_upvr:Fire(arg1.name, var38)
	end
end
function module_upvr.input(arg1, arg2, arg3, arg4, arg5) -- Line 300
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 7. Error Block 5 start (CF ANALYSIS FAILED)
	arg1:fire(arg5)
	do
		return
	end
	-- KONSTANTERROR: [11] 7. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 11. Error Block 21 start (CF ANALYSIS FAILED)
	if arg2 == "sprint" then
		arg1:sprint(tbl_upvr[arg3])
		return
	end
	if arg2 == "aim" then
		if arg1.reloading == true then
		else
			arg1:aim(tbl_upvr[arg3])
		end
	end
	if arg2 == "reload" and arg3 == Enum.UserInputState.Begin then
		arg1:reload()
	end
	-- KONSTANTERROR: [16] 11. Error Block 21 end (CF ANALYSIS FAILED)
end
function module_upvr.setState(arg1, arg2) -- Line 335
	arg1:setWalkspeed(arg1.data.states[arg2].walkspeed)
	arg1:setFov(arg1.data.states[arg2].fov)
	arg1.state = arg2
	arg1:debug("state", arg1.state)
end
function module_upvr.setVingetteVisible(arg1, arg2) -- Line 344
	for _, v_4 in pairs(arg1.vingette:GetChildren()) do
		local tbl = {}
		tbl.ImageTransparency = arg2
		game:GetService("TweenService"):Create(v_4, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), tbl):Play()
	end
end
function module_upvr.sprint(arg1, arg2) -- Line 350
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
function module_upvr.aim(arg1, arg2) -- Line 373
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr_5 (readonly)
	]]
	if arg2 == true then
		arg1:setSensitivity("aim")
		any_import_result1_upvr_5.invisible()
		arg1:setVingetteVisible(0)
		arg1:updateUI()
		arg1:setState("aim")
		arg1.animations.aim:Play()
		arg1.characterAnimations.aim:Play()
		arg1.characterAnimations.sprint:Stop()
		arg1.animations.sprint:Stop()
	else
		arg1:setSensitivity("default")
		any_import_result1_upvr_5.visible()
		arg1:setVingetteVisible(1)
		arg1:setState("idle")
		arg1.characterAnimations.aim:Stop()
		arg1.animations.aim:Stop()
	end
end
function module_upvr.initDebug(arg1) -- Line 405
	arg1:debug("name", arg1.name)
	arg1:debug("lastFire", arg1.lastFire)
	arg1:debug("state", arg1.state)
	arg1:debug("reloading", arg1.reloading)
	arg1:debug("loadedProjectile", arg1.loadedProjectile)
	arg1:debug("crouching", arg1.crouching)
end
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr.unbind(arg1) -- Line 414
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	for _, v_5 in pairs(arg1.data.bindableActions) do
		ContextActionService_upvr:UnbindAction(v_5.action)
	end
end
function module_upvr.destroyLocal(arg1) -- Line 420
	--[[ Upvalues[3]:
		[1]: any_import_result1_upvr_3 (readonly)
		[2]: any_import_result1_upvr (readonly)
		[3]: any_import_result1_upvr_5 (readonly)
	]]
	any_import_result1_upvr_3.destroy()
	any_import_result1_upvr.remove()
	arg1:setVingetteVisible(1)
	arg1:unbind()
	arg1:setSensitivity("default")
	any_import_result1_upvr_5.remove()
end
local any_import_result1_upvr_2 = any_import_result1.import("IIlIIIllIIIlllllIIllIlIIIllIIIIIlllIIllIllllIIlIlIllllllIIll")
local any_import_result1_upvr_7 = any_import_result1.import("IlllIIIIIlllIlIllIlIllIIlllIlIIllIlIIIllIllIIlIIllIlllIIlIII")
function module_upvr.initLocal(arg1, arg2) -- Line 433
	--[[ Upvalues[4]:
		[1]: any_import_result1_upvr_5 (readonly)
		[2]: any_import_result1_upvr_2 (readonly)
		[3]: any_import_result1_upvr (readonly)
		[4]: any_import_result1_upvr_7 (readonly)
	]]
	arg1:initDebug()
	arg1:setReloading(false)
	arg1:setProjectileVisible(arg1.loadedProjectile)
	arg1:updateUI()
	arg1:setState("idle")
	any_import_result1_upvr_5.new(arg1.instance.AimPoint)
	if any_import_result1_upvr_2() == "mobile" then
		arg1.connections.mobileBinds = game.ReplicatedStorage.network.mobileBind.Event:Connect(function(arg1_2, arg2_2, arg3) -- Line 449
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local pairs_result1_2, pairs_result2_2, pairs_result3_5 = pairs(arg1.data.bindableActions)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [72] 50. Error Block 19 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [72] 50. Error Block 19 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [9] 7. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [72.8]
			-- KONSTANTERROR: [9] 7. Error Block 2 end (CF ANALYSIS FAILED)
		end)
		any_import_result1_upvr.new(arg1.data.bindableActions)
	end
	arg1.connections.sound = arg1.animations.reload:GetMarkerReachedSignal("sound"):Connect(function(arg1_3) -- Line 489
		--[[ Upvalues[1]:
			[1]: any_import_result1_upvr_7 (copied, readonly)
		]]
		any_import_result1_upvr_7.play(arg1_3)
	end)
	arg1.connections["reload-ended"] = arg1.animations.reload.Ended:Connect(function() -- Line 495
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setReloading(false)
	end)
	arg1.connections.projectile_in = arg1.animations.reload:GetMarkerReachedSignal("projectile_in"):Connect(function() -- Line 501
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var61 = arg1
		var61.storedAmmunition -= 1
		arg1:setProjectileVisible("rocket")
		arg1:setProjectile("rocket")
	end)
end
return module_upvr