-- Path: ReplicatedStorage.lllllIIIlIllIIIlllIllIIIllIIIllIIllIIIllIIIIlllIIIIlIlIlIlIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:05
-- Luau version 6, Types version 3
-- Time taken: 0.011574 seconds

local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("llllIIIIlIIIlIIIIIllllIlIIlIIlIllIIlIIIlllIlllIIIIIllllIlIlI")
local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.__type = "PartCache"
local cframe_upvr = CFrame.new(0, -20, 0)
local function _(arg1, arg2) -- Line 61, Named "assertwarn"
	if arg1 == false then
		warn(arg2)
	end
end
local function _(arg1, arg2) -- Line 68, Named "MakeFromTemplate"
	--[[ Upvalues[1]:
		[1]: cframe_upvr (readonly)
	]]
	local clone_2 = arg1:Clone()
	clone_2.CFrame = cframe_upvr
	clone_2.Anchored = true
	clone_2.Parent = arg2
	return clone_2
end
function module_upvr.new(arg1, arg2, arg3) -- Line 78
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
		[3]: cframe_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var9
	if not arg3 then
	end
	if 0 >= arg2 then
		var9 = false
	else
		var9 = true
	end
	assert(var9, "PrecreatedParts can not be negative!")
	if arg2 == 0 then
	else
	end
	if true == false then
		var9 = warn
		var9("PrecreatedParts is 0! This may have adverse effects when initially using the cache.")
	end
	if arg1.Archivable == false then
		var9 = warn
		var9("The template's Archivable property has been set to false, which prevents it from being cloned. It will temporarily be set to true.")
	end
	var9 = true
	arg1.Archivable = var9
	var9 = arg1:Clone()
	arg1.Archivable = arg1.Archivable
	local var10 = var9
	local tbl = {
		Open = {};
		InUse = {};
		CurrentCacheParent = workspace;
		Template = var10;
		ExpansionSize = 100;
	}
	setmetatable(tbl, module_upvr)
	for _ = 1, arg2 or 5 do
		local clone = var10:Clone()
		clone.CFrame = cframe_upvr
		clone.Anchored = true
		clone.Parent = tbl.CurrentCacheParent
		any_import_result1_upvr.insert(tbl.Open, clone)
		local var13
	end
	var13.Template.Parent = nil
	return var13
end
function module_upvr.GetPart(arg1) -- Line 116
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
		[3]: cframe_upvr (readonly)
	]]
	local var20
	if getmetatable(arg1) ~= module_upvr then
		var20 = false
	else
		var20 = true
	end
	assert(var20, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("GetPart", "PartCache.new"))
	var20 = arg1.Open
	if #var20 == 0 then
		var20 = 1
		for _ = 1, arg1.ExpansionSize, var20 do
			local clone_4 = arg1.Template:Clone()
			clone_4.CFrame = cframe_upvr
			clone_4.Anchored = true
			clone_4.Parent = arg1.CurrentCacheParent
			any_import_result1_upvr.insert(arg1.Open, clone_4)
		end
	end
	var20 = arg1.Open
	local var22 = var20[#arg1.Open]
	var20 = arg1.Open
	var20[#arg1.Open] = nil
	var20 = any_import_result1_upvr.insert
	var20(arg1.InUse, var22)
	var20 = var22:FindFirstChild("particles")
	if var20 then
		var20 = pairs(var22:FindFirstChild("particles"):GetChildren())
		for _, v in pairs(var22:FindFirstChild("particles"):GetChildren()) do
			if v:IsA("ParticleEmitter") then
				v.Enabled = true
				v:Emit(1)
			elseif v:IsA("Sound") then
				v:Play()
			end
		end
	end
	return var22
end
function module_upvr.ReturnPart(arg1, arg2) -- Line 145
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
		[3]: cframe_upvr (readonly)
	]]
	local var30
	if getmetatable(arg1) ~= module_upvr then
		var30 = false
	else
		var30 = true
	end
	assert(var30, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("ReturnPart", "PartCache.new"))
	if arg2:FindFirstChild("particles") then
		var30 = arg2:FindFirstChild("particles"):GetChildren()
		local pairs_result1_2, pairs_result2_2, pairs_result3 = pairs(var30)
		for _, v_2 in pairs_result1_2, pairs_result2_2, pairs_result3 do
			if v_2:IsA("ParticleEmitter") then
				v_2.Enabled = false
			elseif v_2:IsA("Sound") then
				v_2:Stop()
			end
		end
	end
	pairs_result2_2 = any_import_result1_upvr
	pairs_result2_2 = arg1.InUse
	local any_indexOf_result1 = pairs_result2_2.indexOf(pairs_result2_2, arg2)
	if any_indexOf_result1 ~= nil then
		pairs_result2_2 = any_import_result1_upvr.remove
		pairs_result2_2(arg1.InUse, any_indexOf_result1)
		pairs_result2_2 = any_import_result1_upvr.insert
		pairs_result2_2(arg1.Open, arg2)
		pairs_result2_2 = cframe_upvr
		arg2.CFrame = pairs_result2_2
		pairs_result2_2 = true
		arg2.Anchored = pairs_result2_2
	else
		pairs_result2_2 = error
		pairs_result2_2("Attempted to return part \""..arg2.Name.."\" ("..arg2:GetFullName()..") to the cache, but it's not in-use! Did you call this on the wrong part?")
	end
end
function module_upvr.SetCacheParent(arg1, arg2) -- Line 171
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var39
	if getmetatable(arg1) ~= module_upvr then
		var39 = false
	else
		var39 = true
	end
	assert(var39, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("SetCacheParent", "PartCache.new"))
	var39 = arg2:IsDescendantOf(workspace)
	if not var39 then
		if arg2 ~= workspace then
			var39 = false
		else
			var39 = true
		end
	end
	assert(var39, "Cache parent is not a descendant of Workspace! Parts should be kept where they will remain in the visible world.")
	arg1.CurrentCacheParent = arg2
	var39 = 1
	for i_5 = 1, #arg1.Open, var39 do
		arg1.Open[i_5].Parent = arg2
	end
	var39 = 1
	for i_6 = 1, #arg1.InUse, var39 do
		arg1.InUse[i_6].Parent = arg2
	end
end
function module_upvr.Expand(arg1, arg2) -- Line 185
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
		[3]: cframe_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var44
	if getmetatable(arg1) ~= module_upvr then
		var44 = false
	else
		var44 = true
	end
	assert(var44, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("Expand", "PartCache.new"))
	if arg2 == nil then
	end
	var44 = 1
	for _ = 1, arg1.ExpansionSize, var44 do
		local clone_3 = arg1.Template:Clone()
		clone_3.CFrame = cframe_upvr
		clone_3.Anchored = true
		clone_3.Parent = arg1.CurrentCacheParent
		any_import_result1_upvr.insert(arg1.Open, clone_3)
	end
end
function module_upvr.Dispose(arg1) -- Line 197
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var50
	if getmetatable(arg1) ~= module_upvr then
		var50 = false
	else
		var50 = true
	end
	assert(var50, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("Dispose", "PartCache.new"))
	var50 = 1
	for i_8 = 1, #arg1.Open, var50 do
		arg1.Open[i_8]:Destroy()
	end
	var50 = 1
	for i_9 = 1, #arg1.InUse, var50 do
		arg1.InUse[i_9]:Destroy()
	end
	arg1.Template:Destroy()
	arg1.Open = {}
	arg1.InUse = {}
	arg1.CurrentCacheParent = nil
	arg1.GetPart = nil
	arg1.ReturnPart = nil
	arg1.SetCacheParent = nil
	arg1.Expand = nil
	arg1.Dispose = nil
end
return module_upvr