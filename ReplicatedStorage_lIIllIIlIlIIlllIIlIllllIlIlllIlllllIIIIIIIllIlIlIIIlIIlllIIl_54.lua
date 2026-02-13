-- Path: ReplicatedStorage.lIIllIIlIlIIlllIIlIllllIlIlllIlllllIIIIIIIllIlIlIIIlIIlllIIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:32
-- Luau version 6, Types version 3
-- Time taken: 0.002166 seconds

return {
	bulletTrajectory = function(arg1, arg2, arg3, arg4) -- Line 4, Named "bulletTrajectory"
		local Position = arg2.Position
		if arg3 == false then
			local var3
		end
		if arg3 == true and arg4 == true then
			var3 = arg2.LookVector * 500
		end
		local RaycastParams_new_result1 = RaycastParams.new()
		RaycastParams_new_result1.FilterDescendantsInstances = {game.Players.LocalPlayer.Character, workspace.CurrentCamera:WaitForChild("ViewModel"), workspace.ignore}
		RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
		RaycastParams_new_result1.IgnoreWater = true
		local workspace_Raycast_result1 = workspace:Raycast(Position, var3, RaycastParams_new_result1)
		local var7
		if workspace_Raycast_result1 then
			var7 = workspace_Raycast_result1.Position
		else
			var7 = CFrame.new(Position + var3).Position
		end
		local var8
		local Position_2 = workspace.CurrentCamera.CFrame.Position
		local workspace_Raycast_result1_2 = workspace:Raycast(Position_2, arg1 - Position_2, RaycastParams_new_result1)
		if workspace_Raycast_result1_2 then
			var8 = workspace_Raycast_result1_2
		end
		return var7, var8
	end;
}