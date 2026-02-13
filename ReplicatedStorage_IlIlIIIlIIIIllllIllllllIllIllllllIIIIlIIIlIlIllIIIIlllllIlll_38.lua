-- Path: ReplicatedStorage.IlIlIIIlIIIIllllIllllllIllIllllllIIIIlIIIlIlIllIIIIlllllIlll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:19
-- Luau version 6, Types version 3
-- Time taken: 0.012463 seconds

local magInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("magInfo")
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
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
		[3]: TweenInfo_new_result1_upvr_2 (readonly)
	]]
	magInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("magInfo")
	for _, v in pairs(magInfo_upvw:GetDescendants()) do
		if v:IsA("TextLabel") then
			TweenService_upvr:Create(v, TweenInfo_new_result1_upvr_2, {
				TextTransparency = 1;
				TextStrokeTransparency = 1;
			}):Play()
		elseif v:IsA("ImageLabel") then
			TweenService_upvr:Create(v, TweenInfo_new_result1_upvr_2, {
				ImageTransparency = 1;
			}):Play()
		end
	end
end
function module_upvr.destroy() -- Line 39
	--[[ Upvalues[3]:
		[1]: magInfo_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr_2 (readonly)
	]]
	magInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("magazineInfo")
	for _, v_2 in pairs(magInfo_upvw:WaitForChild("magazines"):GetChildren()) do
		if v_2:IsA("Frame") and v_2.Name ~= "icons" then
			v_2:Destroy()
		elseif v_2.Name == "icons" then
			TweenService_upvr:Create(v_2, TweenInfo_new_result1_upvr_2, {
				BackgroundTransparency = 1;
			}):Play()
		end
	end
end
function module_upvr.smoothRemoveStoredMagazines() -- Line 51
	--[[ Upvalues[3]:
		[1]: magInfo_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
	]]
	magInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("magazineInfo")
	for _, v_3 in pairs(magInfo_upvw:WaitForChild("magazines"):GetChildren()) do
		if v_3:IsA("Frame") and v_3.LayoutOrder < 900 then
			TweenService_upvr:Create(v_3, TweenInfo_new_result1_upvr, {
				BackgroundTransparency = 1;
			}):Play()
			if v_3:FindFirstChild("UIStroke") then
				TweenService_upvr:Create(v_3:WaitForChild("UIStroke"), TweenInfo_new_result1_upvr, {
					Transparency = 1;
				}):Play()
			end
			for _, v_4 in pairs(v_3:GetChildren()) do
				if v_4:IsA("Frame") then
					TweenService_upvr:Create(v_4, TweenInfo_new_result1_upvr, {
						BackgroundTransparency = 1;
					}):Play()
				end
			end
		end
	end
end
function module_upvr.smoothRemoveEquipped() -- Line 85
	--[[ Upvalues[3]:
		[1]: magInfo_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
	]]
	magInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("magazineInfo")
	for _, v_5 in pairs(magInfo_upvw:WaitForChild("magazines"):GetChildren()) do
		if v_5:IsA("Frame") and v_5.LayoutOrder == 999 then
			TweenService_upvr:Create(v_5:WaitForChild("UIStroke"), TweenInfo_new_result1_upvr, {
				Transparency = 1;
			}):Play()
			TweenService_upvr:Create(v_5, TweenInfo_new_result1_upvr, {
				BackgroundTransparency = 1;
			}):Play()
			for _, v_6 in pairs(v_5:GetChildren()) do
				if v_6:IsA("Frame") then
					TweenService_upvr:Create(v_6, TweenInfo_new_result1_upvr, {
						BackgroundTransparency = 1;
					}):Play()
				end
			end
		end
	end
end
function module_upvr.reload() -- Line 111
	--[[ Upvalues[1]:
		[1]: magInfo_upvw (read and write)
	]]
	magInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("magInfo")
	magInfo_upvw:WaitForChild("mag"):WaitForChild("magazine").TextColor3 = Color3.fromRGB(184, 184, 184)
	for _, v_7 in pairs(magInfo_upvw:WaitForChild("mag"):WaitForChild("icons"):GetChildren()) do
		v_7.ImageColor3 = Color3.fromRGB(184, 184, 184)
	end
end
function makeMag(arg1, arg2, arg3, arg4) -- Line 124
	local clone = script.magazine:Clone()
	clone.Name = arg1
	clone.Size = UDim2.new(0, clone.Size.X.Offset, 0, arg3 * arg4)
	clone.LayoutOrder = -arg1
	clone:WaitForChild("filler").Size = UDim2.new(1, 0, 0, arg2 * arg4)
	return clone
end
function module_upvr.update(arg1) -- Line 136
	--[[ Upvalues[4]:
		[1]: magInfo_upvw (read and write)
		[2]: module_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: TweenInfo_new_result1_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 73 start (CF ANALYSIS FAILED)
	magInfo_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon"):WaitForChild("magazineInfo")
	local magazines = magInfo_upvw:WaitForChild("magazines")
	magazines:WaitForChild("icons").Size = UDim2.new(0, 1, 0, arg1.magSize * arg1.multi + 2)
	for _, v_8 in pairs(magazines:GetChildren()) do
		if v_8:IsA("Frame") and v_8.Name ~= "icons" and not arg1.magazines[tonumber(v_8.Name)] then
			v_8:Destroy()
		end
	end
	for i_9, v_9 in pairs(arg1.magazines) do
		local var75
		if not var75 then
			var75 = makeMag(i_9, v_9.rounds, arg1.magSize, arg1.multi)
			var75.Parent = magazines
		elseif var75:WaitForChild("filler").Size.Y.Offset ~= v_9.rounds * arg1.multi then
			var75:WaitForChild("filler").Size = UDim2.new(1, 0, 0, v_9.rounds * arg1.multi)
		end
		if i_9 == arg1.equippedMagazine then
			var75.LayoutOrder = 999
		else
			var75.LayoutOrder = v_9.rounds
		end
	end
	module_upvr.smoothRemovedShoot = false
	-- KONSTANTERROR: [0] 1. Error Block 73 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [154] 104. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [154] 104. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [158] 106. Error Block 63 start (CF ANALYSIS FAILED)
	module_upvr.smoothRemoved = false
	for _, v_10 in pairs(magInfo_upvw:WaitForChild("magazines"):GetChildren()) do
		var75 = v_10:IsA("Frame")
		if var75 then
			var75 = v_10.Name
			if var75 == "icons" then
				var75 = #arg1.magazines
				if 1 < var75 then
					var75 = TweenService_upvr
					local _ = {
						BackgroundTransparency = 0;
					}
					var75 = var75:Create(v_10, TweenInfo_new_result1_upvr_2, _):Play
					var75()
				else
					var75 = TweenService_upvr
					local _ = {
						BackgroundTransparency = 1;
					}
					var75 = var75:Create(v_10, TweenInfo_new_result1_upvr_2, _):Play
					var75()
				end
			else
				var75 = TweenService_upvr
				local _ = {
					BackgroundTransparency = 0.7;
				}
				var75 = var75:Create(v_10, TweenInfo_new_result1_upvr_2, _):Play
				var75()
			end
			var75 = v_10:FindFirstChild("UIStroke")
			if var75 then
				var75 = TweenService_upvr
				local _ = {
					Transparency = 0;
				}
				var75 = var75:Create(v_10:WaitForChild("UIStroke"), TweenInfo_new_result1_upvr_2, _):Play
				var75()
			end
			var75 = pairs(v_10:GetChildren())
			for _, v_11 in pairs(v_10:GetChildren()) do
				if v_11:IsA("Frame") then
					TweenService_upvr:Create(v_11, TweenInfo_new_result1_upvr_2, {
						BackgroundTransparency = 0;
					}):Play()
				end
			end
		end
	end
	magInfo_upvw.Visible = true
	module_upvr.lastUpdateShoot = tick()
	if arg1.action == "reload" or arg1.action == "equip" then
		module_upvr.lastUpdateReload = tick()
	end
	-- KONSTANTERROR: [158] 106. Error Block 63 end (CF ANALYSIS FAILED)
end
coroutine.wrap(function() -- Line 274
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	while true do
		if 3 <= tick() - module_upvr.lastUpdateShoot and module_upvr.smoothRemovedShoot == false then
			module_upvr.smoothRemovedShoot = true
			module_upvr.smoothRemoveEquipped()
		end
		if 3 <= tick() - module_upvr.lastUpdateReload and module_upvr.smoothRemoved == false then
			module_upvr.smoothRemoved = true
			module_upvr.smoothRemoveStoredMagazines()
		end
		task.wait(1)
	end
end)()
return module_upvr