-- Path: ReplicatedStorage.IlIlllIIlIlIIIlIlIlIIIllIIllIllllIIIlIllIIIIIlllIIIlllIlllll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:23
-- Luau version 6, Types version 3
-- Time taken: 0.002701 seconds

local module_upvr = {
	stored = {};
}
function module_upvr.clear() -- Line 6
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_upvr in pairs(module_upvr.stored) do
		game:GetService("TweenService"):Create(v_upvr, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
			TextStrokeTransparency = 1;
			TextTransparency = 1;
		}):Play()
		delay(0.1, function() -- Line 15
			--[[ Upvalues[1]:
				[1]: v_upvr (readonly)
			]]
			v_upvr:Destroy()
		end)
	end
end
function module_upvr.new(arg1) -- Line 21
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local clone_upvr = script.text:Clone()
	clone_upvr.Text = arg1
	clone_upvr.TextStrokeTransparency = 1
	clone_upvr.TextTransparency = 1
	clone_upvr.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("notifications")
	game:GetService("TweenService"):Create(clone_upvr, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		TextStrokeTransparency = clone_upvr.TextStrokeTransparency;
		TextTransparency = clone_upvr.TextTransparency;
		Position = UDim2.new(clone_upvr.Position.X.Scale, clone_upvr.Position.X.Offset, clone_upvr.Position.Y.Scale, -30);
	}):Play()
	delay(2, function() -- Line 45
		--[[ Upvalues[1]:
			[1]: clone_upvr (readonly)
		]]
		game:GetService("TweenService"):Create(clone_upvr, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
			TextStrokeTransparency = 1;
			TextTransparency = 1;
			Position = UDim2.new(clone_upvr.Position.X.Scale, clone_upvr.Position.X.Offset, clone_upvr.Position.Y.Scale, 0);
		}):Play()
		delay(0.15, function() -- Line 54
			--[[ Upvalues[1]:
				[1]: clone_upvr (copied, readonly)
			]]
			clone_upvr:Destroy()
		end)
	end)
	module_upvr.clear()
	table.insert(module_upvr.stored, clone_upvr)
end
return module_upvr