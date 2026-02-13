-- Path: ReplicatedStorage.IIIlllIllIllIIlIlIIIlIlIIIIllIIlIIIllIllIllllIIIllIlllllIIIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:27
-- Luau version 6, Types version 3
-- Time taken: 0.003454 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llIIllIIIlIIIIIIlIIlllllIIllIlllIlllIIllIllllIlllIIlIIllIIll")
local module_upvr = {
	enabled = true;
	sounds = {};
}
function module_upvr.new() -- Line 10
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	local teams = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("teams")
	teams:WaitForChild("frame").Interactable = true
	module_upvr.sounds = {
		defenders = teams:WaitForChild("defenders");
		attackers = teams:WaitForChild("attackers");
	}
	any_import_result1_upvr.toggle(0, 0.01)
	teams.Enabled = true
	module_upvr.enabled = true
	any_import_result1_upvr.toggle(1, 0.3)
end
function module_upvr.remove() -- Line 34
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	local teams_2 = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("teams")
	teams_2:WaitForChild("frame").Interactable = false
	for _, v in pairs(module_upvr.sounds) do
		game:GetService("TweenService"):Create(v, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Volume = 0;
		}):Play()
	end
	any_import_result1_upvr.toggle(0, 0.2)
	wait(0.2)
	teams_2.Enabled = false
	module_upvr.enabled = false
	wait(2)
	game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("lobby").Enabled = true
	any_import_result1_upvr.toggle(1, 0.5)
end
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IlllIIIIIlllIlIllIlIllIIlllIlIIllIlIIIllIllIIlIIllIlllIIlIII")
function module_upvr.playThemeSong(arg1) -- Line 58
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	if arg1 then
		any_import_result1_upvr_2.play("hover")
	end
	if not arg1 then
		for i_2, v_2 in pairs(module_upvr.sounds) do
			game:GetService("TweenService"):Create(v_2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Volume = 0;
			}):Play()
		end
	elseif module_upvr.enabled and game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("teams").enabled then
		local var20 = module_upvr.sounds[arg1]
		if var20.Playing ~= true then
			var20:Play()
		end
		i_2 = "TweenService"
		i_2 = var20
		v_2 = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		game:GetService(i_2):Create(i_2, v_2, {
			Volume = 0.2;
		}):Play()
	end
end
return module_upvr