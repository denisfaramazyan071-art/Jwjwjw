-- Path: ReplicatedStorage.llIlIlIIIIlIlIlllIlIlIllllIIlllIlIIlllllIlIIlIIlIlIlllIllllI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:23
-- Luau version 6, Types version 3
-- Time taken: 0.006145 seconds

local magInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("magInfo")
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
local module_upvr = {
	lastUpdateShoot = tick();
	lastUpdateReload = tick();
	smoothRemoved = false;
	smoothRemovedShoot = false;
}
if require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IIlIIIllIIIlllllIIllIlIIIllIIIIIlllIIllIllllIIlIlIllllllIIll")() == "mobile" then
	magInfo_upvw.Position = UDim2.new(0.5, 0, 1, -25)
	magInfo_upvw.AnchorPoint = Vector2.new(0.5, 1)
	magInfo_upvw:WaitForChild("UIListLayout").HorizontalAlignment = Enum.HorizontalAlignment.Center
end
function module_upvr.remove() -- Line 28
	--[[ Upvalues[3]:
		[1]: magInfo_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
	]]
	magInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("magInfo")
	for _, v in pairs(magInfo_upvw:GetDescendants()) do
		if v:IsA("TextLabel") then
			TweenService_upvr:Create(v, TweenInfo_new_result1_upvr, {
				TextTransparency = 1;
				TextStrokeTransparency = 1;
			}):Play()
		elseif v:IsA("ImageLabel") then
			TweenService_upvr:Create(v, TweenInfo_new_result1_upvr, {
				ImageTransparency = 1;
			}):Play()
		end
	end
end
function module_upvr.destroy() -- Line 39
	--[[ Upvalues[3]:
		[1]: magInfo_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
	]]
	magInfo_upvw:WaitForChild("timer").Visible = false
	TweenService_upvr:Create(magInfo_upvw:WaitForChild("amount"), TweenInfo_new_result1_upvr, {
		TextTransparency = 1;
	}):Play()
end
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
function module_upvr.smoothRemoveEquipped() -- Line 48
	--[[ Upvalues[3]:
		[1]: magInfo_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr_2 (readonly)
	]]
	magInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("grenadeInfo")
	TweenService_upvr:Create(magInfo_upvw:WaitForChild("amount"), TweenInfo_new_result1_upvr_2, {
		TextTransparency = 1;
	}):Play()
end
function module_upvr.update(arg1, arg2) -- Line 59
	--[[ Upvalues[4]:
		[1]: magInfo_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	magInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("grenadeInfo")
	magInfo_upvw:WaitForChild("amount").Text = arg1
	if arg2 then
		magInfo_upvw:WaitForChild("timer").Text = arg2
		magInfo_upvw:WaitForChild("timer").Visible = true
	else
		magInfo_upvw:WaitForChild("timer").Visible = false
	end
	TweenService_upvr:Create(magInfo_upvw:WaitForChild("amount"), TweenInfo_new_result1_upvr, {
		TextTransparency = 0;
	}):Play()
	module_upvr.smoothRemovedShoot = false
	magInfo_upvw.Visible = true
	module_upvr.lastUpdateShoot = tick()
end
coroutine.wrap(function() -- Line 89
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	while true do
		if 3 <= tick() - module_upvr.lastUpdateShoot and module_upvr.smoothRemovedShoot == false then
			module_upvr.smoothRemovedShoot = true
			module_upvr.smoothRemoveEquipped()
		end
		task.wait(1)
	end
end)()
return module_upvr