-- Path: ReplicatedStorage.IlIllIIllIIllllllIlIIllIlIIIIIlllIlllllIlIllIlIlIlIllIIIlIll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:41
-- Luau version 6, Types version 3
-- Time taken: 0.019145 seconds

local any_import_result1 = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI")
local any_import_result1_4_upvr = any_import_result1.import("lIIIIIlIIIlIlllllllIIIIllIIIllllIIIlllIlIIIIIIIIIIllIlIllIll")
local any_import_result1_upvr_2 = any_import_result1.import("IIIllIIIllIIlIlIIIIllIlllIlIllIIIIlIIlIlIIllllllllIIIllIlIlI")
local any_import_result1_upvr = any_import_result1.import("lllIIllllIlIlIIllIIIIIIIlllIIllIIllIIIIIlIIllllIIIlllIIIIlII")
local any_import_result1_2_upvr = any_import_result1.import("IlIlIlIIIIIlIIIlIlIlIIIIlIllIllIIIIIIlIIlIllIlIlIIIlIlllIIll")
local any_import_result1_7_upvr = any_import_result1.import("IlllIIIlIllIlIIlIIIllIllIlIllllllIIIllIIllIIlIIlIllIlIlIllII")
local tbl_3_upvr = {
	[Enum.UserInputState.Begin] = true;
	[Enum.UserInputState.End] = false;
}
local module_upvr = {}
module_upvr.__index = module_upvr
setmetatable(module_upvr, any_import_result1_4_upvr)
function module_upvr.new(arg1) -- Line 44
	--[[ Upvalues[2]:
		[1]: any_import_result1_4_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_new_result1 = any_import_result1_4_upvr.new(arg1)
	setmetatable(any_new_result1, module_upvr)
	any_new_result1.fireConnection = nil
	any_new_result1.lastFire = tick()
	any_new_result1.fireMode = 1
	any_new_result1.state = "idle"
	any_new_result1.reloading = false
	any_new_result1.boltAnimation = false
	any_new_result1.crouching = false
	any_new_result1.chamber = any_new_result1.data.chamberSize
	any_new_result1.storedRounds = any_new_result1.data.storedRounds
	any_new_result1.vingette = script.aim:Clone()
	any_new_result1.vingette.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	return any_new_result1
end
function module_upvr.addRoundToChamber(arg1) -- Line 69
	if arg1.storedRounds <= 0 then
	else
		arg1.storedRounds -= 1
		arg1.chamber += 1
		arg1:updateUI("reload")
	end
end
function module_upvr.updateUI(arg1, arg2) -- Line 87
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr_2 (readonly)
	]]
	local tbl = {
		stored = arg1.storedRounds;
		chamber = arg1.chamber;
	}
	tbl.action = arg2
	any_import_result1_upvr_2.update(tbl)
end
function module_upvr.updateChamber(arg1, arg2) -- Line 91
	arg1.chamber = arg2
	arg1:updateUI()
	arg1:debug("chamber", arg1.chamber)
end
function module_upvr.pumpBack(arg1, arg2) -- Line 99
	if arg1.name == "ks23" then
		arg1.noSprint = true
		delay(arg2, function() -- Line 103
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.noSprint = nil
			if not arg1.instance then
			else
				if not arg1.instance.Parent then return end
				arg1.animations.boltback:Play()
			end
		end)
	end
end
local any_import_result1_3_upvr = any_import_result1.import("lIIlllIIlIllIIIIllIlIlIIllIIlIlIlIlIlIllIlllllIIIlIlIIIllIIl")
local any_import_result1_upvr_3 = any_import_result1.import("IIIlIlIllIlIllllIlIIlIIIIlIIIIlIllIllIlIIllIIIIllIllIIIIllll")
function module_upvr.fire(arg1, arg2) -- Line 119
	--[[ Upvalues[3]:
		[1]: any_import_result1_7_upvr (readonly)
		[2]: any_import_result1_3_upvr (readonly)
		[3]: any_import_result1_upvr_3 (readonly)
	]]
	if arg1.chamber <= 0 then
		arg1:playSound("empty", arg1.instance.Handle.FirePoint)
		return true
	end
	arg1:updateChamber(arg1.chamber - 1)
	arg1:sprint(false)
	any_import_result1_7_upvr.new(arg1.name, arg1.instance)
	if arg1.characterAnimations.recoil then
		arg1.characterAnimations.recoil:Play()
	end
	local var16_upvw = -0.15
	if arg1.data.kickback then
		var16_upvw = arg1.data.kickback
	end
	coroutine.wrap(function() -- Line 159
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var16_upvw (read and write)
		]]
		arg1:pumpBack(0.3)
		game:GetService("TweenService"):Create(game.ReplicatedStorage.Kickback, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Value = var16_upvw;
		}):Play()
		wait(0.05)
		game:GetService("TweenService"):Create(game.ReplicatedStorage.Kickback, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Value = 0;
		}):Play()
	end)()
	any_import_result1_3_upvr.new(arg1.data.recoil)
	for _ = 1, 10 do
		any_import_result1_upvr_3.new(arg1, true)
	end
end
function module_upvr.setReloading(arg1, arg2) -- Line 199
	arg1.reloading = arg2
	arg1:debug("reloading", arg1.reloading)
end
function module_upvr.reload(arg1, arg2) -- Line 204
	if arg1.reloading == true then
	else
		if arg1.noSprint then return end
		if arg1.storedRounds <= 0 then return end
		if arg1.data.chamberSize <= arg1.chamber then return end
		arg1:updateUI("reload")
		if not arg2 then
			arg1:sprint(false)
		end
		if arg1.state == "aim" then
			arg1:aim(false)
		end
		arg1:setReloading(true)
		arg1:disconnectFire()
		arg1.animations.reload:Play()
	end
end
function module_upvr.nextFireMode(arg1) -- Line 251
	local var20 = arg1.fireMode + 1
	if not arg1.data.fireModes[var20] then
		var20 = 1
	end
	return var20
end
local any_import_result1_upvr_4 = any_import_result1.import("IlIlllIIlIlIIIlIlIlIIIllIIllIllllIIIlIllIIIIIlllIIIlllIlllll")
function module_upvr.changeFireMode(arg1, arg2) -- Line 259
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr_4 (readonly)
	]]
	if not arg2 then
	end
	arg1.fireMode = arg1:nextFireMode()
	any_import_result1_upvr_4.new(arg1.data.fireModes[arg1.fireMode])
	arg1:playSound("fireMode", arg1.instance.Handle.FirePoint)
	arg1:debug("fireMode", arg1.fireMode)
	arg1:debug("fireModeName", arg1.data.fireModes[arg1.fireMode])
end
function module_upvr.disconnectFire(arg1) -- Line 270
	if arg1.fireConnection then
		arg1.fireConnection:Disconnect()
		arg1.fireConnection = nil
	end
	arg1:debug("fireConnection", nil)
end
local RunService_upvr = game:GetService("RunService")
function module_upvr.input(arg1, arg2, arg3, arg4, arg5) -- Line 278
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
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
function module_upvr.setState(arg1, arg2) -- Line 362
	arg1:setWalkspeed(arg1.data.states[arg2].walkspeed)
	arg1:setFov(arg1.data.states[arg2].fov)
	arg1.state = arg2
	arg1:debug("state", arg1.state)
end
function module_upvr.setVingetteVisible(arg1, arg2) -- Line 371
	for _, v in pairs(arg1.vingette:GetChildren()) do
		local tbl_2 = {}
		tbl_2.ImageTransparency = arg2
		game:GetService("TweenService"):Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), tbl_2):Play()
	end
end
function module_upvr.sprint(arg1, arg2) -- Line 377
	if arg1.noSprint then
		arg1:setState("idle")
		arg1.characterAnimations.sprint:Stop()
		arg1.animations.sprint:Stop()
	else
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
end
function module_upvr.aim(arg1, arg2) -- Line 408
	--[[ Upvalues[1]:
		[1]: any_import_result1_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 35. Error Block 42 start (CF ANALYSIS FAILED)
	for _, v_2 in pairs(arg1.instance:GetChildren()) do
		if v_2.Name == "scope" then
			v_2.Transparency = 1
		elseif v_2.Name == "aimscope" then
			v_2.Transparency = 0
		elseif v_2.Name == "main" then
			v_2.Transparency = 1
			v_2.Decal.Transparency = 0
		end
	end
	do
		return
	end
	-- KONSTANTERROR: [55] 35. Error Block 42 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [95] 60. Error Block 43 start (CF ANALYSIS FAILED)
	arg1:setSensitivity("default")
	any_import_result1_2_upvr.visible()
	arg1:setVingetteVisible(1)
	arg1:setState("idle")
	arg1.characterAnimations.aim:Stop()
	arg1.animations.aim:Stop()
	if arg1.data.scope == true then
		for _, v_3 in pairs(arg1.instance:GetChildren()) do
			if v_3.Name == "scope" then
				v_3.Transparency = 0
			elseif v_3.Name == "aimscope" then
				v_3.Transparency = 1
			elseif v_3.Name == "main" then
				v_3.Transparency = 1
				v_3.Decal.Transparency = 1
			end
		end
	end
	-- KONSTANTERROR: [95] 60. Error Block 43 end (CF ANALYSIS FAILED)
end
function module_upvr.initDebug(arg1) -- Line 468
	arg1:debug("name", arg1.name)
	arg1:debug("fireMode", arg1.fireMode)
	arg1:debug("fireModeName", arg1.data.fireModes[arg1.fireMode])
	arg1:debug("lastFire", arg1.lastFire)
	arg1:debug("fireConnection", nil)
	arg1:debug("state", arg1.state)
	arg1:debug("chamber", arg1.chamber)
	arg1:debug("reloading", arg1.reloading)
	arg1:debug("crouching", arg1.crouching)
end
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr.unbind(arg1) -- Line 480
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	for _, v_4 in pairs(arg1.data.bindableActions) do
		ContextActionService_upvr:UnbindAction(v_4.action)
	end
end
function module_upvr.destroyLocal(arg1) -- Line 486
	--[[ Upvalues[3]:
		[1]: any_import_result1_upvr_2 (readonly)
		[2]: any_import_result1_upvr (readonly)
		[3]: any_import_result1_2_upvr (readonly)
	]]
	if arg1.fireConnection then
		arg1:disconnectFire()
	end
	any_import_result1_upvr_2.destroy()
	any_import_result1_upvr.remove()
	arg1:setVingetteVisible(1)
	arg1:unbind()
	arg1:setSensitivity("default")
	any_import_result1_2_upvr.remove()
end
local any_import_result1_6_upvr = any_import_result1.import("IIlIIIllIIIlllllIIllIlIIIllIIIIIlllIIllIllllIIlIlIllllllIIll")
local any_import_result1_5_upvr = any_import_result1.import("IlllIIIIIlllIlIllIlIllIIlllIlIIllIlIIIllIllIIlIIllIlllIIlIII")
function module_upvr.initLocal(arg1, arg2) -- Line 502
	--[[ Upvalues[5]:
		[1]: any_import_result1_2_upvr (readonly)
		[2]: any_import_result1_6_upvr (readonly)
		[3]: any_import_result1_upvr (readonly)
		[4]: any_import_result1_5_upvr (readonly)
		[5]: any_import_result1_7_upvr (readonly)
	]]
	arg1:setReloading(false)
	arg1:initDebug()
	arg1:updateUI("equip")
	arg1:setState("idle")
	if arg1.data.boltBackOnEmptyMag and arg1.magazines[arg1.equippedMagazine].rounds == 0 then
		game:GetService("TweenService"):Create(arg1.instance.Bolt.Motor6D, TweenInfo.new(0.01, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			C0 = arg1.data.boltPositions.viewModel[1];
		}):Play()
	end
	any_import_result1_2_upvr.new(arg1.instance.AimPoint)
	if any_import_result1_6_upvr() == "mobile" then
		arg1.connections.mobileBinds = game.ReplicatedStorage.network.mobileBind.Event:Connect(function(arg1_2, arg2_2, arg3) -- Line 523
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local pairs_result1_4, pairs_result2_2, pairs_result3_2 = pairs(arg1.data.bindableActions)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [72] 50. Error Block 19 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [72] 50. Error Block 19 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [9] 7. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [72.8]
			-- KONSTANTERROR: [9] 7. Error Block 2 end (CF ANALYSIS FAILED)
		end)
		any_import_result1_upvr.new(arg1.data.bindableActions)
	end
	arg1.connections["bolt-reset"] = arg1.animations.reload:GetMarkerReachedSignal("bolt_reset"):Connect(function() -- Line 571
		--[[ Upvalues[2]:
			[1]: any_import_result1_5_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		any_import_result1_5_upvr.play(arg1.name..".bolt2")
		game:GetService("TweenService"):Create(arg1.instance.Bolt.Motor6D, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			C0 = arg1.data.boltPositions.viewModel[2];
		}):Play()
	end)
	arg1.connections["bolt-back"] = arg1.animations.reload:GetMarkerReachedSignal("bolt_back"):Connect(function() -- Line 581
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		game:GetService("TweenService"):Create(arg1.instance.Bolt.Motor6D, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			C0 = arg1.data.boltPositions.viewModel[1];
		}):Play()
	end)
	arg1.connections["reload-mag-in"] = arg1.animations.reload:GetMarkerReachedSignal("mag_in"):Connect(function() -- Line 591
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:addRoundToChamber()
		arg1:playSound("magin", arg1.instance.Handle.FirePoint)
	end)
	arg1.connections["reload-mag-out"] = arg1.animations.reload:GetMarkerReachedSignal("mag_out"):Connect(function() -- Line 596
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:playSound("magout", arg1.instance.Handle.FirePoint)
	end)
	arg1.connections["reload-end"] = arg1.animations.reload:GetMarkerReachedSignal("end"):Connect(function() -- Line 601
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setReloading(false)
		arg1.animations.reload:Stop()
		if arg1.chamber < arg1.data.chamberSize then
			arg1:reload(true)
		end
	end)
	arg1.connections["bolt-end"] = arg1.animations.bolt:GetMarkerReachedSignal("end"):Connect(function() -- Line 612
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.animations.bolt:Stop()
	end)
	arg1.connections.playSound = arg1.animations.reload:GetMarkerReachedSignal("play_sound"):Connect(function(arg1_3) -- Line 616
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:playSound(arg1_3, arg1.instance.Handle.FirePoint)
	end)
	arg1.connections.bolt1 = arg1.animations.bolt:GetMarkerReachedSignal("bolt_pull"):Connect(function() -- Line 620
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:playSound("bolt1", arg1.instance.Handle.FirePoint)
	end)
	arg1.connections.shell = arg1.animations.boltback:GetMarkerReachedSignal("shell"):Connect(function() -- Line 624
		--[[ Upvalues[2]:
			[1]: any_import_result1_7_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		any_import_result1_7_upvr.ejectShell(arg1.name, arg1.instance)
	end)
	arg1.connections.shell2 = arg1.animations.boltback:GetMarkerReachedSignal("pump"):Connect(function() -- Line 629
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:playSound("pump", arg1.instance.Handle.FirePoint)
	end)
	arg1.connections.bolt2 = arg1.animations.bolt:GetMarkerReachedSignal("bolt_release"):Connect(function() -- Line 635
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:playSound("bolt2", arg1.instance.Handle.FirePoint)
	end)
	arg1.connections.chainReload = arg1.animations.reload:GetMarkerReachedSignal("chain"):Connect(function(arg1_4) -- Line 639
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var75
		if arg1_4 == "false" then
			var75 = 1
		end
		for _, v_5 in pairs(arg1.instance:GetChildren()) do
			if v_5:IsA("Model") and tonumber(v_5.Name) or v_5.Name == "chamberRound" then
				for _, v_6 in pairs(v_5:GetChildren()) do
					if v_6:IsA("BasePart") then
						v_6.Transparency = var75
					end
				end
			end
		end
	end)
end
return module_upvr