-- Path: ReplicatedStorage.lIllIIIllIIllIllIlIllllIllllIIIIIlIllIlIIIlIlIlllIIIlIIlIlII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:37
-- Luau version 6, Types version 3
-- Time taken: 0.022159 seconds

local any_import_result1 = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI")
local any_import_result1_upvr_7 = any_import_result1.import("lIIIIIlIIIlIlllllllIIIIllIIIllllIIIlllIlIIIIIIIIIIllIlIllIll")
local any_import_result1_upvr_3 = any_import_result1.import("IlIlIIIlIIIIllllIllllllIllIllllllIIIIlIIIlIlIllIIIIlllllIlll")
local any_import_result1_upvr = any_import_result1.import("lllIIllllIlIlIIllIIIIIIIlllIIllIIllIIIIIlIIllllIIIlllIIIIlII")
local any_import_result1_upvr_2 = any_import_result1.import("IlIlIlIIIIIlIIIlIlIlIIIIlIllIllIIIIIIlIIlIllIlIlIIIlIlllIIll")
local tbl_upvr = {
	[Enum.UserInputState.Begin] = true;
	[Enum.UserInputState.End] = false;
}
local module_upvr = {}
module_upvr.__index = module_upvr
setmetatable(module_upvr, any_import_result1_upvr_7)
function module_upvr.new(arg1) -- Line 44
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr_7 (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_new_result1 = any_import_result1_upvr_7.new(arg1)
	setmetatable(any_new_result1, module_upvr)
	any_new_result1.fireConnection = nil
	any_new_result1.lastFire = tick()
	any_new_result1.fireMode = 1
	any_new_result1.state = "idle"
	any_new_result1.reloading = false
	any_new_result1.boltAnimation = false
	any_new_result1.crouching = false
	any_new_result1.magazines = {}
	for _ = 1, any_new_result1.data.magazines do
		table.insert(any_new_result1.magazines, {
			rounds = any_new_result1.data.magSize;
		})
	end
	any_new_result1.equippedMagazine = 1
	any_new_result1.vingette = script.aim:Clone()
	any_new_result1.vingette.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	return any_new_result1
end
function module_upvr.fillMagazine(arg1) -- Line 86
	local var19
	for i_2, v in pairs(arg1.magazines) do
		if 0 < v.rounds then
			var19 = i_2
		end
		if v.rounds <= 0 and #arg1.magazines ~= 1 then
			table.remove(arg1.magazines, i_2)
		end
	end
	if var19 then
		arg1.equippedMagazine = var19
	end
	arg1:updateUI("reload")
end
function module_upvr.addMagazine(arg1) -- Line 149
	table.insert(arg1.magazines, {
		rounds = arg1.data.magSize;
	})
	arg1:updateUI("equip")
end
function module_upvr.updateUI(arg1, arg2) -- Line 154
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr_3 (readonly)
	]]
	local tbl = {
		magazines = arg1.magazines;
		equippedMagazine = arg1.equippedMagazine;
		magSize = arg1.data.magSize;
	}
	tbl.action = arg2
	tbl.multi = arg1.data.visualMagMultiplier
	any_import_result1_upvr_3.update(tbl)
end
function module_upvr.updateMagazine(arg1, arg2, arg3) -- Line 159
	arg1.magazines[arg2].rounds = arg3
	if arg3 <= 0 then
		arg1.boltAnimation = true
	end
	arg1:updateUI()
	arg1:debug("magazine", arg1.magazines[arg2].rounds)
end
function module_upvr.ejectShell(arg1) -- Line 170
	local clone = game.ReplicatedStorage.resources.misc.casing:Clone()
	local WorldCFrame = arg1.instance.Base.Casing.WorldCFrame
	clone.CFrame = WorldCFrame
	clone.AssemblyLinearVelocity = -WorldCFrame.LookVector * 50 + Vector3.new(0, math.random(0, 12), 0)
	clone.AssemblyAngularVelocity = Vector3.new(math.random(-100, 150), 0, math.random(-250, 70))
	arg1.instance.Base.Casing.smoke:Emit(3)
	clone.Transparency = 1
	clone.Parent = workspace.ignore
	clone.bullet_case:Play()
	clone.Transparency = 0
	game.Debris:AddItem(clone, 5)
end
local any_import_result1_upvr_8 = any_import_result1.import("IlllIIIlIllIlIIlIIIllIllIlIllllllIIIllIIllIIlIIlIllIlIlIllII")
local any_import_result1_upvr_6 = any_import_result1.import("lIIlllIIlIllIIIIllIlIlIIllIIlIlIlIlIlIllIlllllIIIlIlIIIllIIl")
local any_import_result1_upvr_4 = any_import_result1.import("IIIlIlIllIlIllllIlIIlIIIIlIIIIlIllIllIlIIllIIIIllIllIIIIllll")
function module_upvr.fire(arg1, arg2) -- Line 196
	--[[ Upvalues[3]:
		[1]: any_import_result1_upvr_8 (readonly)
		[2]: any_import_result1_upvr_6 (readonly)
		[3]: any_import_result1_upvr_4 (readonly)
	]]
	if arg1.magazines[arg1.equippedMagazine].rounds - 1 < 0 then
		arg1:playSound("empty", arg1.instance.Handle.FirePoint)
		return true
	end
	arg1:updateMagazine(arg1.equippedMagazine, arg1.magazines[arg1.equippedMagazine].rounds - 1)
	arg1:sprint(false)
	if arg1.data.boltBackOnEmptyMag then
		if arg1.magazines[arg1.equippedMagazine].rounds == 0 then
			arg1.boltBack = true
			any_import_result1_upvr_8.new(arg1.name, arg1.instance, nil, true)
		else
			any_import_result1_upvr_8.new(arg1.name, arg1.instance)
		end
	else
		any_import_result1_upvr_8.new(arg1.name, arg1.instance)
	end
	if arg1.characterAnimations.recoil then
		arg1.characterAnimations.recoil:Play()
	end
	local var27_upvw = -0.15
	if arg1.data.kickback then
		var27_upvw = arg1.data.kickback
	end
	coroutine.wrap(function() -- Line 232
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var27_upvw (read and write)
		]]
		if arg1.name == "pkm" or arg1.name == "rpd" then
			arg1.animations.chain:Play(0)
		end
		game:GetService("TweenService"):Create(game.ReplicatedStorage.Kickback, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Value = var27_upvw;
		}):Play()
		wait(0.05)
		game:GetService("TweenService"):Create(game.ReplicatedStorage.Kickback, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Value = 0;
		}):Play()
	end)()
	any_import_result1_upvr_6.new(arg1.data.recoil)
	any_import_result1_upvr_4.new(arg1)
end
function module_upvr.setReloading(arg1, arg2) -- Line 277
	arg1.reloading = arg2
	arg1:debug("reloading", arg1.reloading)
end
function module_upvr.reload(arg1) -- Line 282
	if arg1.reloading == true then
	else
		if #arg1.magazines == 1 then return end
		arg1:updateUI("reload")
		arg1:sprint(false)
		arg1:aim(false)
		arg1:setReloading(true)
		arg1:disconnectFire()
		arg1.animations.reload:Play()
	end
end
function module_upvr.nextFireMode(arg1) -- Line 316
	local var31 = arg1.fireMode + 1
	if not arg1.data.fireModes[var31] then
		var31 = 1
	end
	return var31
end
local any_import_result1_3_upvr = any_import_result1.import("IlIlllIIlIlIIIlIlIlIIIllIIllIllllIIIlIllIIIIIlllIIIlllIlllll")
function module_upvr.changeFireMode(arg1, arg2) -- Line 324
	--[[ Upvalues[1]:
		[1]: any_import_result1_3_upvr (readonly)
	]]
	if not arg2 then
	end
	arg1.fireMode = arg1:nextFireMode()
	any_import_result1_3_upvr.new(arg1.data.fireModes[arg1.fireMode])
	arg1:playSound("fireMode", arg1.instance.Handle.FirePoint)
	arg1:debug("fireMode", arg1.fireMode)
	arg1:debug("fireModeName", arg1.data.fireModes[arg1.fireMode])
end
function module_upvr.disconnectFire(arg1) -- Line 335
	if arg1.fireConnection then
		arg1.fireConnection:Disconnect()
		arg1.fireConnection = nil
	end
	arg1:debug("fireConnection", nil)
end
local RunService_upvr = game:GetService("RunService")
function module_upvr.input(arg1, arg2, arg3, arg4, arg5) -- Line 343
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: tbl_upvr (readonly)
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
function module_upvr.setState(arg1, arg2) -- Line 425
	arg1:setWalkspeed(arg1.data.states[arg2].walkspeed)
	arg1:setFov(arg1.data.states[arg2].fov)
	arg1.state = arg2
	arg1:debug("state", arg1.state)
end
function module_upvr.setVingetteVisible(arg1, arg2) -- Line 434
	for _, v_2 in pairs(arg1.vingette:GetChildren()) do
		local tbl_2 = {}
		tbl_2.ImageTransparency = arg2
		game:GetService("TweenService"):Create(v_2, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), tbl_2):Play()
	end
end
function module_upvr.sprint(arg1, arg2) -- Line 440
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
function module_upvr.aim(arg1, arg2) -- Line 465
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 35. Error Block 42 start (CF ANALYSIS FAILED)
	for _, v_3 in pairs(arg1.instance:GetChildren()) do
		if v_3.Name == "scope" then
			v_3.Transparency = 1
		elseif v_3.Name == "aimscope" then
			v_3.Transparency = 0
		elseif v_3.Name == "main" then
			v_3.Transparency = 1
			v_3.Decal.Transparency = 0
		end
	end
	do
		return
	end
	-- KONSTANTERROR: [55] 35. Error Block 42 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [95] 60. Error Block 43 start (CF ANALYSIS FAILED)
	arg1:setSensitivity("default")
	any_import_result1_upvr_2.visible()
	arg1:setVingetteVisible(1)
	arg1:setState("idle")
	arg1.characterAnimations.aim:Stop()
	arg1.animations.aim:Stop()
	if arg1.data.scope == true then
		for _, v_4 in pairs(arg1.instance:GetChildren()) do
			if v_4.Name == "scope" then
				v_4.Transparency = 0
			elseif v_4.Name == "aimscope" then
				v_4.Transparency = 1
			elseif v_4.Name == "main" then
				v_4.Transparency = 1
				v_4.Decal.Transparency = 1
			end
		end
	end
	-- KONSTANTERROR: [95] 60. Error Block 43 end (CF ANALYSIS FAILED)
end
function module_upvr.initDebug(arg1) -- Line 525
	arg1:debug("name", arg1.name)
	arg1:debug("fireMode", arg1.fireMode)
	arg1:debug("fireModeName", arg1.data.fireModes[arg1.fireMode])
	arg1:debug("lastFire", arg1.lastFire)
	arg1:debug("fireConnection", nil)
	arg1:debug("state", arg1.state)
	arg1:debug("magazine", arg1.magazine)
	arg1:debug("reloading", arg1.reloading)
	arg1:debug("crouching", arg1.crouching)
end
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr.unbind(arg1) -- Line 537
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	for _, v_5 in pairs(arg1.data.bindableActions) do
		ContextActionService_upvr:UnbindAction(v_5.action)
	end
end
function module_upvr.destroyLocal(arg1) -- Line 543
	--[[ Upvalues[3]:
		[1]: any_import_result1_upvr_3 (readonly)
		[2]: any_import_result1_upvr (readonly)
		[3]: any_import_result1_upvr_2 (readonly)
	]]
	if arg1.fireConnection then
		arg1:disconnectFire()
	end
	any_import_result1_upvr_3.destroy()
	any_import_result1_upvr.remove()
	arg1:setVingetteVisible(1)
	arg1:unbind()
	arg1:setSensitivity("default")
	any_import_result1_upvr_2.remove()
end
local any_import_result1_upvr_5 = any_import_result1.import("IIlIIIllIIIlllllIIllIlIIIllIIIIIlllIIllIllllIIlIlIllllllIIll")
local any_import_result1_2_upvr = any_import_result1.import("IlllIIIIIlllIlIllIlIllIIlllIlIIllIlIIIllIllIIlIIllIlllIIlIII")
function module_upvr.initLocal(arg1, arg2) -- Line 559
	--[[ Upvalues[4]:
		[1]: any_import_result1_upvr_2 (readonly)
		[2]: any_import_result1_upvr_5 (readonly)
		[3]: any_import_result1_upvr (readonly)
		[4]: any_import_result1_2_upvr (readonly)
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
	any_import_result1_upvr_2.new(arg1.instance.AimPoint)
	if any_import_result1_upvr_5() == "mobile" then
		arg1.connections.mobileBinds = game.ReplicatedStorage.network.mobileBind.Event:Connect(function(arg1_2, arg2_2, arg3) -- Line 580
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local pairs_result1_4, pairs_result2, pairs_result3 = pairs(arg1.data.bindableActions)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [72] 50. Error Block 19 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [72] 50. Error Block 19 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [9] 7. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [72.8]
			-- KONSTANTERROR: [9] 7. Error Block 2 end (CF ANALYSIS FAILED)
		end)
		any_import_result1_upvr.new(arg1.data.bindableActions)
	end
	arg1.connections["bolt-reset"] = arg1.animations.reload:GetMarkerReachedSignal("bolt_reset"):Connect(function() -- Line 628
		--[[ Upvalues[2]:
			[1]: any_import_result1_2_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		any_import_result1_2_upvr.play(arg1.name..".bolt2")
		game:GetService("TweenService"):Create(arg1.instance.Bolt.Motor6D, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			C0 = arg1.data.boltPositions.viewModel[2];
		}):Play()
	end)
	arg1.connections["bolt-back"] = arg1.animations.reload:GetMarkerReachedSignal("bolt_back"):Connect(function() -- Line 638
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		game:GetService("TweenService"):Create(arg1.instance.Bolt.Motor6D, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			C0 = arg1.data.boltPositions.viewModel[1];
		}):Play()
	end)
	arg1.connections["reload-mag-in"] = arg1.animations.reload:GetMarkerReachedSignal("mag_in"):Connect(function() -- Line 648
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:fillMagazine()
		arg1:playSound("magin", arg1.instance.Handle.FirePoint)
	end)
	arg1.connections["reload-mag-out"] = arg1.animations.reload:GetMarkerReachedSignal("mag_out"):Connect(function() -- Line 653
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:playSound("magout", arg1.instance.Handle.FirePoint)
	end)
	arg1.connections["reload-end"] = arg1.animations.reload:GetMarkerReachedSignal("end"):Connect(function() -- Line 658
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_import_result1_2_upvr (copied, readonly)
		]]
		if arg1.data.boltBackOnEmptyMag == true then
			arg1:setReloading(false)
			arg1.animations.reload:Stop()
			if arg1.data.autoBoltBack == nil and arg1.boltBack == true then
				arg1.boltBack = nil
				any_import_result1_2_upvr.play(arg1.name..".bolt2")
			end
			game:GetService("TweenService"):Create(arg1.instance.Bolt.Motor6D, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
				C0 = arg1.data.boltPositions.viewModel[2];
			}):Play()
		else
			if arg1.boltAnimation == true then
				arg1.boltAnimation = false
				arg1.animations.reload:Stop()
				local var73_upvw
				var73_upvw = arg1.animations.bolt.Ended:Connect(function() -- Line 697
					--[[ Upvalues[2]:
						[1]: var73_upvw (read and write)
						[2]: arg1 (copied, readonly)
					]]
					var73_upvw:Disconnect()
					arg1:setReloading(false)
				end)
				arg1.animations.bolt:Play()
				return
			end
			arg1:setReloading(false)
			arg1.animations.reload:Stop()
		end
	end)
	arg1.connections["bolt-end"] = arg1.animations.bolt:GetMarkerReachedSignal("end"):Connect(function() -- Line 714
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.animations.bolt:Stop()
	end)
	arg1.connections.playSound = arg1.animations.reload:GetMarkerReachedSignal("play_sound"):Connect(function(arg1_3) -- Line 718
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:playSound(arg1_3, arg1.instance.Handle.FirePoint)
	end)
	arg1.connections.bolt1 = arg1.animations.bolt:GetMarkerReachedSignal("bolt_pull"):Connect(function() -- Line 722
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:playSound("bolt1", arg1.instance.Handle.FirePoint)
	end)
	arg1.connections.bolt2 = arg1.animations.bolt:GetMarkerReachedSignal("bolt_release"):Connect(function() -- Line 726
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:playSound("bolt2", arg1.instance.Handle.FirePoint)
	end)
	arg1.connections.chainReload = arg1.animations.reload:GetMarkerReachedSignal("chain"):Connect(function(arg1_4) -- Line 730
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var87
		if arg1_4 == "false" then
			var87 = 1
		end
		for _, v_6 in pairs(arg1.instance:GetChildren()) do
			if v_6:IsA("Model") and tonumber(v_6.Name) or v_6.Name == "chamberRound" then
				for _, v_7 in pairs(v_6:GetChildren()) do
					if v_7:IsA("BasePart") then
						v_7.Transparency = var87
					end
				end
			end
		end
	end)
end
return module_upvr