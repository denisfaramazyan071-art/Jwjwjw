-- Path: ReplicatedStorage.llllIIIIlIIIlIIIIIllllIlIIlIIlIllIIlIIIlllIlllIIIIIllllIlIlI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:09
-- Luau version 6, Types version 3
-- Time taken: 0.005603 seconds

local module_upvr = {}
for i, v in pairs(table) do
	module_upvr[i] = v
end
function module_upvr.contains(arg1, arg2) -- Line 31
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var10
	if module_upvr.indexOf(arg1, arg2) == nil then
		var10 = false
	else
		var10 = true
	end
	return var10
end
function module_upvr.indexOf(arg1, arg2) -- Line 36
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local table_find_result1 = table.find(arg1, arg2)
	if table_find_result1 then
		return table_find_result1
	end
	return module_upvr.keyOf(arg1, arg2)
end
function module_upvr.keyOf(arg1, arg2) -- Line 45
	for i_2, v_2 in pairs(arg1) do
		if v_2 == arg2 then
			return i_2
		end
	end
	return nil
end
function module_upvr.skip(arg1, arg2) -- Line 55
	return table.move(arg1, arg2 + 1, #arg1, 1, table.create(#arg1 - arg2))
end
function module_upvr.take(arg1, arg2) -- Line 60
	return table.move(arg1, 1, arg2, 1, table.create(arg2))
end
function module_upvr.range(arg1, arg2, arg3) -- Line 65
	return table.move(arg1, arg2, arg3, 1, table.create(arg3 - arg2 + 1))
end
function module_upvr.skipAndTake(arg1, arg2, arg3) -- Line 70
	return table.move(arg1, arg2 + 1, arg2 + arg3, 1, table.create(arg3))
end
local random_state_upvr = Random.new()
function module_upvr.random(arg1) -- Line 75
	--[[ Upvalues[1]:
		[1]: random_state_upvr (readonly)
	]]
	return arg1[random_state_upvr:NextInteger(1, #arg1)]
end
function module_upvr.join(arg1, arg2) -- Line 80
	return table.move(arg2, 1, #arg2, #arg1 + 1, table.create(#arg1 + #arg2))
end
function module_upvr.removeObject(arg1, arg2) -- Line 87
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_indexOf_result1 = module_upvr.indexOf(arg1, arg2)
	if any_indexOf_result1 then
		table.remove(arg1, any_indexOf_result1)
	end
end
function module_upvr.expand(arg1, arg2) -- Line 96
	if arg2 < 0 then
		error("Cannot expand a table by a negative amount of objects.")
	end
	for i_3 = 1, #arg1 do
		table.create(#arg1 + arg2)[i_3] = arg1[i_3]
		local var33
	end
	return var33
end
return module_upvr