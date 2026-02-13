-- Path: ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:55
-- Luau version 6, Types version 3
-- Time taken: 0.001916 seconds

local module_upvr = {}
for _, v in pairs(game.ReplicatedStorage:GetDescendants()) do
	if v:IsA("ModuleScript") then
		if module_upvr[v.Name] then
			warn("Duplicate module", v.Name)
		else
			module_upvr[v.Name] = v
		end
	end
end
if game:GetService("RunService"):IsServer() then
	for _, v_2 in pairs(game.ServerScriptService:GetDescendants()) do
		if v_2:IsA("ModuleScript") then
			if module_upvr[v_2.Name] then
				warn("Duplicate module", v_2.Name)
			else
				module_upvr[v_2.Name] = v_2
			end
		end
	end
end
return {
	import = function(arg1) -- Line 31, Named "import"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if not module_upvr[arg1] then
			return error("Unable to index "..arg1)
		end
		return require(module_upvr[arg1])
	end;
}