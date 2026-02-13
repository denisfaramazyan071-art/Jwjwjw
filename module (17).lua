-- Path: ReplicatedStorage.lIIllIIIllIllllIIllIlllllIIIIlllIIllIIlIIIlIlllllIIlIlIIllll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:02:06
-- Luau version 6, Types version 3
-- Time taken: 0.000737 seconds

local module = {}
setmetatable(module, {
	__index = function(arg1, arg2) -- Line 6, Named "__index"
		return game:GetService(arg2)
	end;
})
return module