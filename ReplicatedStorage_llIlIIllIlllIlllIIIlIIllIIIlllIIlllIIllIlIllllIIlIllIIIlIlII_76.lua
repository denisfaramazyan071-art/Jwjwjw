-- Path: ReplicatedStorage.llIlIIllIlllIlllIIIlIIllIIIlllIIlllIIllIlIllllIIlIllIIIlIlII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:53
-- Luau version 6, Types version 3
-- Time taken: 0.010266 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local tbl_upvr = {}
local module = {
	destroy = function(arg1) -- Line 11, Named "destroy"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		if tbl_upvr[arg1] then
			tbl_upvr[arg1]:Destroy()
			tbl_upvr[arg1] = nil
		end
	end;
	setProjectileVisible = function(arg1, arg2, arg3) -- Line 19, Named "setProjectileVisible"
		local Character_2 = arg1.Character
		if Character_2 and Character_2:FindFirstChild("ItemFolder") and Character_2:FindFirstChild("ItemFolder"):FindFirstChild(arg2) then
			local var19
			if Character_2:FindFirstChild("ItemFolder"):FindFirstChild(arg2):FindFirstChild("rocket") then
				local rocket_2 = Character_2:FindFirstChild("ItemFolder"):FindFirstChild(arg2):FindFirstChild("rocket")
				var19 = 1
				if arg3 == true then
					var19 = 0
				end
				rocket_2.Transparency = var19
				for _, v in pairs(rocket_2:GetChildren()) do
					v.Transparency = var19
				end
			end
		end
	end;
}
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("lIIlIIIlllllIllIIllllIllIlIIIIlIIIIIlllIIIIllIlIllIlIlIIlIII")
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IIIIlIIllIlIlIllIIIlIlllIlIlIIllllIllIlIIlIllIIIIlIIIIIlIlII")
function module.createInstance(arg1, arg2) -- Line 50
	--[[ Upvalues[3]:
		[1]: any_import_result1_upvr_2 (readonly)
		[2]: any_import_result1_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var50
	if type(arg1) == "string" then
		var50 = game.Players:FindFirstChild(var50)
		if not var50 then return end
	end
	if game.Players.LocalPlayer ~= var50 then
	end
	if not var50.Character then
		local any_Wait_result1 = var50.CharacterAdded:Wait()
	end
	if any_Wait_result1:FindFirstChild("ItemFolder") and any_Wait_result1:FindFirstChild("ItemFolder"):FindFirstChild(arg2) then
	else
		local clone = any_import_result1_upvr_2.characterModels[arg2]:Clone()
		local Motor6D_2 = Instance.new("Motor6D")
		Motor6D_2.Part0 = any_Wait_result1:WaitForChild("Right Arm")
		Motor6D_2.Part1 = clone.PrimaryPart
		Motor6D_2.C1 = any_import_result1_upvr.items[arg2].rotations.character
		Motor6D_2.Parent = clone
		if not any_Wait_result1:FindFirstChild("ItemFolder") then
			local Folder = Instance.new("Folder")
			Folder.Name = "ItemFolder"
			Folder.Parent = any_Wait_result1
		else
			any_Wait_result1:FindFirstChild("ItemFolder"):ClearAllChildren()
		end
		for _, v_2 in pairs(clone:GetDescendants()) do
			if v_2:IsA("BasePart") then
				v_2.CanQuery = false
			end
		end
		clone.Parent = any_Wait_result1:FindFirstChild("ItemFolder")
		tbl_upvr[var50] = clone
	end
end
return module