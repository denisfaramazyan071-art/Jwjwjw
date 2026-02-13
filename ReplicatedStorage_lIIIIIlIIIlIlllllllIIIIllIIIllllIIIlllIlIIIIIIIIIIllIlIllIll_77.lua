-- Path: ReplicatedStorage.lIIIIIlIIIlIlllllllIIIIllIIIllllIIIlllIlIIIIIIIIIIllIlIllIll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:54
-- Luau version 6, Types version 3
-- Time taken: 0.011702 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local any_import_result1_upvr_5 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("lIIlIIIlllllIllIIllllIllIlIIIIlIIIIIlllIIIIllIlIllIlIlIIlIII")
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("lIlIllIIllIIIIIllIlIllIIIlllIlllIIlIlllllllIIlllIllllIIllIll")
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IlllIIIIIlllIlIllIlIllIIlllIlIIllIlIIIllIllIIlIIllIlllIIlIII")
local any_import_result1_upvr_3 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llIllIIlIIlIIIIllIIllIIlIIlllIIIIIIIIIIllIllIlIllllIllIllIll")
local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.iscrouching = false
local any_import_result1_upvr_6 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IIIIlIIllIlIlIllIIIlIlllIlIlIIllllIllIlIIlIllIIIIlIIIIIlIlII")
function module_upvr.new(arg1) -- Line 22
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr_6 (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.name = arg1
	setmetatable_result1.animations = {}
	setmetatable_result1.characterAnimations = {}
	setmetatable_result1.viewModel = workspace.CurrentCamera:WaitForChild("ViewModel", 999999)
	setmetatable_result1.character = game.Players.LocalPlayer.Character
	setmetatable_result1.humanoid = setmetatable_result1.character:WaitForChild("Humanoid", 9999999)
	setmetatable_result1.data = any_import_result1_upvr_6.items[arg1]
	setmetatable_result1.instance = nil
	setmetatable_result1.connections = {}
	setmetatable_result1:init()
	return setmetatable_result1
end
function module_upvr.loadAnimations(arg1) -- Line 42
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr_5 (readonly)
	]]
	for i, _ in pairs(arg1.data.animations) do
		arg1.animations[i] = arg1.viewModel.AnimationController.Animator:LoadAnimation(any_import_result1_upvr_5.getAnimationFromData(arg1.data, i))
	end
	arg1.animations.pullout = arg1.viewModel.AnimationController.Animator:LoadAnimation(game.ReplicatedStorage:WaitForChild("animations"):WaitForChild("pullout"))
	for i_2, _ in pairs(arg1.data.characterAnimations) do
		arg1.characterAnimations[i_2] = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):WaitForChild("Animator"):LoadAnimation(any_import_result1_upvr_5.getCharacterAnimationFromData(arg1.data, i_2))
	end
	arg1.characterAnimations.crouch = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):WaitForChild("Animator"):LoadAnimation(game.ReplicatedStorage:WaitForChild("animations"):WaitForChild("crouch"))
end
function module_upvr.init(arg1) -- Line 61
	arg1:loadAnimations()
end
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr.createModel(arg1) -- Line 68
	--[[ Upvalues[6]:
		[1]: any_import_result1_upvr_2 (readonly)
		[2]: any_import_result1_upvr_5 (readonly)
		[3]: module_upvr (readonly)
		[4]: any_import_result1_upvr (readonly)
		[5]: any_import_result1_upvr_3 (readonly)
		[6]: ContextActionService_upvr (readonly)
	]]
	any_import_result1_upvr_2.clear()
	local clone = any_import_result1_upvr_5.models[arg1.name]:Clone()
	arg1.viewModel.PrimaryPart.Handle.Part1 = clone.PrimaryPart
	arg1.instance = clone
	local Handle = arg1.viewModel:WaitForChild("HRP").Handle
	Handle.Part1 = arg1.instance.PrimaryPart
	Handle.C1 = arg1.data.rotations.viewModel
	if arg1.instance:FindFirstChild("LeftHandHandle") then
		arg1.instance:FindFirstChild("LeftHandHandle").Motor6D.Part0 = arg1.viewModel.HRP
		arg1.instance:FindFirstChild("LeftHandHandle").Motor6D.C0 = CFrame.new(0, 0, 10)
	end
	clone.Parent = arg1.viewModel.Model
	for _, v_3 in pairs(arg1.viewModel:GetDescendants()) do
		if v_3:IsA("BasePart") then
			v_3.CastShadow = false
		end
	end
	arg1:initLocal("Ill")
	for _, v_4 in pairs(arg1.viewModel.AnimationController.Animator:GetPlayingAnimationTracks()) do
		v_4:Stop(0)
	end
	arg1.animations.idle:Play(0)
	game.ReplicatedStorage.Kickback.Value = -10
	game:GetService("TweenService"):Create(game.ReplicatedStorage.Kickback, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Value = 0;
	}):Play()
	arg1.characterAnimations.idle:Play()
	arg1:crouch(module_upvr.iscrouching)
	any_import_result1_upvr.play("equip")
	for _, v_5_upvr in pairs(arg1.data.bindableActions) do
		local bind_upvw = v_5_upvr.bind
		if any_import_result1_upvr_3.data[v_5_upvr.bind] then
			pcall(function() -- Line 150
				--[[ Upvalues[3]:
					[1]: bind_upvw (read and write)
					[2]: any_import_result1_upvr_3 (copied, readonly)
					[3]: v_5_upvr (readonly)
				]]
				bind_upvw = Enum.KeyCode[any_import_result1_upvr_3.data[v_5_upvr.bind]]
			end)
			pcall(function() -- Line 153
				--[[ Upvalues[3]:
					[1]: bind_upvw (read and write)
					[2]: any_import_result1_upvr_3 (copied, readonly)
					[3]: v_5_upvr (readonly)
				]]
				bind_upvw = Enum.UserInputType[any_import_result1_upvr_3.data[v_5_upvr.bind]]
			end)
		end
		ContextActionService_upvr:BindAction(v_5_upvr.action, function(arg1_2, arg2, arg3) -- Line 160
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:input(arg1_2, arg2, arg3, "Ill")
			arg1:globalinput(arg1_2, arg2, arg3, "Ill")
		end, false, bind_upvw)
	end
	arg1:setSensitivity("default")
end
local any_import_result1_upvr_4 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IIlIIIllIIIlllllIIllIlIIIllIIIIIlllIIllIllllIIlIlIllllllIIll")
function module_upvr.globalinput(arg1, arg2, arg3, arg4) -- Line 175
	--[[ Upvalues[3]:
		[1]: any_import_result1_upvr_4 (readonly)
		[2]: any_import_result1_upvr_3 (readonly)
		[3]: module_upvr (readonly)
	]]
	if arg3 == Enum.UserInputState.Cancel then
	elseif arg2 == "crouch" then
		if any_import_result1_upvr_4() == "mobile" then
			if arg3 == Enum.UserInputState.Begin then
				arg1:crouch(true)
			else
				arg1:crouch(false)
			end
		end
		if any_import_result1_upvr_3.data.crouchtype == "Hold" then
			if arg3 == Enum.UserInputState.Begin then
				arg1:crouch(true)
			else
				arg1:crouch(false)
			end
		end
		if any_import_result1_upvr_3.data.crouchtype == "Toggle" and arg3 == Enum.UserInputState.Begin then
			arg1:crouch(not module_upvr.iscrouching)
		end
	end
end
local any_import_result1_upvr_7 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IlIlllIIlIlIIIlIlIlIIIllIIllIllllIIIlIllIIIIIlllIIIlllIlllll")
function module_upvr.destroyModel(arg1) -- Line 214
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr_7 (readonly)
	]]
	any_import_result1_upvr_7.clear()
	arg1:destroyLocal()
	for _, v_6 in pairs(arg1.instance:GetDescendants()) do
		if v_6:IsA("Attachment") then
			v_6.Parent = workspace.Terrain
			v_6.WorldPosition = v_6.WorldPosition
			game.Debris:AddItem(v_6, 10)
		end
	end
	arg1.instance:Destroy()
	for i_7, v_7 in pairs(arg1.connections) do
		v_7:Disconnect()
		arg1.connections[i_7] = nil
	end
	for i_8, _ in pairs(arg1.animations) do
		arg1.animations[i_8]:Stop(0)
	end
	for i_9, _ in pairs(arg1.characterAnimations) do
		arg1.characterAnimations[i_9]:Stop()
	end
end
function module_upvr.crouch(arg1, arg2) -- Line 246
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.iscrouching = arg2
	arg1.crouching = arg2
	arg1:debug("crouching", arg2)
	if arg2 == true then
		if arg1.animations.crouch then
			arg1.animations.crouch:Play()
			arg1.animations.idle:Stop()
		end
		arg1:sprint(false)
		arg1.characterAnimations.crouch:Play()
		game:GetService("TweenService"):Create(arg1.humanoid, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			HipHeight = -1;
		}):Play()
		arg1.humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
	else
		if arg1.animations.crouch then
			arg1.animations.crouch:Stop()
			arg1.animations.idle:Play()
		end
		arg1.characterAnimations.crouch:Stop()
		game:GetService("TweenService"):Create(arg1.humanoid, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			HipHeight = 0;
		}):Play()
		arg1.humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
		arg1:setWalkspeed(arg1.data.states[arg1.state].walkspeed)
	end
end
local UserInputService_upvr = game:GetService("UserInputService")
function module_upvr.setSensitivity(arg1, arg2) -- Line 293
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr_3 (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	local var67
	if arg2 == "aim" then
		var67 = "aimsensitivity"
	elseif arg2 == "default" then
		var67 = "sensitivity"
	end
	local data = any_import_result1_upvr_3.data
	if not data then
		_G.mobileSensitivity = 0.75
		UserInputService_upvr.MouseDeltaSensitivity = 1
	else
		_G.mobileSensitivity = data[var67] * 1.1
		UserInputService_upvr.MouseDeltaSensitivity = data[var67] * 2
	end
end
function module_upvr.setWalkspeed(arg1, arg2) -- Line 317
	local var69
	if arg1.crouching == true then
		var69 *= 0.7
	end
	game:GetService("TweenService"):Create(arg1.humanoid, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
		WalkSpeed = var69;
	}):Play()
end
function module_upvr.setFov(arg1, arg2) -- Line 325
	local tbl = {}
	tbl.FieldOfView = arg2
	game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), tbl):Play()
end
function module_upvr.playSound(arg1, arg2, arg3) -- Line 332
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	any_import_result1_upvr.playWorldParent(arg1.name..'.'..arg2, arg3)
end
function module_upvr.debug(arg1, arg2, arg3) -- Line 337
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr_2 (readonly)
	]]
	if arg3 == nil then
	end
	any_import_result1_upvr_2.updateVar(arg2, "nil")
end
return module_upvr