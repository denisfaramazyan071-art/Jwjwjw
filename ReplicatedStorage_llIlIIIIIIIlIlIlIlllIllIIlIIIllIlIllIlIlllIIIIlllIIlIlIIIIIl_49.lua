-- Path: ReplicatedStorage.llIlIIIIIIIlIlIlIlllIllIIlIIIllIlIllIlIlllIIIIlllIIlIlIIIIIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:28
-- Luau version 6, Types version 3
-- Time taken: 0.006908 seconds

local module_upvr = {
	lastUpdate = tick();
	smoothRemoved = false;
	clear = function() -- Line 9, Named "clear"
		for _, v in pairs(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("loadout"):GetChildren()) do
			if v:IsA("Frame") then
				v:Destroy()
			end
		end
	end;
}
local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IIIIlIIllIlIlIllIIIlIlllIlIlIIllllIllIlIIlIllIIIIlIIIIIlIlII")
function module_upvr.new(arg1) -- Line 21
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	module_upvr.clear()
	for i_2, v_2 in pairs(arg1) do
		if v_2.name then
			local clone = script.frame:Clone()
			clone.Name = i_2
			clone.LayoutOrder = i_2
			local displayName = any_import_result1_upvr.items[v_2.name].displayName
			if not displayName then
				displayName = v_2.name
			end
			clone.item.Text = displayName
			clone.index.TextLabel.Text = i_2
			clone.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("loadout")
			clone.Visible = true
		end
	end
end
function module_upvr.equip(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.smoothRemoved = false
	for _, v_3 in pairs(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("loadout"):GetChildren()) do
		if v_3:IsA("Frame") then
			if tostring(v_3.Name) == tostring(arg1) then
				v_3.index.BackgroundColor3 = Color3.fromRGB(158, 131, 92)
				v_3.index.UIStroke.Color = Color3.fromRGB(44, 40, 26)
			else
				v_3.index.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				v_3.index.UIStroke.Color = Color3.fromRGB(0, 0, 0)
			end
		end
	end
	module_upvr.fade(true, 0.01)
	module_upvr.lastUpdate = tick()
end
function module_upvr.fade(arg1, arg2) -- Line 83
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var30
	if arg1 == false then
		var30 = 1
		local var31 = 1
	end
	for _, v_4 in pairs(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("loadout"):GetChildren()) do
		if v_4:IsA("Frame") then
			game:GetService("TweenService"):Create(v_4.index, TweenInfo.new(arg2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundTransparency = var30;
			}):Play()
			game:GetService("TweenService"):Create(v_4.index.UIStroke, TweenInfo.new(arg2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Transparency = 1;
			}):Play()
			game:GetService("TweenService"):Create(v_4.index.TextLabel, TweenInfo.new(arg2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				TextTransparency = var31;
			}):Play()
			game:GetService("TweenService"):Create(v_4.item, TweenInfo.new(arg2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				TextTransparency = var31;
				TextStrokeTransparency = 1;
			}):Play()
		end
	end
end
coroutine.wrap(function() -- Line 126
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	while true do
		if 3 <= tick() - module_upvr.lastUpdate and module_upvr.smoothRemoved == false then
			module_upvr.smoothRemoved = true
			module_upvr.fade(false, 3)
		end
		task.wait(1)
	end
end)()
return module_upvr