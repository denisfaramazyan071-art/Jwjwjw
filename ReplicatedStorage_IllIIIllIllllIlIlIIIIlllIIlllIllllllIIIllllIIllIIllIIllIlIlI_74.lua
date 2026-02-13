-- Path: ReplicatedStorage.IllIIIllIllllIlIlIIIIlllIIlllIllllllIIIllllIIllIIllIIllIlIlI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:51
-- Luau version 6, Types version 3
-- Time taken: 0.002260 seconds

local CollectionService_upvr = game:GetService("CollectionService")
local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("lllIllIllIlIIIlIllIlIIIIlIllIIIIIlllIlIlIIIlllIllIIIlIIlllll")
return function(arg1, arg2) -- Line 9, Named "ragdoll"
	--[[ Upvalues[2]:
		[1]: CollectionService_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	assert(arg2:IsDescendantOf(arg1))
	if CollectionService_upvr:HasTag(arg1, "__Ragdoll_Active") then
	else
		CollectionService_upvr:AddTag(arg1, "__Ragdoll_Active")
		arg2:ChangeState(Enum.HumanoidStateType.Physics)
		for i, v in pairs(any_import_result1_upvr.getAttachments(arg1, arg2.RigType)) do
			local SOME = arg1:FindFirstChild(i)
			if SOME then
				local BallSocketConstraint = Instance.new("BallSocketConstraint")
				BallSocketConstraint.Name = "RagdollBallSocketConstraint"
				BallSocketConstraint.Attachment0 = v.attachment0
				BallSocketConstraint.Attachment1 = v.attachment1
				BallSocketConstraint.LimitsEnabled = true
				BallSocketConstraint.UpperAngle = v.limits.UpperAngle
				BallSocketConstraint.TwistLimitsEnabled = true
				BallSocketConstraint.TwistLowerAngle = v.limits.TwistLowerAngle
				BallSocketConstraint.TwistUpperAngle = v.limits.TwistUpperAngle
				BallSocketConstraint.Parent = SOME
			end
		end
		for _, v_2 in pairs(any_import_result1_upvr.getNoCollisions(arg1, arg2.RigType)) do
			local NoCollisionConstraint = Instance.new("NoCollisionConstraint")
			NoCollisionConstraint.Name = "RagdollNoCollisionConstraint"
			NoCollisionConstraint.Part0 = v_2[1]
			NoCollisionConstraint.Part1 = v_2[2]
			NoCollisionConstraint.Parent = v_2[1]
		end
		for _, v_3 in pairs(arg1:GetDescendants()) do
			if v_3:IsA("Motor6D") then
				v_3:Destroy()
			end
		end
	end
end