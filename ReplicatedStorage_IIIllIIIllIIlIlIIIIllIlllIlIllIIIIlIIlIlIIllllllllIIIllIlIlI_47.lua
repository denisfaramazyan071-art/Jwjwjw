-- Path: ReplicatedStorage.IIIllIIIllIIlIlIIIIllIlllIlIllIIIIlIIlIlIIllllllllIIIllIlIlI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:27
-- Luau version 6, Types version 3
-- Time taken: 0.006657 seconds

local _ = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local shotgunInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("shotgunInfo")
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
local module_upvr = {
	lastUpdateShoot = tick();
	lastUpdateReload = tick();
	smoothRemoved = false;
	smoothRemovedShoot = false;
	destroy = function() -- Line 29, Named "destroy"
		--[[ Upvalues[3]:
			[1]: TweenService_upvr (readonly)
			[2]: shotgunInfo_upvw (read and write)
			[3]: TweenInfo_new_result1_upvr (readonly)
		]]
		TweenService_upvr:Create(shotgunInfo_upvw:WaitForChild("amount"), TweenInfo_new_result1_upvr, {
			TextTransparency = 1;
		}):Play()
		for _, v in pairs(shotgunInfo_upvw:WaitForChild("shells"):GetChildren()) do
			if v:IsA("Frame") then
				TweenService_upvr:Create(v, TweenInfo_new_result1_upvr, {
					BackgroundTransparency = 1;
				}):Play()
				if v:FindFirstChild("UIStroke") then
					TweenService_upvr:Create(v:WaitForChild("UIStroke"), TweenInfo_new_result1_upvr, {
						Transparency = 1;
					}):Play()
				end
				for _, v_2 in pairs(v:GetChildren()) do
					if v_2:IsA("Frame") then
						TweenService_upvr:Create(v_2, TweenInfo_new_result1_upvr, {
							BackgroundTransparency = 1;
						}):Play()
					end
				end
			end
		end
	end;
}
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
function module_upvr.smoothRemoveEquipped() -- Line 55
	--[[ Upvalues[3]:
		[1]: shotgunInfo_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr_2 (readonly)
	]]
	shotgunInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("shotgunInfo")
	TweenService_upvr:Create(shotgunInfo_upvw:WaitForChild("amount"), TweenInfo_new_result1_upvr_2, {
		TextTransparency = 1;
	}):Play()
	for _, v_3 in pairs(shotgunInfo_upvw:WaitForChild("shells"):GetChildren()) do
		if v_3:IsA("Frame") then
			TweenService_upvr:Create(v_3, TweenInfo_new_result1_upvr_2, {
				BackgroundTransparency = 1;
			}):Play()
			if v_3:FindFirstChild("UIStroke") then
				TweenService_upvr:Create(v_3:WaitForChild("UIStroke"), TweenInfo_new_result1_upvr_2, {
					Transparency = 1;
				}):Play()
			end
			for _, v_4 in pairs(v_3:GetChildren()) do
				if v_4:IsA("Frame") then
					TweenService_upvr:Create(v_4, TweenInfo_new_result1_upvr_2, {
						BackgroundTransparency = 1;
					}):Play()
				end
			end
		end
	end
end
function module_upvr.update(arg1, arg2) -- Line 87
	--[[ Upvalues[4]:
		[1]: shotgunInfo_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	shotgunInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("shotgunInfo")
	shotgunInfo_upvw:WaitForChild("amount").Text = arg1.stored
	local var41 = #shotgunInfo_upvw:WaitForChild("shells"):GetChildren() - 1
	if var41 < arg1.chamber then
		for i_5 = 1, arg1.chamber - var41 do
			local clone = script.shell:Clone()
			clone.Parent = shotgunInfo_upvw:WaitForChild("shells")
			clone.Visible = true
		end
	elseif arg1.chamber < var41 then
		i_5 = 1
		for _ = i_5, var41 - arg1.chamber do
			shotgunInfo_upvw:WaitForChild("shells"):FindFirstChildOfClass("Frame"):Destroy()
		end
	end
	for _, v_5 in pairs(shotgunInfo_upvw:WaitForChild("shells"):GetChildren()) do
		if v_5:IsA("Frame") then
			TweenService_upvr:Create(v_5, TweenInfo_new_result1_upvr, {
				BackgroundTransparency = 0;
			}):Play()
			if v_5:FindFirstChild("UIStroke") then
				TweenService_upvr:Create(v_5:WaitForChild("UIStroke"), TweenInfo_new_result1_upvr, {
					Transparency = 0;
				}):Play()
			end
			for _, v_6 in pairs(v_5:GetChildren()) do
				if v_6:IsA("Frame") then
					TweenService_upvr:Create(v_6, TweenInfo_new_result1_upvr, {
						BackgroundTransparency = 0;
					}):Play()
				end
			end
		end
	end
	TweenService_upvr:Create(shotgunInfo_upvw:WaitForChild("amount"), TweenInfo_new_result1_upvr, {
		TextTransparency = 0;
	}):Play()
	module_upvr.smoothRemovedShoot = false
	shotgunInfo_upvw.Visible = true
	module_upvr.lastUpdateShoot = tick()
end
coroutine.wrap(function() -- Line 139
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