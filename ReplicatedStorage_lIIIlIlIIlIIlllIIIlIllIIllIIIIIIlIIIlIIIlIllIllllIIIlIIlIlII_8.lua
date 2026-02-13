-- Path: ReplicatedStorage.lIIIlIlIIlIIlllIIIlIllIIllIIIIIIlIIIlIIIlIllIllllIIIlIIlIlII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:00:54
-- Luau version 6, Types version 3
-- Time taken: 0.003267 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local module = {}
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IIIIIllIIlIIIIlIlIlllIlIlIlIIlIlIlIlIlIllIIlIIIlIIlllIlIlIII")
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("lIIlllIIlIllIIIIllIlIlIIllIIlIlIlIlIlIllIlllllIIIlIlIIIllIIl")
local any_import_result1_upvr_4 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("lIIlIIIllIllIIIllllIlIllIlIlIlIlIIlllIlIlllllIllIllIlIllIllI")
local any_import_result1_upvr_3 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IlllIIIIIlllIlIllIlIllIIlllIlIIllIlIIIllIllIIlIIllIlllIIlIII")
function module.new(arg1) -- Line 9
	--[[ Upvalues[4]:
		[1]: any_import_result1_upvr_2 (readonly)
		[2]: any_import_result1_upvr (readonly)
		[3]: any_import_result1_upvr_4 (readonly)
		[4]: any_import_result1_upvr_3 (readonly)
	]]
	local clone = script.explosion:Clone()
	clone.CFrame = CFrame.new(arg1)
	clone.Parent = workspace.ignore
	task.wait()
	any_import_result1_upvr_2.explosion(clone.FirePoint.WorldPosition)
	clone.Explosion.sparks:Emit(10)
	clone.Explosion.ParticleEmitterBLack:Emit(20)
	clone.Explosion.ParticleEmitter5:Emit(10)
	clone.Explosion.Shoot:Emit(1)
	clone.Explosion.PointLight.Enabled = true
	wait(0.04)
	clone.Explosion.PointLight.Enabled = false
	clone.explosion:Play()
	local Character_upvr = game.Players.LocalPlayer.Character
	coroutine.wrap(function() -- Line 33
		--[[ Upvalues[5]:
			[1]: Character_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: any_import_result1_upvr (copied, readonly)
			[4]: any_import_result1_upvr_4 (copied, readonly)
			[5]: any_import_result1_upvr_3 (copied, readonly)
		]]
		if Character_upvr:FindFirstChild("HumanoidRootPart") and (arg1 - Character_upvr:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 50 then
			any_import_result1_upvr.new("explosion")
			any_import_result1_upvr_4.appear(2, 0.5, 0.1, 3)
			any_import_result1_upvr_3.play("explosion")
			game.ReplicatedStorage.soundgroups.world.explosion.HighGain = 0
			wait(3)
			game:GetService("TweenService"):Create(game.ReplicatedStorage.soundgroups.world.explosion, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				HighGain = 10;
			}):Play()
		end
	end)()
end
return module