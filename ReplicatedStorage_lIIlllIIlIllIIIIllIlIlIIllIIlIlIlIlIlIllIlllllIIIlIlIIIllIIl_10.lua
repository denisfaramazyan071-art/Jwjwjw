-- Path: ReplicatedStorage.lIIlllIIlIllIIIIllIlIlIIllIIlIlIlIlIlIllIlllllIIIlIlIIIllIIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:00:55
-- Luau version 6, Types version 3
-- Time taken: 0.002725 seconds

local module = {}
local RunService_upvr = game:GetService("RunService")
local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("llllIlIIIllIllIlllIlIIllIIIIIIIIIIIIIIllllIlIllIIlIlIIIlIIIl")
camShake = nil -- Setting global
function module.new(arg1) -- Line 20
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	pcall(function() -- Line 21
		--[[ Upvalues[2]:
			[1]: any_import_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		camShake:Shake(any_import_result1_upvr.Presets[arg1])
	end)
end
function module.drive() -- Line 26
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	camShake:ShakeSustain(any_import_result1_upvr.Presets.RoughDriving)
end
function module.remove() -- Line 30
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	RunService_upvr:UnbindFromRenderStep("ResetCF")
	camShake:Stop()
	camShake = nil -- Setting global
end
local CurrentCamera_upvr = workspace.CurrentCamera
function module.add() -- Line 36
	--[[ Upvalues[3]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	if camShake then
		camShake:Stop()
		camShake = nil -- Setting global
	end
	local CFrame_upvw = CurrentCamera_upvr.CFrame
	camShake = any_import_result1_upvr.new(Enum.RenderPriority.Camera.Value, function(arg1) -- Line 44
		--[[ Upvalues[2]:
			[1]: CFrame_upvw (read and write)
			[2]: CurrentCamera_upvr (copied, readonly)
		]]
		CFrame_upvw = CurrentCamera_upvr.CFrame
		CurrentCamera_upvr.CFrame *= arg1
	end) -- Setting global
	RunService_upvr:BindToRenderStep("ResetCF", Enum.RenderPriority.First.Value, function(arg1) -- Line 49
		--[[ Upvalues[2]:
			[1]: CurrentCamera_upvr (copied, readonly)
			[2]: CFrame_upvw (read and write)
		]]
		CurrentCamera_upvr.CFrame = CFrame_upvw
	end)
	camShake:Start()
end
return module