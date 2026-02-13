-- Path: ReplicatedStorage.IlIllllllIIIIIllllIIlllllIlIlIlIIllllIlIllIIIlIllIlIlllIIIll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:00:49
-- Luau version 6, Types version 3
-- Time taken: 0.005634 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local module = {}
local function _(arg1, arg2) -- Line 12, Named "GetEnumNormalFromRay"
	local var17
	for _, v in pairs({{
		Position = arg1.CFrame * CFrame.new(0, 0, -arg1.Size.Z / 2);
		EnumNormal = Enum.NormalId.Front;
	}, {
		Position = arg1.CFrame * CFrame.new(0, arg1.Size.Y / 2, 0);
		EnumNormal = Enum.NormalId.Back;
	}, {
		Position = arg1.CFrame * CFrame.new(0, arg1.Size.Y / 2, 0);
		EnumNormal = Enum.NormalId.Top;
	}, {
		Position = arg1.CFrame * CFrame.new(0, -arg1.Size.Y / 2, 0);
		EnumNormal = Enum.NormalId.Bottom;
	}, {
		Position = arg1.CFrame * CFrame.new(arg1.Size.X / 2, 0, 0);
		EnumNormal = Enum.NormalId.Right;
	}, {
		Position = arg1.CFrame * CFrame.new(-arg1.Size.X / 2, 0, 0);
		EnumNormal = Enum.NormalId.Left;
	}}) do
		v.Position = v.Position.Position
		if (v.Position - arg2).magnitude < (var17.Position - arg2).magnitude and math.deg(math.acos(math.clamp(Vector3.fromNormalId(v.EnumNormal):Dot((v.Position - arg2).unit), -1, 1))) < 90 then
			var17 = v
		end
	end
	return var17.EnumNormal
end
local any_new_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("lllllIIIlIllIIIlllIllIIIllIIIllIIllIIIllIIIIlllIIIIlIlIlIlIl").new(script.bullet, 100, workspace:WaitForChild("ignore"):WaitForChild("hits"))
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IlllIIIIIlllIlIllIlIllIIlllIlIIllIlIIIllIllIIlIIllIlllIIlIII")
function module.bullet(arg1, arg2, arg3, arg4) -- Line 46
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
	if 280 < (workspace.CurrentCamera.CFrame.Position - arg2).Magnitude then return end
	local any_GetPart_result1_upvr = any_new_result1_upvr:GetPart()
	any_GetPart_result1_upvr.CFrame = CFrame.new(arg2, arg2 + arg3)
	delay(20, function() -- Line 57
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: any_GetPart_result1_upvr (readonly)
		]]
		any_new_result1_upvr:ReturnPart(any_GetPart_result1_upvr)
	end)
	pcall(function() -- Line 61
		--[[ Upvalues[2]:
			[1]: any_GetPart_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		any_GetPart_result1_upvr.BulletHole.Color3 = arg1.Color
	end)
	if arg1:IsDescendantOf(workspace:FindFirstChild("ignoreFolder__D")) then
		-- KONSTANTWARNING: GOTO [129] #89
	end
	-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [52] 39. Error Block 44 start (CF ANALYSIS FAILED)
	if arg1.Parent:FindFirstChildOfClass("Humanoid") or arg1:IsDescendantOf(workspace.bodies) then
		any_GetPart_result1_upvr.Blood:Emit(5)
		-- KONSTANTWARNING: GOTO [129] #89
	end
	-- KONSTANTERROR: [52] 39. Error Block 44 end (CF ANALYSIS FAILED)
end
return module