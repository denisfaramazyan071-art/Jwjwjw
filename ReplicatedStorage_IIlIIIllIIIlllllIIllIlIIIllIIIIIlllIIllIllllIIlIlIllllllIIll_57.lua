-- Path: ReplicatedStorage.IIlIIIllIIIlllllIIllIlIIIllIIIIIlllIIllIllllIIlIlIllllllIIll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:35
-- Luau version 6, Types version 3
-- Time taken: 0.000903 seconds

local UserInputService_upvr = game:GetService("UserInputService")
return function() -- Line 4
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	if UserInputService_upvr.TouchEnabled and not UserInputService_upvr.KeyboardEnabled and not UserInputService_upvr.MouseEnabled then
		return "mobile"
	end
	if UserInputService_upvr.KeyboardEnabled then
		return "desktop"
	end
end