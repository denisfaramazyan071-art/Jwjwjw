-- Path: ReplicatedStorage.llIlllllllIlllllIIlllllIIllIlIIIIlIIlIIIIllIlIllIIlllllIllll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:38
-- Luau version 6, Types version 3
-- Time taken: 0.014949 seconds

local RunService_upvr = game:GetService("RunService")
local any_import_result1 = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI")
local any_import_result1_upvr_2 = any_import_result1.import("lIIIIIlIIIlIlllllllIIIIllIIIllllIIIlllIlIIIIIIIIIIllIlIllIll")
local any_import_result1_upvr = any_import_result1.import("llIlIlIIIIlIlIlllIlIlIllllIIlllIlIIlllllIlIIlIIlIlIlllIllllI")
local any_import_result1_upvr_4 = any_import_result1.import("lllIIllllIlIlIIllIIIIIIIlllIIllIIllIIIIIlIIllllIIIlllIIIIlII")
local tbl_upvr = {
	[Enum.UserInputState.Begin] = true;
	[Enum.UserInputState.End] = false;
}
local module_upvr = {}
module_upvr.__index = module_upvr
setmetatable(module_upvr, any_import_result1_upvr_2)
_G.droneDelay = 0
function module_upvr.new(arg1) -- Line 40
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_new_result1 = any_import_result1_upvr_2.new(arg1)
	setmetatable(any_new_result1, module_upvr)
	any_new_result1.state = "idle"
	any_new_result1.crouching = false
	any_new_result1.validCFrame = nil
	any_new_result1.updateConnection = nil
	any_new_result1.timerConnection = nil
	if 70 < os.time() - _G.droneDelay then
		any_new_result1.amount = any_new_result1.data.buildables
	else
		any_new_result1.amount = 0
		any_new_result1.addDroneTag = true
	end
	any_new_result1.canBuild = true
	return any_new_result1
end
function module_upvr.updateUI(arg1, arg2) -- Line 71
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	any_import_result1_upvr.update(arg1.amount, arg2)
end
function module_upvr.cleanUp(arg1) -- Line 77
	if arg1.updateConnection then
		arg1.updateConnection:Disconnect()
		arg1.updateConnection = nil
	end
	if arg1.timerConnection then
		arg1.timerConnection:Disconnect()
		arg1.timerConnection = nil
	end
	workspace:WaitForChild("buildables"):ClearAllChildren()
end
local tick_result1_upvw = tick()
function module_upvr.timerUpdate(arg1) -- Line 95
	--[[ Upvalues[1]:
		[1]: tick_result1_upvw (read and write)
	]]
	if 1 <= tick() - tick_result1_upvw then
		tick_result1_upvw = tick()
		if (70) - (os.time() - _G.droneDelay) <= 0 then
			arg1.addDroneTag = nil
			if arg1.timerConnection then
				arg1.timerConnection:Disconnect()
				arg1.timerConnection = nil
			end
			arg1.amount = 2
			arg1:updateUI()
			return
		end
		arg1:updateUI((70) - (os.time() - _G.droneDelay))
	end
end
function module_upvr.connect(arg1) -- Line 120
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg1.updateConnection then
		arg1.updateConnection:Disconnect()
		arg1.updateConnection = nil
	end
	local _1_upvr = workspace:WaitForChild("buildables"):GetChildren()[1]
	arg1.updateConnection = RunService_upvr.RenderStepped:Connect(function() -- Line 139
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: _1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local CFrame = arg1.instance.AimPoint.CFrame
		local Position = CFrame.Position
		local var14 = CFrame.LookVector * 10
		local RaycastParams_new_result1_2 = RaycastParams.new()
		RaycastParams_new_result1_2.FilterDescendantsInstances = {game.Players.LocalPlayer.Character, workspace.CurrentCamera:WaitForChild("ViewModel"), workspace.ignore}
		RaycastParams_new_result1_2.FilterType = Enum.RaycastFilterType.Exclude
		RaycastParams_new_result1_2.IgnoreWater = true
		local workspace_Raycast_result1 = workspace:Raycast(Position, var14, RaycastParams_new_result1_2)
		local var18
		local var19
		if workspace_Raycast_result1 then
			var18 = workspace_Raycast_result1.Position
			var19 = workspace_Raycast_result1.Normal
		else
			var18 = CFrame.new(Position + var14).Position
			var19 = Vector3.new(0, 1, 0)
		end
		local cframe = CFrame.new(var18, var18 + var19)
		if var19:Dot(Vector3.new(0, 1, 0)) < 0.93 then
		end
		if arg1.amount <= 0 then
		end
		if workspace:WaitForChild("placeables"):FindFirstChild(game.Players.LocalPlayer.UserId..'-'..arg1.name) then
		end
		local RaycastParams_new_result1 = RaycastParams.new()
		RaycastParams_new_result1.FilterDescendantsInstances = {game.Players.LocalPlayer.Character, workspace.CurrentCamera:WaitForChild("ViewModel"), workspace.ignore}
		RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
		RaycastParams_new_result1.IgnoreWater = true
		if workspace:Raycast(cframe.Position, Vector3.new(0, 15, 0), RaycastParams_new_result1) then
		end
		if "Something above is in the way" == "" then
			arg1.validCFrame = cframe
			_1_upvr:FindFirstChildOfClass("Highlight").FillColor = Color3.fromRGB(164, 255, 103)
		else
			arg1.validCFrame = nil
			_1_upvr:FindFirstChildOfClass("Highlight").FillColor = Color3.fromRGB(255, 64, 64)
		end
		_1_upvr:SetPrimaryPartCFrame(cframe)
	end)
end
function module_upvr.createPlaceholder(arg1) -- Line 246
	workspace:WaitForChild("buildables"):ClearAllChildren()
	local clone = game.ReplicatedStorage.resources.items.character:FindFirstChild(arg1.name):Clone()
	for _, v in pairs(clone:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Anchored = true
			v.CanCollide = false
			v.CanQuery = false
			v.CanTouch = false
		end
	end
	clone.Parent = workspace:WaitForChild("buildables")
	local Highlight = Instance.new("Highlight")
	Highlight.Name = "buildableHighlight"
	Highlight.Parent = clone
	arg1:connect()
end
function module_upvr.place(arg1) -- Line 273
	if 0 < arg1.amount and arg1.validCFrame and arg1.canBuild == true then
		arg1.canBuild = false
		pcall(function() -- Line 279
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var31 = arg1
			var31.amount -= 1
			arg1:updateUI()
			game.ReplicatedStorage.network.buildItem:InvokeServer(arg1.name, arg1.validCFrame)
			_G.droneDelay = os.time()
		end)
		arg1.canBuild = true
	end
end
function module_upvr.input(arg1, arg2, arg3, arg4) -- Line 294
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
function module_upvr.setState(arg1, arg2) -- Line 314
	arg1:setWalkspeed(arg1.data.states[arg2].walkspeed)
	arg1:setFov(arg1.data.states[arg2].fov)
	arg1.state = arg2
	arg1:debug("state", arg1.state)
end
function module_upvr.sprint(arg1, arg2) -- Line 325
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
function module_upvr.initDebug(arg1) -- Line 349
	arg1:debug("name", arg1.name)
	arg1:debug("state", arg1.state)
	arg1:debug("crouching", arg1.crouching)
end
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr.unbind(arg1) -- Line 355
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	for _, v_2 in pairs(arg1.data.bindableActions) do
		ContextActionService_upvr:UnbindAction(v_2.action)
	end
end
local any_import_result1_upvr_3 = any_import_result1.import("IlIlIlIIIIIlIIIlIlIlIIIIlIllIllIIIIIIlIIlIllIlIlIIIlIlllIIll")
function module_upvr.destroyLocal(arg1) -- Line 361
	--[[ Upvalues[3]:
		[1]: any_import_result1_upvr (readonly)
		[2]: any_import_result1_upvr_4 (readonly)
		[3]: any_import_result1_upvr_3 (readonly)
	]]
	arg1:cleanUp()
	any_import_result1_upvr.destroy()
	any_import_result1_upvr_4.remove()
	arg1:unbind()
	arg1:setSensitivity("default")
	any_import_result1_upvr_3.remove()
end
local any_import_result1_upvr_5 = any_import_result1.import("IIlIIIllIIIlllllIIllIlIIIllIIIIIlllIIllIllllIIlIlIllllllIIll")
function module_upvr.initLocal(arg1) -- Line 376
	--[[ Upvalues[3]:
		[1]: RunService_upvr (readonly)
		[2]: any_import_result1_upvr_5 (readonly)
		[3]: any_import_result1_upvr_4 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	if arg1.timerConnection then
		arg1.timerConnection:Disconnect()
		arg1.timerConnection = nil
	end
	if arg1.addDroneTag == true then
		arg1.timerConnection = RunService_upvr.RenderStepped:Connect(function() -- Line 384
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:timerUpdate()
		end)
	end
	arg1:initDebug()
	if arg1.addDroneTag ~= true then
		arg1:updateUI()
		-- KONSTANTWARNING: GOTO [64] #43
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 30. Error Block 24 start (CF ANALYSIS FAILED)
	if (70) - (os.time() - _G.droneDelay) <= 0 then
		arg1:updateUI()
	else
		arg1:updateUI((70) - (os.time() - _G.droneDelay))
	end
	arg1:createPlaceholder()
	arg1:setState("idle")
	if any_import_result1_upvr_5() == "mobile" then
		arg1.connections.mobileBinds = game.ReplicatedStorage.network.mobileBind.Event:Connect(function(arg1_2, arg2, arg3) -- Line 417
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			for _, v_3 in pairs(arg1.data.bindableActions) do
				local var49
				if v_3.action == arg1_2 then
					if arg1_2 == "sprint" then
						if arg1.state == "sprint" then
							var49 = Enum.UserInputState.End
						else
							var49 = Enum.UserInputState.Begin
						end
					elseif arg1_2 == "crouch" then
						if arg1.crouching == true then
							var49 = Enum.UserInputState.End
						else
							var49 = Enum.UserInputState.Begin
						end
					end
					arg1:globalinput(arg1_2, var49, arg3)
					arg1:input(arg1_2, var49, arg3)
				end
			end
		end)
		any_import_result1_upvr_4.new(arg1.data.bindableActions)
	end
	-- KONSTANTERROR: [45] 30. Error Block 24 end (CF ANALYSIS FAILED)
end
return module_upvr