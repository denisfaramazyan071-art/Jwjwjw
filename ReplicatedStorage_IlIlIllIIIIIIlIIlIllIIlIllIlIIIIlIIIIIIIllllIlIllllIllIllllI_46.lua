-- Path: ReplicatedStorage.IlIlIllIIIIIIlIIlIllIIlIllIlIIIIlIIIIIIIllllIlIllllIllIllllI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:26
-- Luau version 6, Types version 3
-- Time taken: 0.004656 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local any_import_result1_upvr_3 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llIIllIlIIllIlIIllllIlIIllllIIIIIlIIlIIllIlIIllllIIIIllllIll")
local module = {}
function getDisplayName(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr_3 (readonly)
	]]
	for _, v in pairs(any_import_result1_upvr_3.cosmetics) do
		for i_2, v_2 in pairs(v) do
			if i_2 == arg1 then
				return v_2.displayName
			end
		end
	end
end
function createBox(arg1, arg2, arg3) -- Line 18
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr_3 (readonly)
	]]
	local clone = script.box:Clone()
	clone.header.TextLabel.Text = getDisplayName(arg2)
	clone.LayoutOrder = arg3
	script.rarities:FindFirstChild(any_import_result1_upvr_3.cases[arg1].items[arg2].rarity):Clone().Parent = clone.header
	game.ReplicatedStorage.resources.ui.icons.cosmetics:FindFirstChild(arg2):Clone().Parent = clone
	return clone
end
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IlllIIIIIlllIlIllIlIllIIlllIlIIllIlIIIllIllIIlIIllIlllIIlIII")
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llIIlIlllIIIIlllIIlIlIIIlllllIlIIllIlIIIIIlllIlllIlIlIlIIlII")
function module.open(arg1, arg2) -- Line 28
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr_2 (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	local characterbillboards_upvr = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("characterbillboards")
	local lobby_upvr = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("lobby")
	local cases_upvr = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("cases")
	local container_upvr = cases_upvr:WaitForChild("Frame"):WaitForChild("Frame"):WaitForChild("container")
	if cases_upvr.Enabled == true then
	else
		for _, v_3 in pairs(characterbillboards_upvr:GetChildren()) do
			v_3.Enabled = false
		end
		cases_upvr.Enabled = true
		lobby_upvr.Enabled = false
		game.Lighting.case.Enabled = true
		any_import_result1_upvr_2.play("case")
		for i_4, v_4 in pairs(container_upvr:GetChildren()) do
			if v_4:IsA("Frame") then
				v_4:Destroy()
			end
		end
		for i_5 = 1, 50 do
			if i_5 ~= 47 then
				v_4 = any_import_result1_upvr
				i_4 = v_4.case
				v_4 = arg1
				i_4 = i_4(v_4)
				v_4 = createBox(arg1, i_4, i_5)
				v_4.Parent = container_upvr
			end
		end
		createBox(arg1, arg2, 47).Parent = container_upvr
		container_upvr.Size = UDim2.new(0, 4500, 0, 110)
		local var33_upvw = 4500
		local var34_upvw
		var34_upvw = container_upvr:GetPropertyChangedSignal("Size"):Connect(function() -- Line 84
			--[[ Upvalues[4]:
				[1]: var33_upvw (read and write)
				[2]: container_upvr (readonly)
				[3]: any_import_result1_upvr_2 (copied, readonly)
				[4]: var34_upvw (read and write)
			]]
			if 90 <= var33_upvw - container_upvr.Size.X.Offset then
				var33_upvw = container_upvr.Size.X.Offset
				any_import_result1_upvr_2.play("typewriter")
			end
			if container_upvr.Size.X.Offset == 0 then
				var34_upvw:Disconnect()
			end
		end)
		game:GetService("TweenService"):Create(container_upvr, TweenInfo.new(6, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
			Size = UDim2.new(1, 0, 0, 110);
		}):Play()
		delay(6, function() -- Line 97
			--[[ Upvalues[3]:
				[1]: characterbillboards_upvr (readonly)
				[2]: lobby_upvr (readonly)
				[3]: cases_upvr (readonly)
			]]
			for _, v_5 in pairs(characterbillboards_upvr:GetChildren()) do
				v_5.Enabled = true
			end
			game.Lighting.case.Enabled = false
			lobby_upvr.Enabled = true
			cases_upvr.Enabled = false
		end)
	end
end
return module