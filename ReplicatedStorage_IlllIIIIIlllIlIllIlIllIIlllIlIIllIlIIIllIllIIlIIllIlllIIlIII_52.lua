-- Path: ReplicatedStorage.IlllIIIIIlllIlIllIlIllIIlllIlIIllIlIIIllIllIIlIIllIlllIIlIII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:31
-- Luau version 6, Types version 3
-- Time taken: 0.003370 seconds

local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("lIIlIIIlllllIllIIllllIllIlIIIIlIIIIIlllIIIIllIlIllIlIlIIlIII")
return {
	play = function(arg1) -- Line 6, Named "play"
		--[[ Upvalues[1]:
			[1]: any_import_result1_upvr (readonly)
		]]
		any_import_result1_upvr.sounds[arg1]:Play()
	end;
	playWorldParent = function(arg1, arg2, arg3, arg4) -- Line 10, Named "playWorldParent"
		--[[ Upvalues[1]:
			[1]: any_import_result1_upvr (readonly)
		]]
		local clone_upvr = any_import_result1_upvr.sounds[arg1]:Clone()
		clone_upvr.Parent = arg2
		if arg3 == true then
			for i, v_upvr in pairs(clone_upvr:GetChildren()) do
				pcall(function() -- Line 18
					--[[ Upvalues[1]:
						[1]: v_upvr (readonly)
					]]
					v_upvr.Enabled = true
				end)
			end
		end
		if arg4 and arg4.PlaybackSpeed then
			i = arg4.PlaybackSpeed
			v_upvr = arg4.PlaybackSpeed
			i = v_upvr.high
			clone_upvr.PlaybackSpeed = Random.new():NextNumber(i.low, i)
		end
		clone_upvr.Ended:Connect(function() -- Line 32
			--[[ Upvalues[1]:
				[1]: clone_upvr (readonly)
			]]
			clone_upvr:Destroy()
		end)
		clone_upvr:Play()
	end;
	playWorld = function(arg1, arg2, arg3) -- Line 40, Named "playWorld"
		--[[ Upvalues[1]:
			[1]: any_import_result1_upvr (readonly)
		]]
		local Attachment_upvr = Instance.new("Attachment")
		Attachment_upvr.Parent = workspace.Terrain
		Attachment_upvr.WorldPosition = arg2
		local clone = any_import_result1_upvr.sounds[arg1]:Clone()
		if arg3 and arg3.PlaybackSpeed then
			clone.PlaybackSpeed = Random.new():NextNumber(arg3.PlaybackSpeed.low, arg3.PlaybackSpeed.high)
		end
		clone.Parent = Attachment_upvr
		clone.Ended:Connect(function() -- Line 60
			--[[ Upvalues[1]:
				[1]: Attachment_upvr (readonly)
			]]
			Attachment_upvr:Destroy()
		end)
		clone:Play()
	end;
}