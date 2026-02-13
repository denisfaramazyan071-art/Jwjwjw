-- Path: ReplicatedStorage.lIIllIIlllIlIIIlIIIIIlIIIIlIllIIlIIIIllIllllIIIlIIIlIllIlllI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:00:48
-- Luau version 6, Types version 3
-- Time taken: 0.004019 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local module_upvr = {
	cameraCFrames = {
		main = game.ReplicatedStorage.cameraCFrames:WaitForChild("main").CFrame;
		classes = game.ReplicatedStorage.cameraCFrames:WaitForChild("classes").CFrame;
		character = game.ReplicatedStorage.cameraCFrames:WaitForChild("character").CFrame;
		shop = game.ReplicatedStorage.cameraCFrames:WaitForChild("main").CFrame;
		armband = game.ReplicatedStorage.cameraCFrames:WaitForChild("armband").CFrame;
		item = game.ReplicatedStorage.cameraCFrames:WaitForChild("item").CFrame;
		['1'] = game.ReplicatedStorage.cameraCFrames:WaitForChild('1').CFrame;
		['2'] = game.ReplicatedStorage.cameraCFrames:WaitForChild('2').CFrame;
		['3'] = game.ReplicatedStorage.cameraCFrames:WaitForChild('3').CFrame;
	};
}
local GuiService_upvr = game:GetService("GuiService")
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("lIIlIlIIIIlIIIlllllIlIIlllIIIIIIllIIIlIIIIIlIIIlllIlIllIllll")
function module_upvr.new() -- Line 30
	--[[ Upvalues[3]:
		[1]: GuiService_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: any_import_result1_upvr (readonly)
	]]
	game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("lobby").Enabled = true
	game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("prompts").Enabled = true
	GuiService_upvr.TouchControlsEnabled = false
	module_upvr.changeView("main")
	game.ReplicatedStorage.soundgroups.world.Volume = 0
	local clone = game.ReplicatedStorage.resources.Lobby:Clone()
	clone.Parent = workspace:WaitForChild("lobby")
	for i, v in pairs(clone:GetDescendants()) do
		if v:IsA("Animation") then
			v.Parent:LoadAnimation(v):Play()
		end
	end
	i = game
	local any_InvokeServer_result1, any_InvokeServer_result2 = i.ReplicatedStorage.network.requestUpdateLog:InvokeServer()
	if any_InvokeServer_result1 and any_InvokeServer_result2 then
		i = any_import_result1_upvr
		i = any_InvokeServer_result1
		v = any_InvokeServer_result2
		i.updateLog(i, v)
	end
end
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IIIllIIlIIIlIIllllIlIllIlIIIIlIllllIIllIllIlIIIIIIlIllIlIllI")
function module_upvr.changeView(arg1, arg2) -- Line 63
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr_2 (readonly)
	]]
	any_import_result1_upvr_2.lock(module_upvr.cameraCFrames[arg1], arg2)
end
function module_upvr.setInteractible(arg1) -- Line 70
	game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("lobby"):WaitForChild("frame").Interactable = true
end
function module_upvr.destroy() -- Line 75
	local lobby = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("lobby")
	lobby.frame.spawn.Visible = false
	lobby.Enabled = false
	game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("prompts").Enabled = false
	game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("billboards"):ClearAllChildren()
	workspace:WaitForChild("selectorModels"):ClearAllChildren()
	workspace:WaitForChild("lobby"):ClearAllChildren()
	if game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("modPanel") then
		game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("modPanel").Enabled = false
	end
end
return module_upvr