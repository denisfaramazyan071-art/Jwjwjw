-- Path: ReplicatedStorage.IlIlllIIIIlIIIIIlllIlllllIIIlIIllIIllIIIIIlIllllIIIIIIIIllll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:04
-- Luau version 6, Types version 3
-- Time taken: 0.002636 seconds

local tbl_upvr_2 = {}
local tbl_upvr = {}
tbl_upvr_2.__index = tbl_upvr_2
tbl_upvr_2.Type = "Signal"
function tbl_upvr_2.Connect(arg1, arg2) -- Line 49
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1.Previous = arg1.Previous
	setmetatable_result1.Next = arg1
	setmetatable_result1.Once = false
	setmetatable_result1.Function = arg2
	arg1.Previous.Next = setmetatable_result1
	arg1.Previous = setmetatable_result1
	return setmetatable_result1
end
function tbl_upvr_2.Once(arg1, arg2) -- Line 60
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1_4 = setmetatable({}, tbl_upvr)
	setmetatable_result1_4.Previous = arg1.Previous
	setmetatable_result1_4.Next = arg1
	setmetatable_result1_4.Once = true
	setmetatable_result1_4.Function = arg2
	arg1.Previous.Next = setmetatable_result1_4
	arg1.Previous = setmetatable_result1_4
	return setmetatable_result1_4
end
function tbl_upvr_2.Wait(arg1) -- Line 71
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1_3 = setmetatable({}, tbl_upvr)
	setmetatable_result1_3.Previous = arg1.Previous
	setmetatable_result1_3.Next = arg1
	setmetatable_result1_3.Once = true
	setmetatable_result1_3.Thread = coroutine.running()
	arg1.Previous.Next = setmetatable_result1_3
	arg1.Previous = setmetatable_result1_3
	return coroutine.yield()
end
local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IIIIIlIIIIIIIlllIIIIllIlIlIIIlllllIIIllllllIllllIlllIIIIlIlI")
function tbl_upvr_2.Fire(arg1, ...) -- Line 82
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	local Next = arg1.Next
	while Next.Type == "Connection" do
		if Next.Function then
			any_import_result1_upvr:Defer(Next.Function, ...)
		else
			task.defer(Next.Thread, ...)
		end
		if Next.Once then
			Next.Previous.Next = Next.Next
			Next.Next.Previous = Next.Previous
		end
	end
end
tbl_upvr.__index = tbl_upvr
tbl_upvr.Type = "Connection"
function tbl_upvr.Disconnect(arg1) -- Line 96
	arg1.Previous.Next = arg1.Next
	arg1.Next.Previous = arg1.Previous
end
return function() -- Line 37, Named "Constructor"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local setmetatable_result1_2 = setmetatable({}, tbl_upvr_2)
	setmetatable_result1_2.Previous = setmetatable_result1_2
	setmetatable_result1_2.Next = setmetatable_result1_2
	return setmetatable_result1_2
end