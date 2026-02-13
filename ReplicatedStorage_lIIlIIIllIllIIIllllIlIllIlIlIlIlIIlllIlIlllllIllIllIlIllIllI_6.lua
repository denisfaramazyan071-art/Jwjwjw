-- Path: ReplicatedStorage.lIIlIIIllIllIIIllllIlIllIlIlIlIlIIlllIlIlllllIllIllIlIllIllI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:00:52
-- Luau version 6, Types version 3
-- Time taken: 0.001928 seconds

local module_upvr = {
	count = 0;
}
function module_upvr.appear(arg1, arg2, arg3, arg4) -- Line 6
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _ = 1, arg1 do
		if module_upvr.count < 3 then
			local var3 = module_upvr
			var3.count += 1
			local vingette_upvr = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("vingette")
			coroutine.wrap(function() -- Line 16
				--[[ Upvalues[5]:
					[1]: vingette_upvr (readonly)
					[2]: arg3 (readonly)
					[3]: arg2 (readonly)
					[4]: arg4 (readonly)
					[5]: module_upvr (copied, readonly)
				]]
				local clone = script.frame:Clone()
				clone.ImageTransparency = 1
				clone.Parent = vingette_upvr
				game:GetService("TweenService"):Create(clone, TweenInfo.new(arg3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					ImageTransparency = 0;
				}):Play()
				wait(arg3 + arg2)
				game:GetService("TweenService"):Create(clone, TweenInfo.new(arg4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					ImageTransparency = 1;
				}):Play()
				wait(arg4)
				clone:Destroy()
				local var9 = module_upvr
				var9.count -= 1
			end)()
		end
	end
end
return module_upvr