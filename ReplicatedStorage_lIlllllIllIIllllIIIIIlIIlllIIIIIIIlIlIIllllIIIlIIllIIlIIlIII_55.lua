-- Path: ReplicatedStorage.lIlllllIllIIllllIIIIIlIIlllIIIIIIIlIlIIllllIIIlIIllIIlIIlIII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:33
-- Luau version 6, Types version 3
-- Time taken: 0.007336 seconds

local module_upvr = {
	attachment = nil;
	droneAudio = nil;
	droneSpeed = nil;
}
local tbl_upvr = {
	[Enum.KeyCode.W] = Vector3.new(0, 0.5, -1);
	[Enum.KeyCode.A] = Vector3.new(-0.4000, 0, 0);
	[Enum.KeyCode.D] = Vector3.new(0.40000, 0, 0);
	[Enum.KeyCode.Q] = Vector3.new(0, -0.5, 0);
	[Enum.KeyCode.E] = Vector3.new(0, 0.5, -0.1000);
}
module_upvr.keyCodeToIsPressedMap = {
	[Enum.KeyCode.W] = false;
	[Enum.KeyCode.A] = false;
	[Enum.KeyCode.Q] = false;
	[Enum.KeyCode.D] = false;
	[Enum.KeyCode.E] = false;
}
module_upvr.keyCodeAudio = {
	[Enum.KeyCode.W] = 0.15;
	[Enum.KeyCode.A] = 0.11;
	[Enum.KeyCode.Q] = -0.2;
	[Enum.KeyCode.D] = 0.11;
	[Enum.KeyCode.E] = 0.3;
}
local function isRelevantInput_upvr(arg1) -- Line 47, Named "isRelevantInput"
	local var8 = true
	if arg1.KeyCode ~= Enum.KeyCode.W then
		var8 = true
		if arg1.KeyCode ~= Enum.KeyCode.A then
			var8 = true
			if arg1.KeyCode ~= Enum.KeyCode.Q then
				var8 = true
				if arg1.KeyCode ~= Enum.KeyCode.D then
					if arg1.KeyCode ~= Enum.KeyCode.E then
						var8 = false
					else
						var8 = true
					end
				end
			end
		end
	end
	return var8
end
local function getDirectionsToProcess_upvr() -- Line 57, Named "getDirectionsToProcess"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	for i, v in pairs(module_upvr.keyCodeToIsPressedMap) do
		if v then
			table.insert({}, tbl_upvr[i])
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function updatePlayback() -- Line 72
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var21
	for i_2, v_2 in pairs(module_upvr.keyCodeAudio) do
		if module_upvr.keyCodeToIsPressedMap[i_2] == true then
			var21 += v_2
		end
	end
	game:GetService("TweenService"):Create(module_upvr.droneAudio, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
		PlaybackSpeed = var21 + 1.8;
	}):Play()
end
local function _(arg1, arg2) -- Line 89, Named "registerKeyPressed"
	--[[ Upvalues[2]:
		[1]: isRelevantInput_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if arg2 or not isRelevantInput_upvr(arg1) then
	else
		module_upvr.keyCodeToIsPressedMap[arg1.KeyCode] = true
		updatePlayback()
	end
end
local function _(arg1, arg2) -- Line 101, Named "unregisterKeyPressed"
	--[[ Upvalues[2]:
		[1]: isRelevantInput_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if arg2 or not isRelevantInput_upvr(arg1) then
	else
		module_upvr.keyCodeToIsPressedMap[arg1.KeyCode] = false
		updatePlayback()
	end
end
function module_upvr.renderStepped(arg1) -- Line 115
	--[[ Upvalues[2]:
		[1]: getDirectionsToProcess_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local WorldPosition = module_upvr.attachment.WorldPosition
	for _, v_3 in ipairs(getDirectionsToProcess_upvr()) do
		WorldPosition += module_upvr.droneSpeed * arg1 * workspace.CurrentCamera.CFrame:VectorToWorldSpace(v_3)
	end
	WorldPosition += module_upvr.droneSpeed * arg1 * Vector3.new(0, -0.0149, 0)
	local _, _, any_ToOrientation_result3 = workspace.CurrentCamera.CFrame:ToOrientation()
	module_upvr.attachment.WorldCFrame = CFrame.lookAt(WorldPosition, WorldPosition + workspace.CurrentCamera.CFrame.LookVector) * CFrame.Angles(0, 0, any_ToOrientation_result3)
end
function module_upvr.InputBegan(...) -- Line 159
	--[[ Upvalues[2]:
		[1]: isRelevantInput_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var35, var36 = ...
	if not var36 then
		if not isRelevantInput_upvr(var35) then return end
		module_upvr.keyCodeToIsPressedMap[var35.KeyCode] = true
		updatePlayback()
	end
end
function module_upvr.InputEnded(...) -- Line 163
	--[[ Upvalues[2]:
		[1]: isRelevantInput_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var37, var38 = ...
	if not var38 then
		if not isRelevantInput_upvr(var37) then return end
		module_upvr.keyCodeToIsPressedMap[var37.KeyCode] = false
		updatePlayback()
	end
end
return module_upvr