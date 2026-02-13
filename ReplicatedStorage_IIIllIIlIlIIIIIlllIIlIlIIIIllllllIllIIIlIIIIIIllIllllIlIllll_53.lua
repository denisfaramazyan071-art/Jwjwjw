-- Path: ReplicatedStorage.IIIllIIlIlIIIIIlllIIlIlIIIIllllllIllIIIlIIIIIIllIllllIlIllll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:32
-- Luau version 6, Types version 3
-- Time taken: 0.001429 seconds

local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("llllIlIIIllIllIlllIlIIllIIIIIIIIIIIIIIllllIlIllIIlIlIIIlIIIl")
local module_upvr = {}
local CurrentCamera_upvr = workspace.CurrentCamera
function module_upvr.new() -- Line 17
	--[[ Upvalues[3]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: any_import_result1_upvr (readonly)
	]]
	local CFrame_upvw = CurrentCamera_upvr.CFrame
	module_upvr.instance = any_import_result1_upvr.new(Enum.RenderPriority.Last.Value, function(arg1) -- Line 20
		--[[ Upvalues[2]:
			[1]: CFrame_upvw (read and write)
			[2]: CurrentCamera_upvr (copied, readonly)
		]]
		CFrame_upvw = CurrentCamera_upvr.CFrame
		CurrentCamera_upvr.CFrame *= arg1
	end)
	game:GetService("RunService").Heartbeat:Connect(function() -- Line 26
		--[[ Upvalues[2]:
			[1]: CurrentCamera_upvr (copied, readonly)
			[2]: CFrame_upvw (read and write)
		]]
		CurrentCamera_upvr.CFrame = CFrame_upvw
	end)
	module_upvr.instance:Start()
end
function module_upvr.Shake(arg1) -- Line 36
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	module_upvr.instance:Shake(any_import_result1_upvr.Presets[arg1])
end
return module_upvr