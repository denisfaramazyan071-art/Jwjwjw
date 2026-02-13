-- Path: ReplicatedStorage.lllIIllIllIIIIllIlIIIllIIllIlIlIlIIIIlIlIlIIllIIlIlIIlIIIlIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:21
-- Luau version 6, Types version 3
-- Time taken: 0.006777 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local module = {
	mag = function(arg1) -- Line 8, Named "mag"
		if not arg1 then
		end
		local clone = script.Magazine:Clone()
		clone.TextLabel.Text = '+'..1
		clone.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("side-notifications"):WaitForChild("Frame")
		task.wait(4.5)
		game:GetService("TweenService"):Create(clone.TextLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			TextTransparency = 1;
			TextStrokeTransparency = 1;
		}):Play()
		game:GetService("TweenService"):Create(clone, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			BackgroundTransparency = 1;
		}):Play()
		game:GetService("TweenService"):Create(clone.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Transparency = 1;
		}):Play()
		game.Debris:AddItem(clone, 5)
	end;
}
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llIIIlllllIIllIIlIlllIlIlIIIlIlIlIIllIlllllIIlIIllIIIIIlIllI")
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llIIllIlIIllIlIIllllIlIIllllIIIIIlIIlIIllIlIIllllIIIIllllIll")
function module.exp(arg1, arg2, arg3) -- Line 30
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr_2 (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	local clone_2 = script.exp:Clone()
	local var21
	for i, v in pairs(clone_2:GetChildren()) do
		if v:IsA("Frame") then
			if v.Name ~= arg1 then
				v.Visible = false
			else
				v.Visible = true
			end
		end
	end
	local SOME = clone_2:FindFirstChild(arg1)
	if arg1 == "point" then
		i = "[%s]"
		v = var21
		SOME.text2.Text = string.format(i, v)
		i = any_import_result1_upvr_2
		v = game.Players.LocalPlayer
		i = v.Name
		if i.players[i] == "attackers" then
			i = 255
			v = 96
			SOME.text2.TextColor3 = Color3.fromRGB(i, v, 96)
		else
			i = any_import_result1_upvr_2
			v = game.Players.LocalPlayer
			i = v.Name
			if i.players[i] == "defenders" then
				i = 134
				v = 136
				SOME.text2.TextColor3 = Color3.fromRGB(i, v, 255)
				-- KONSTANTWARNING: GOTO [176] #116
			end
		end
	elseif arg1 == "kill" then
		i = "[%s]"
		v = var21
		SOME.text2.Text = string.format(i, v)
	elseif arg1 == "heal" then
		i = "[%s]"
		v = var21
		SOME.text2.Text = string.format(i, v)
	elseif arg1 == "shootdown" then
		i = "[%s]"
		v = var21
		SOME.text2.Text = string.format(i, v)
	elseif arg1 == "assist" then
		i = "[%s]"
		v = var21
		SOME.text2.Text = string.format(i, v)
	elseif arg1 == "case" then
		i = any_import_result1_upvr
		i = "[%s]"
		v = i.cases[var21].displayName
		SOME.text2.Text = string.format(i, v)
	end
	clone_2.expValue.Text = '+'..arg3.." exp"
	clone_2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("side-notifications"):WaitForChild("Frame")
	task.wait(4.5)
	for _, v_2 in pairs(clone_2:GetDescendants()) do
		if v_2:IsA("TextLabel") then
			game:GetService("TweenService"):Create(v_2, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				TextTransparency = 1;
				TextStrokeTransparency = 1;
			}):Play()
		end
	end
	game.Debris:AddItem(clone_2, 5)
end
return module