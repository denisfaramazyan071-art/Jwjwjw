-- Path: ReplicatedStorage.llIlllIIIlIllllIIlIIllIllllIllIIIIIlllllIIIlIIIIIlIIIllllllI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:08
-- Luau version 6, Types version 3
-- Time taken: 0.008282 seconds

local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IlIIlllIlIIllIlIIlIlIllllIlllIllllIIllIIIIIllIIlIlIIlIIIllII")
local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.__type = "Signal"
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
tbl_upvr.__type = "SignalConnection"
function module_upvr.new(arg1) -- Line 45
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module_2 = {}
	module_2.Name = arg1
	module_2.Connections = {}
	module_2.YieldingThreads = {}
	return setmetatable(module_2, module_upvr)
end
local function _(arg1, arg2) -- Line 54, Named "NewConnection"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local module = {}
	module.Signal = arg1
	module.Delegate = arg2
	module.Index = -1
	return setmetatable(module, tbl_upvr)
end
local function _(arg1, arg2, arg3) -- Line 63, Named "ThreadAndReportError"
	local coroutine_resume_result1_2, _ = coroutine.resume(coroutine.create(function() -- Line 64
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1(unpack(arg2))
	end))
	if coroutine_resume_result1_2 then
	end
end
function module_upvr.Connect(arg1, arg2) -- Line 76
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: any_import_result1_upvr (readonly)
	]]
	local var10
	if getmetatable(arg1) ~= module_upvr then
		var10 = false
	else
		var10 = true
	end
	assert(var10, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("Connect", "Signal.new()"))
	var10 = {}
	var10.Signal = arg1
	var10.Delegate = arg2
	var10.Index = -1
	local setmetatable_result1 = setmetatable(var10, tbl_upvr)
	var10 = #arg1.Connections + 1
	setmetatable_result1.Index = var10
	var10 = any_import_result1_upvr.insert
	var10(arg1.Connections, setmetatable_result1.Index, setmetatable_result1)
	return setmetatable_result1
end
function module_upvr.Fire(arg1, ...) -- Line 84
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	local var16
	if getmetatable(arg1) ~= module_upvr then
		var16 = false
	else
		var16 = true
	end
	assert(var16, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("Fire", "Signal.new()"))
	var16 = any_import_result1_upvr
	var16 = ...
	var16 = arg1.Connections
	local YieldingThreads = arg1.YieldingThreads
	for i = 1, #var16 do
		local var18 = var16[i]
		local function INLINED() -- Internal function, doesn't exist in bytecode
			local coroutine_resume_result1, _ = coroutine.resume(coroutine.create(function() -- Line 64
				--[[ Upvalues[2]:
					[1]: Delegate_upvr (readonly)
					[2]: any_pack_result1_upvr (readonly)
				]]
				Delegate_upvr(unpack(any_pack_result1_upvr))
			end))
			local any_pack_result1_upvr = var16.pack(var16)
			local Delegate_upvr = var18.Delegate
			return coroutine_resume_result1
		end
		if var18.Delegate == nil or INLINED() then
		end
	end
	for i_2 = 1, #YieldingThreads do
		local var24 = YieldingThreads[i_2]
		if var24 ~= nil then
			Delegate_upvr = coroutine.resume
			Delegate_upvr(var24, ...)
		end
	end
end
function module_upvr.FireSync(arg1, ...) -- Line 104
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	local var29
	if getmetatable(arg1) ~= module_upvr then
		var29 = false
	else
		var29 = true
	end
	assert(var29, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("FireSync", "Signal.new()"))
	var29 = any_import_result1_upvr
	var29 = ...
	var29 = arg1.Connections
	local YieldingThreads_2 = arg1.YieldingThreads
	for i_3 = 1, #var29 do
		local var31 = var29[i_3]
		if var31.Delegate ~= nil then
			var31.Delegate(unpack(var29.pack(var29)))
		end
	end
	for i_4 = 1, #YieldingThreads_2 do
		local var32 = YieldingThreads_2[i_4]
		if var32 ~= nil then
			coroutine.resume(var32, ...)
		end
	end
end
function module_upvr.Wait(arg1) -- Line 124
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	local var33
	if getmetatable(arg1) ~= module_upvr then
		var33 = false
	else
		var33 = true
	end
	assert(var33, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("Wait", "Signal.new()"))
	var33 = coroutine.running()
	any_import_result1_upvr.insert(arg1.YieldingThreads, var33)
	any_import_result1_upvr.removeObject(arg1.YieldingThreads, var33)
	return unpack({coroutine.yield()})
end
function module_upvr.Dispose(arg1) -- Line 134
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var39
	if getmetatable(arg1) ~= module_upvr then
		var39 = false
	else
		var39 = true
	end
	assert(var39, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("Dispose", "Signal.new()"))
	local Connections = arg1.Connections
	var39 = #Connections
	for i_5 = 1, var39 do
		Connections[i_5]:Disconnect()
		local _
	end
	var39 = {}
	arg1.Connections = var39
	var39 = setmetatable
	var39(arg1, nil)
end
function tbl_upvr.Disconnect(arg1) -- Line 144
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	local var42
	if getmetatable(arg1) ~= tbl_upvr then
		var42 = false
	else
		var42 = true
	end
	assert(var42, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("Disconnect", "private function NewConnection()"))
	var42 = any_import_result1_upvr
	var42 = arg1.Signal.Connections
	var42.remove(var42, arg1.Index)
	arg1.SignalStatic = nil
	arg1.Delegate = nil
	arg1.YieldingThreads = {}
	arg1.Index = -1
	var42 = arg1
	setmetatable(var42, nil)
end
return module_upvr