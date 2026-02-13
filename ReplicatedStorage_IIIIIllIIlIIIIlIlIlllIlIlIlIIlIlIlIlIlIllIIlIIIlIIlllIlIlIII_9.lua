-- Path: ReplicatedStorage.IIIIIllIIlIIIIlIlIlllIlIlIlIIlIlIlIlIlIllIIlIIIlIIlllIlIlIII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:00:54
-- Luau version 6, Types version 3
-- Time taken: 0.001638 seconds

local module_upvr = {}
local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IlIllllllIIIIIllllIIlllllIlIlIlIIllllIlIllIIIlIllIlIlllIIIll")
function module_upvr.new(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	local RaycastParams_new_result1 = RaycastParams.new()
	RaycastParams_new_result1.FilterDescendantsInstances = {workspace.ignore}
	RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
	RaycastParams_new_result1.IgnoreWater = false
	local workspace_Raycast_result1 = workspace:Raycast(arg1, (CFrame.new(arg1) * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)))).LookVector * 70, RaycastParams_new_result1)
	if workspace_Raycast_result1 then
		any_import_result1_upvr.bullet(workspace_Raycast_result1.Instance, workspace_Raycast_result1.Position, workspace_Raycast_result1.Normal, workspace_Raycast_result1.Material)
	end
end
function module_upvr.explosion(arg1) -- Line 40
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _ = 1, 25 do
		module_upvr.new(arg1)
	end
end
return module_upvr