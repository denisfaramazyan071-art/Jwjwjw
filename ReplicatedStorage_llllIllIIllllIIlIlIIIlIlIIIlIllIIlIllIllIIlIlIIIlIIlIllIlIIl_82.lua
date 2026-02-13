-- Path: ReplicatedStorage.llllIllIIllllIIlIlIIIlIlIIIlIllIIlIllIllIIlIlIIIlIIlIllIlIIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:58
-- Luau version 6, Types version 3
-- Time taken: 0.022710 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IIIIIlIIIIIIIlllIIIIllIlIlIIIlllllIIIllllllIllllIlllIIIIlIlI")
local any_import_result1 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("llllIlIIlIIIlIIlIlIlIlIlIIllIlIIIIlIIlllIllllIlIIllIIIIlIIlI")
local ParametersToFunctions_upvw
local WriteParameters_upvw
local Timeout_upvw
local RunService_upvr = game:GetService("RunService")
local Reads_upvr = any_import_result1.Reads
local Writes_upvr = any_import_result1.Writes
local Import_upvr = any_import_result1.Import
local Export_upvr = any_import_result1.Export
local NumberU8_upvr_2 = Writes_upvr.NumberU8
local tbl_4_upvr = {}
local tbl_11_upvr = {}
local tbl_8_upvw = {
	Buffer = buffer.create(128);
	BufferLength = 128;
	BufferOffset = 0;
	Instances = {};
	InstancesOffset = 0;
}
local var16_upvw
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IlIlllIIIIlIIIIIlllIlllllIIIlIIllIIllIIIIIlIllllIIIIIIIIllll")
local var18_upvw
tbl_4_upvr.__index = tbl_4_upvr
tbl_4_upvr.Type = "Packet"
function tbl_4_upvr.Response(arg1, ...) -- Line 77
	--[[ Upvalues[1]:
		[1]: ParametersToFunctions_upvw (read and write)
	]]
	arg1.ResponseTimeout = arg1.ResponseTimeout or 10
	local ParametersToFunctions_result1, ParametersToFunctions_upvw_result2 = ParametersToFunctions_upvw(table.pack(...))
	arg1.ResponseReads = ParametersToFunctions_result1
	arg1.ResponseWrites = ParametersToFunctions_upvw_result2
	return arg1
end
local var25_upvw
function tbl_4_upvr.Fire(arg1, ...) -- Line 83
	--[[ Upvalues[9]:
		[1]: RunService_upvr (readonly)
		[2]: var25_upvw (read and write)
		[3]: Import_upvr (readonly)
		[4]: tbl_8_upvw (read and write)
		[5]: NumberU8_upvr_2 (readonly)
		[6]: any_import_result1_upvr_2 (readonly)
		[7]: Timeout_upvw (read and write)
		[8]: WriteParameters_upvw (read and write)
		[9]: Export_upvr (readonly)
	]]
	-- KONSTANTERROR: Failed to generate AST for function `Fire`:
K:0: attempt to index nil with 'reads'
Traceback:
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K

end
local var28_upvw
local var29_upvw
function tbl_4_upvr.FireClient(arg1, arg2, ...) -- Line 108
	--[[ Upvalues[8]:
		[1]: var28_upvw (read and write)
		[2]: Import_upvr (readonly)
		[3]: var29_upvw (read and write)
		[4]: NumberU8_upvr_2 (readonly)
		[5]: any_import_result1_upvr_2 (readonly)
		[6]: Timeout_upvw (read and write)
		[7]: WriteParameters_upvw (read and write)
		[8]: Export_upvr (readonly)
	]]
	-- KONSTANTERROR: Failed to generate AST for function `FireClient`:
K:0: attempt to index nil with 'reads'
Traceback:
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K

end
local Truncate_upvr = any_import_result1.Truncate
function tbl_4_upvr.Serialize(arg1, ...) -- Line 135
	--[[ Upvalues[3]:
		[1]: Import_upvr (readonly)
		[2]: WriteParameters_upvw (read and write)
		[3]: Truncate_upvr (readonly)
	]]
	Import_upvr({
		Buffer = buffer.create(128);
		BufferLength = 128;
		BufferOffset = 0;
		Instances = {};
		InstancesOffset = 0;
	})
	WriteParameters_upvw(arg1.Writes, {...})
	return Truncate_upvr()
end
local ReadParameters_upvw
function tbl_4_upvr.Deserialize(arg1, arg2, arg3) -- Line 141
	--[[ Upvalues[2]:
		[1]: Import_upvr (readonly)
		[2]: ReadParameters_upvw (read and write)
	]]
	local tbl_2 = {}
	tbl_2.Buffer = arg2
	tbl_2.BufferLength = buffer.len(arg2)
	tbl_2.BufferOffset = 0
	local var38 = arg3
	if not var38 then
		var38 = {}
	end
	tbl_2.Instances = var38
	tbl_2.InstancesOffset = 0
	Import_upvr(tbl_2)
	return ReadParameters_upvw(arg1.Reads)
end
local TableToFunctions_upvw
function ParametersToFunctions_upvw(arg1) -- Line 148, Named "ParametersToFunctions"
	--[[ Upvalues[3]:
		[1]: TableToFunctions_upvw (read and write)
		[2]: Reads_upvr (readonly)
		[3]: Writes_upvr (readonly)
	]]
	for i, v in ipairs(arg1) do
		if type(v) == "table" then
			local TableToFunctions_result1, TableToFunctions_result2 = TableToFunctions_upvw(v)
			table.create(#arg1)[i] = TableToFunctions_result1
			table.create(#arg1)[i] = TableToFunctions_result2
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.create(#arg1)[i] = Reads_upvr[v]
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.create(#arg1)[i] = Writes_upvr[v]
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	return table.create(#arg1), table.create(#arg1)
end
local NumberU16_upvr_2 = Reads_upvr.NumberU16
local NumberU16_upvr = Writes_upvr.NumberU16
function TableToFunctions_upvw(arg1) -- Line 160, Named "TableToFunctions"
	--[[ Upvalues[5]:
		[1]: TableToFunctions_upvw (read and write)
		[2]: Reads_upvr (readonly)
		[3]: Writes_upvr (readonly)
		[4]: NumberU16_upvr_2 (readonly)
		[5]: NumberU16_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if #arg1 == 1 then
		local _1 = arg1[1]
		local var66_upvw
		local var67_upvw
		if type(_1) == "table" then
			local TableToFunctions_result1_3, TableToFunctions_result2_3 = TableToFunctions_upvw(_1)
			var66_upvw = TableToFunctions_result1_3
			var67_upvw = TableToFunctions_result2_3
		else
			var66_upvw = Reads_upvr[_1]
			var67_upvw = Writes_upvr[_1]
		end
		return function() -- Line 169
			--[[ Upvalues[2]:
				[1]: NumberU16_upvr_2 (copied, readonly)
				[2]: var66_upvw (read and write)
			]]
			local var47_result1 = NumberU16_upvr_2()
			local table_create_result1_4 = table.create(var47_result1)
			for i_2 = 1, var47_result1 do
				table_create_result1_4[i_2] = var66_upvw()
			end
			return table_create_result1_4
		end, function(arg1_2) -- Line 175
			--[[ Upvalues[2]:
				[1]: NumberU16_upvr (copied, readonly)
				[2]: var67_upvw (read and write)
			]]
			NumberU16_upvr(#arg1_2)
			for _, v_2 in arg1_2 do
				var67_upvw(v_2)
			end
		end
	end
	for i_4, _ in arg1 do
		table.insert({}, i_4)
		local var79_upvr
	end
	table.sort(var79_upvr)
	for i_5, v_4 in var79_upvr do
		local var80 = arg1[v_4]
		if type(var80) == "table" then
			local TableToFunctions_result1_2, TableToFunctions_result2_2 = TableToFunctions_upvw(var80)
			table.create(#var79_upvr)[i_5] = TableToFunctions_result1_2
			table.create(#var79_upvr)[i_5] = TableToFunctions_result2_2
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.create(#var79_upvr)[i_5] = Reads_upvr[var80]
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.create(#var79_upvr)[i_5] = Writes_upvr[var80]
		end
	end
	local table_create_result1_2_upvr = table.create(#var79_upvr)
	local table_create_result1_3_upvr = table.create(#var79_upvr)
	return function() -- Line 191
		--[[ Upvalues[2]:
			[1]: table_create_result1_2_upvr (readonly)
			[2]: var79_upvr (readonly)
		]]
		local module = {}
		for i_6, v_5 in table_create_result1_2_upvr do
			module[var79_upvr[i_6]] = v_5()
		end
		return module
	end, function(arg1_3) -- Line 196
		--[[ Upvalues[2]:
			[1]: table_create_result1_3_upvr (readonly)
			[2]: var79_upvr (readonly)
		]]
		for i_7, v_6 in table_create_result1_3_upvr do
			v_6(arg1_3[var79_upvr[i_7]])
		end
	end
end
function ReadParameters_upvw(arg1) -- Line 203, Named "ReadParameters"
	local table_create_result1 = table.create(#arg1)
	for i_8, v_7 in arg1 do
		table_create_result1[i_8] = v_7()
	end
	return table.unpack(table_create_result1)
end
function WriteParameters_upvw(arg1, arg2) -- Line 209, Named "WriteParameters"
	for i_9, v_8 in arg1 do
		v_8(arg2[i_9])
	end
end
function Timeout_upvw(arg1, arg2, arg3) -- Line 213, Named "Timeout"
	task.defer(arg1[arg2].Yielded, arg3)
	arg1[arg2] = nil
end
if RunService_upvr:IsServer() then
	var29_upvw = {}
	local var101_upvw = var29_upvw
	var28_upvw = {}
	local var102_upvw = var28_upvw
	var16_upvw = 0
	var18_upvw = Instance.new("RemoteEvent", game.ReplicatedStorage)
	local var103_upvw = var18_upvw
	var103_upvw.Name = "4u39fh-2n84bf-1mfo4b"
	local tbl_6_upvr = {}
	local function var133_upvr(arg1, arg2, arg3, ...) -- Line 263
		--[[ Upvalues[6]:
			[1]: RunService_upvr (readonly)
			[2]: Import_upvr (readonly)
			[3]: var101_upvw (read and write)
			[4]: NumberU8_upvr_2 (readonly)
			[5]: WriteParameters_upvw (read and write)
			[6]: Export_upvr (readonly)
		]]
		if arg1.OnServerInvoke == nil then
			if RunService_upvr:IsStudio() then
				warn("OnServerInvoke not found for packet:", arg1.Name, "discarding event:", ...)
			end
		else
			if arg2.Parent == nil then return end
			if not var101_upvw[arg2] then
			end
			Import_upvr({
				Buffer = buffer.create(128);
				BufferLength = 128;
				BufferOffset = 0;
				Instances = {};
				InstancesOffset = 0;
			})
			NumberU8_upvr_2(arg1.Id)
			NumberU8_upvr_2(arg3 + 128)
			WriteParameters_upvw(arg1.ResponseWrites, {arg1.OnServerInvoke(arg2, ...)})
			var101_upvw[arg2] = Export_upvr()
		end
	end
	local Ended_upvr = any_import_result1.Ended
	local NumberU8_upvr = Reads_upvr.NumberU8
	local function var113_upvr(arg1, arg2, arg3) -- Line 274
		--[[ Upvalues[10]:
			[1]: tbl_6_upvr (readonly)
			[2]: RunService_upvr (readonly)
			[3]: Import_upvr (readonly)
			[4]: Ended_upvr (readonly)
			[5]: tbl_11_upvr (readonly)
			[6]: NumberU8_upvr (readonly)
			[7]: any_import_result1_upvr_2 (readonly)
			[8]: var133_upvr (readonly)
			[9]: ReadParameters_upvw (read and write)
			[10]: var102_upvw (read and write)
		]]
		local var116 = (tbl_6_upvr[arg1] or 0) + math.max(buffer.len(arg2), 800)
		if 8000 < var116 then
			if RunService_upvr:IsStudio() then
				warn(arg1.Name, "is exceeding the data/rate limit; some events may be dropped")
			end
		else
			tbl_6_upvr[arg1] = var116
			local tbl_9 = {}
			tbl_9.Buffer = arg2
			tbl_9.BufferLength = buffer.len(arg2)
			tbl_9.BufferOffset = 0
			local var118 = arg3
			if not var118 then
				var118 = {}
			end
			tbl_9.Instances = var118
			tbl_9.InstancesOffset = 0
			Import_upvr(tbl_9)
			while Ended_upvr() == false do
				local var119 = tbl_11_upvr[NumberU8_upvr()]
				if var119.ResponseReads then
					local var115_result1_2 = NumberU8_upvr()
					if var115_result1_2 < 128 then
						any_import_result1_upvr_2:Defer(var133_upvr, var119, arg1, var115_result1_2, ReadParameters_upvw(var119.Reads))
					else
						local var121 = var115_result1_2 - 128
						local var122 = var102_upvw[arg1][var121]
						if var122 then
							task.cancel(var122.Timeout)
							task.defer(var122.Yielded, ReadParameters_upvw(var119.ResponseReads))
							var102_upvw[arg1][var121] = nil
						elseif RunService_upvr:IsStudio() then
							warn("Response thread not found for packet:", var119.Name, "discarding response:", ReadParameters_upvw(var119.ResponseReads))
						else
							ReadParameters_upvw(var119.ResponseReads)
						end
					end
				else
					var119.OnServerEvent:Fire(arg1, ReadParameters_upvw(var119.Reads))
				end
			end
		end
	end
	var103_upvw.OnServerEvent:Connect(function(arg1, ...) -- Line 305
		--[[ Upvalues[2]:
			[1]: var113_upvr (readonly)
			[2]: RunService_upvr (readonly)
		]]
		local _, pcall_result2 = pcall(var113_upvr, arg1, ...)
		if pcall_result2 and RunService_upvr:IsStudio() then
			warn(arg1.Name, pcall_result2)
		end
	end)
	game:GetService("Players").PlayerRemoving:Connect(function(arg1) -- Line 310
		--[[ Upvalues[3]:
			[1]: var101_upvw (read and write)
			[2]: var102_upvw (read and write)
			[3]: tbl_6_upvr (readonly)
		]]
		var101_upvw[arg1] = nil
		var102_upvw[arg1] = nil
		tbl_6_upvr[arg1] = nil
	end)
	local task_spawn_result1_upvr = task.spawn(function() -- Line 234
		--[[ Upvalues[4]:
			[1]: tbl_8_upvw (read and write)
			[2]: var103_upvw (read and write)
			[3]: var101_upvw (read and write)
			[4]: tbl_6_upvr (readonly)
		]]
		while true do
			coroutine.yield()
			if 0 < tbl_8_upvw.BufferOffset then
				local buffer_create_result1 = buffer.create(tbl_8_upvw.BufferOffset)
				buffer.copy(buffer_create_result1, 0, tbl_8_upvw.Buffer, 0, tbl_8_upvw.BufferOffset)
				if tbl_8_upvw.InstancesOffset == 0 then
					var103_upvw:FireAllClients(buffer_create_result1)
				else
					var103_upvw:FireAllClients(buffer_create_result1, tbl_8_upvw.Instances)
					tbl_8_upvw.InstancesOffset = 0
					table.clear(tbl_8_upvw.Instances)
				end
				tbl_8_upvw.BufferOffset = 0
			end
			for i_10, v_9 in var101_upvw do
				local buffer_create_result1_3 = buffer.create(v_9.BufferOffset)
				buffer.copy(buffer_create_result1_3, 0, v_9.Buffer, 0, v_9.BufferOffset)
				if v_9.InstancesOffset == 0 then
					var103_upvw:FireClient(i_10, buffer_create_result1_3)
				else
					var103_upvw:FireClient(i_10, buffer_create_result1_3, v_9.Instances)
				end
			end
			table.clear(var101_upvw)
			table.clear(tbl_6_upvr)
		end
	end)
	RunService_upvr.Heartbeat:Connect(function(arg1) -- Line 316
		--[[ Upvalues[1]:
			[1]: task_spawn_result1_upvr (readonly)
		]]
		task.defer(task_spawn_result1_upvr)
	end)
else
	tbl_6_upvr = {}
	local var129_upvw = tbl_6_upvr
	task_spawn_result1_upvr = 0
	var129_upvw.Index = task_spawn_result1_upvr
	var25_upvw = var129_upvw
	task_spawn_result1_upvr = game
	var129_upvw = task_spawn_result1_upvr.ReplicatedStorage
	var133_upvr = "4u39fh-2n84bf-1mfo4b"
	var129_upvw = var129_upvw:WaitForChild(var133_upvr)
	var103_upvw = var129_upvw
	local var130_upvw = var103_upvw
	var129_upvw = 0
	task_spawn_result1_upvr = task.spawn
	function var133_upvr() -- Line 322
		--[[ Upvalues[2]:
			[1]: tbl_8_upvw (read and write)
			[2]: var130_upvw (read and write)
		]]
		while true do
			coroutine.yield()
			if 0 < tbl_8_upvw.BufferOffset then
				local buffer_create_result1_2 = buffer.create(tbl_8_upvw.BufferOffset)
				buffer.copy(buffer_create_result1_2, 0, tbl_8_upvw.Buffer, 0, tbl_8_upvw.BufferOffset)
				if tbl_8_upvw.InstancesOffset == 0 then
					var130_upvw:FireServer(buffer_create_result1_2)
				else
					var130_upvw:FireServer(buffer_create_result1_2, tbl_8_upvw.Instances)
					tbl_8_upvw.InstancesOffset = 0
					table.clear(tbl_8_upvw.Instances)
				end
				tbl_8_upvw.BufferOffset = 0
			end
		end
	end
	task_spawn_result1_upvr = task_spawn_result1_upvr(var133_upvr)
	function var133_upvr(arg1, arg2, ...) -- Line 340
		--[[ Upvalues[5]:
			[1]: Import_upvr (readonly)
			[2]: tbl_8_upvw (read and write)
			[3]: NumberU8_upvr_2 (readonly)
			[4]: WriteParameters_upvw (read and write)
			[5]: Export_upvr (readonly)
		]]
		if arg1.OnClientInvoke == nil then
			warn("OnClientInvoke not found for packet:", arg1.Name, "discarding event:", ...)
		else
			Import_upvr(tbl_8_upvw)
			NumberU8_upvr_2(arg1.Id)
			NumberU8_upvr_2(arg2 + 128)
			WriteParameters_upvw(arg1.ResponseWrites, {arg1.OnClientInvoke(...)})
			tbl_8_upvw = Export_upvr()
		end
	end
	var113_upvr = var130_upvw.OnClientEvent
	var113_upvr = var113_upvr:Connect
	var113_upvr(function(arg1, arg2) -- Line 350
		--[[ Upvalues[8]:
			[1]: Import_upvr (readonly)
			[2]: Ended_upvr (readonly)
			[3]: tbl_11_upvr (readonly)
			[4]: NumberU8_upvr (readonly)
			[5]: any_import_result1_upvr_2 (readonly)
			[6]: var133_upvr (readonly)
			[7]: ReadParameters_upvw (read and write)
			[8]: var25_upvw (read and write)
		]]
		local tbl_5 = {}
		tbl_5.Buffer = arg1
		tbl_5.BufferLength = buffer.len(arg1)
		tbl_5.BufferOffset = 0
		local var137 = arg2
		if not var137 then
			var137 = {}
		end
		tbl_5.Instances = var137
		tbl_5.InstancesOffset = 0
		Import_upvr(tbl_5)
		while Ended_upvr() == false do
			local var138 = tbl_11_upvr[NumberU8_upvr()]
			if var138.ResponseReads then
				local var115_result1 = NumberU8_upvr()
				if var115_result1 < 128 then
					any_import_result1_upvr_2:Defer(var133_upvr, var138, var115_result1, ReadParameters_upvw(var138.Reads))
				else
					local var140 = var115_result1 - 128
					local var141 = var25_upvw[var140]
					if var141 then
						task.cancel(var141.Timeout)
						task.defer(var141.Yielded, ReadParameters_upvw(var138.ResponseReads))
						var25_upvw[var140] = nil
					else
						warn("Response thread not found for packet:", var138.Name, "discarding response:", ReadParameters_upvw(var138.ResponseReads))
					end
				end
			else
				var138.OnClientEvent:Fire(ReadParameters_upvw(var138.Reads))
			end
		end
	end)
	var113_upvr = var130_upvw.AttributeChanged
	var113_upvr = var113_upvr:Connect
	var113_upvr(function(arg1) -- Line 375
		--[[ Upvalues[2]:
			[1]: tbl_11_upvr (readonly)
			[2]: var130_upvw (read and write)
		]]
		local var143 = tbl_11_upvr[arg1]
		if var143 then
			if var143.Id then
				tbl_11_upvr[var143.Id] = nil
			end
			var143.Id = var130_upvw:GetAttribute(arg1)
			if var143.Id then
				tbl_11_upvr[var143.Id] = var143
			end
		end
	end)
	var113_upvr = RunService_upvr.Heartbeat
	var113_upvr = var113_upvr:Connect
	var113_upvr(function(arg1) -- Line 384
		--[[ Upvalues[2]:
			[1]: var129_upvw (read and write)
			[2]: task_spawn_result1_upvr (readonly)
		]]
		var129_upvw += arg1
		if (1/60) < var129_upvw then
			var129_upvw %= (1/60)
			task.defer(task_spawn_result1_upvr)
		end
	end)
end
return setmetatable(any_import_result1.Types, {
	__call = function(arg1, arg2, ...) -- Line 51, Named "Constructor"
		--[[ Upvalues[7]:
			[1]: tbl_11_upvr (readonly)
			[2]: tbl_4_upvr (readonly)
			[3]: RunService_upvr (readonly)
			[4]: var16_upvw (read and write)
			[5]: any_import_result1_upvr (readonly)
			[6]: var18_upvw (read and write)
			[7]: ParametersToFunctions_upvw (read and write)
		]]
		local var19 = tbl_11_upvr[arg2]
		if var19 then
			return var19
		end
		local setmetatable_result1 = setmetatable({}, tbl_4_upvr)
		setmetatable_result1.Name = arg2
		if RunService_upvr:IsServer() then
			setmetatable_result1.Id = var16_upvw
			setmetatable_result1.OnServerEvent = any_import_result1_upvr()
			var18_upvw:SetAttribute(arg2, var16_upvw)
			tbl_11_upvr[var16_upvw] = setmetatable_result1
			var16_upvw += 1
		else
			setmetatable_result1.Id = var18_upvw:GetAttribute(arg2)
			setmetatable_result1.OnClientEvent = any_import_result1_upvr()
			if setmetatable_result1.Id then
				tbl_11_upvr[setmetatable_result1.Id] = setmetatable_result1
			end
		end
		local ParametersToFunctions_result1_2, ParametersToFunctions_result2 = ParametersToFunctions_upvw(table.pack(...))
		setmetatable_result1.Reads = ParametersToFunctions_result1_2
		setmetatable_result1.Writes = ParametersToFunctions_result2
		tbl_11_upvr[setmetatable_result1.Name] = setmetatable_result1
		return setmetatable_result1
	end;
})