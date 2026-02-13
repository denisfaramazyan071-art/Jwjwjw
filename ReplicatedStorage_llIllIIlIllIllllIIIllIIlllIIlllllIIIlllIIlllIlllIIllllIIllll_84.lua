-- Path: ReplicatedStorage.llIllIIlIllIllllIIIllIIlllIIlllllIIIlllIIlllIlllIIllllIIllll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:02:00
-- Luau version 6, Types version 3
-- Time taken: 0.014469 seconds

local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("lIIIIlIlllllllIIlIIIllllIIIIIlIIllllllIIllIlllIlIIIllllIIlll")
local RunService_upvr = game:GetService("RunService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local UserInputService_upvr = game:GetService("UserInputService")
local var5_upvw
local function _(arg1, arg2, arg3) -- Line 13, Named "lerp"
	return arg1 + (arg2 - arg1) * arg3
end
local module_upvr = {}
local var8_upvw
local var9_upvw
local var10_upvw = 0
local var11_upvw = 0
local CurrentCamera_upvr = game:GetService("Workspace").CurrentCamera
local var13_upvw = 0
local var14_upvw = 0
local var15_upvw = 0
local var16_upvw = 0
local TouchEnabled_upvr = UserInputService_upvr.TouchEnabled
local var18_upvw = 10
local var19_upvw = 10
local function var7_upvr(arg1) -- Line 20
	--[[ Upvalues[16]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: var8_upvw (read and write)
		[4]: var9_upvw (read and write)
		[5]: var10_upvw (read and write)
		[6]: var11_upvw (read and write)
		[7]: CurrentCamera_upvr (readonly)
		[8]: var13_upvw (read and write)
		[9]: var14_upvw (read and write)
		[10]: var15_upvw (read and write)
		[11]: var16_upvw (read and write)
		[12]: TouchEnabled_upvr (readonly)
		[13]: UserInputService_upvr (readonly)
		[14]: var18_upvw (read and write)
		[15]: var19_upvw (read and write)
		[16]: module_upvr (readonly)
	]]
	if LocalPlayer_upvr.Character:FindFirstChildOfClass("Humanoid") then
		pcall(function() -- Line 24
			--[[ Upvalues[16]:
				[1]: var5_upvw (copied, read and write)
				[2]: arg1 (read and write)
				[3]: var8_upvw (copied, read and write)
				[4]: var9_upvw (copied, read and write)
				[5]: var10_upvw (copied, read and write)
				[6]: var11_upvw (copied, read and write)
				[7]: CurrentCamera_upvr (copied, readonly)
				[8]: var13_upvw (copied, read and write)
				[9]: var14_upvw (copied, read and write)
				[10]: var15_upvw (copied, read and write)
				[11]: var16_upvw (copied, read and write)
				[12]: LocalPlayer_upvr (copied, readonly)
				[13]: TouchEnabled_upvr (copied, readonly)
				[14]: UserInputService_upvr (copied, readonly)
				[15]: var18_upvw (copied, read and write)
				[16]: var19_upvw (copied, read and write)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local magnitude_2 = var5_upvw.Velocity.magnitude
			arg1 *= 60
			var8_upvw = math.random(1, 2)
			var9_upvw = math.random(1, 2)
			local var31
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				var31 = var32 + ((math.cos(tick() * 0.5 * var8_upvw)) * (math.random(5, 20) / 200) * arg1 - var32) * (0.05 * arg1)
				local var32 = var10_upvw
				return var31
			end
			if arg1 > 2 or not INLINED_4() then
				var31 = 0
			end
			var10_upvw = var31
			local function INLINED_5() -- Internal function, doesn't exist in bytecode
				var31 = var33 + ((math.cos(tick() * 0.5 * var9_upvw)) * (math.random(2, 10) / 200) * arg1 - var33) * (0.05 * arg1)
				local var33 = var11_upvw
				return var31
			end
			if arg1 > 2 or not INLINED_5() then
				var31 = 0
			end
			var11_upvw = var31
			var31 = CurrentCamera_upvr
			var31.CFrame *= CFrame.Angles(0, 0, math.rad(var13_upvw)) * CFrame.Angles(math.rad(math.clamp(var14_upvw * arg1, -0.15, 0.15)), math.rad(math.clamp(var15_upvw * arg1, -0.5, 0.5)), var16_upvw)
			local var34 = var16_upvw
			if not var5_upvw or not var5_upvw.Velocity then
			end
			var31 = math.clamp(var34 + (-CurrentCamera_upvr.CFrame:VectorToObjectSpace(Vector3.new() / math.max(LocalPlayer_upvr.Character.Humanoid.WalkSpeed, 0.01)).X * 0.05 - var34) * (0.1 * arg1), -0.05, 0.05)
			var16_upvw = var31
			var31 = TouchEnabled_upvr
			if not var31 then
				var31 = arg1
				if var31 < 2 then
					local var35 = var13_upvw
					var31 = var35 + (math.clamp(UserInputService_upvr:GetMouseDelta().X / arg1 * 0.15, -2.5, 2.5) - var35) * (0.25 * arg1)
					var13_upvw = var31
				end
			end
			local var36 = var14_upvw
			var31 = var36 + (math.sin(tick() * var18_upvw) / 5 * math.min(1, var19_upvw / 10) - var36) * (0.25 * arg1)
			var14_upvw = var31
			local function INLINED_6() -- Internal function, doesn't exist in bytecode
				var31 = var37 + ((math.cos(tick() * 0.5 * math.floor(var18_upvw))) * (var18_upvw / 200) - var37) * (0.25 * arg1)
				local var37 = var15_upvw
				return var31
			end
			if 1 >= magnitude_2 or not INLINED_6() then
				local var38 = var15_upvw
				var31 = var38 + (0 - var38) * (0.05 * arg1)
			end
			var15_upvw = var31
			if 12 < magnitude_2 then
				var31 = 20
			elseif 0.1 < magnitude_2 then
				var31 = 12
			else
				var31 = 0
			end
			if 0.1 < magnitude_2 then
			elseif 0.1 < magnitude_2 then
			else
			end
			var18_upvw = var31
			var19_upvw = 0
		end)
	else
		module_upvr.disable()
	end
end
function module_upvr.enable() -- Line 63
	--[[ Upvalues[5]:
		[1]: var5_upvw (read and write)
		[2]: LocalPlayer_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: var7_upvr (readonly)
		[5]: any_import_result1_upvr (readonly)
	]]
	var5_upvw = LocalPlayer_upvr.Character:WaitForChild("HumanoidRootPart")
	RunService_upvr:UnbindFromRenderStep("CameraModel")
	RunService_upvr:BindToRenderStep("CameraModel", Enum.RenderPriority.Camera.Value + 1, var7_upvr)
	any_import_result1_upvr.update("deploy camera", "on")
end
function module_upvr.disable() -- Line 74
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
	]]
	RunService_upvr:UnbindFromRenderStep("CameraModel")
	any_import_result1_upvr.update("deploy camera", "off")
end
return module_upvr