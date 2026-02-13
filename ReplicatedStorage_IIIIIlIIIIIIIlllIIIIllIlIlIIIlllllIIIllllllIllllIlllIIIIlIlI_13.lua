-- Path: ReplicatedStorage.IIIIIlIIIIIIIlllIIIIllIlIlIIIlllllIIIllllllIllllIlllIIIIlIlI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:00:58
-- Luau version 6, Types version 3
-- Time taken: 0.002146 seconds

local Thread_upvw
local module = {}
local tbl_upvr = {}
module.Type = "Task"
function module.Spawn(arg1, arg2, ...) -- Line 23
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: Thread_upvw (read and write)
	]]
	local popped = table.remove(tbl_upvr)
	if not popped then
		popped = task.spawn(Thread_upvw)
	end
	return task.spawn(popped, arg2, ...)
end
function module.Defer(arg1, arg2, ...) -- Line 27
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: Thread_upvw (read and write)
	]]
	local popped_3 = table.remove(tbl_upvr)
	if not popped_3 then
		popped_3 = task.spawn(Thread_upvw)
	end
	return task.defer(popped_3, arg2, ...)
end
function module.Delay(arg1, arg2, arg3, ...) -- Line 31
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: Thread_upvw (read and write)
	]]
	local popped_2 = table.remove(tbl_upvr)
	if not popped_2 then
		popped_2 = task.spawn(Thread_upvw)
	end
	return task.delay(arg2, popped_2, arg3, ...)
end
local function Call_upvw(arg1, ...) -- Line 37, Named "Call"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	arg1(...)
	table.insert(tbl_upvr, coroutine.running())
end
function Thread_upvw() -- Line 42, Named "Thread"
	--[[ Upvalues[1]:
		[1]: Call_upvw (read and write)
	]]
	while true do
		Call_upvw(coroutine.yield())
	end
end
return module