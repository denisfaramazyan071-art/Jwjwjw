-- Path: ReplicatedStorage.IIlIIlIIllIIlIIIllIlIllIIlIlllIlIlIIllIlIllIIIIlllllllIlIllI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:18
-- Luau version 6, Types version 3
-- Time taken: 0.003523 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local module = {
	clear = function() -- Line 6, Named "clear"
		for _, v in pairs(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("chat"):WaitForChild("container"):GetChildren()) do
			if v:IsA("Frame") then
				v:Destroy()
			end
		end
	end;
}
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llIIIlllllIIllIIlIlllIlIlIIIlIlIlIIllIlllllIIlIIllIIIIIlIllI")
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llIIllIlIIllIlIIllllIlIIllllIIIIIlIIlIIllIlIIllllIIIIllllIll")
function module.newMessage(arg1) -- Line 20
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr (readonly)
		[2]: any_import_result1_upvr_2 (readonly)
	]]
	local container = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("chat"):WaitForChild("container")
	if container:FindFirstChild(tostring(arg1.id)) then
	else
		local clone_upvr = script.message:Clone()
		clone_upvr.username.Text = arg1.username..": "
		clone_upvr.Name = tostring(arg1.id)
		clone_upvr.content.Text = arg1.content
		clone_upvr.username.TextColor3 = any_import_result1_upvr_2.chat.nameColors[any_import_result1_upvr.players[arg1.username]]
		local SOME = game.Players:FindFirstChild(arg1.username)
		if not SOME then return end
		local tag = SOME:GetAttribute("tag")
		if tag then
			clone_upvr.tag.Visible = true
			clone_upvr.tag.Text = string.format("[%s] ", any_import_result1_upvr_2.chat.tags[tag].display)
			clone_upvr.tag.TextColor3 = any_import_result1_upvr_2.chat.tags[tag].color
		end
		if arg1.team then
			if arg1.team == "attackers" then
				clone_upvr.content.TextColor3 = Color3.fromRGB(255, 129, 129)
			elseif arg1.team == "defenders" then
				clone_upvr.content.TextColor3 = Color3.fromRGB(156, 166, 255)
			end
		end
		clone_upvr.Parent = container
		delay(20, function() -- Line 90
			--[[ Upvalues[1]:
				[1]: clone_upvr (readonly)
			]]
			clone_upvr:Destroy()
		end)
	end
end
function module.systemMessage(arg1, arg2) -- Line 96
	local clone_upvr_2 = script.client:Clone()
	clone_upvr_2.content.Text = arg1
	if arg2 then
		clone_upvr_2.content.TextColor3 = arg2
	end
	clone_upvr_2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("chat"):WaitForChild("container")
	delay(20, function() -- Line 108
		--[[ Upvalues[1]:
			[1]: clone_upvr_2 (readonly)
		]]
		clone_upvr_2:Destroy()
	end)
end
return module