-- Path: ReplicatedStorage.lIlIllIIIlllIIllIIlIIIIlllIlIIIIIlIlllIIlIIlllIIlllIIIllIlIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:52
-- Luau version 6, Types version 3
-- Time taken: 0.012687 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local any_import_result1_upvr_3 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("lllIIllllIlIlIIllIIIIIIIlllIIllIIllIIIIIlIIllllIIIlllIIIIlII")
local ContextActionService_upvr = game:GetService("ContextActionService")
local RunService_upvr = game:GetService("RunService")
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("lIlllllIllIIllllIIIIIlIIlllIIIIIIIlIlIIllllIIIlIIllIIlIIlIII")
local module_upvr = {
	enabled = false;
	renderStepConnection = nil;
	mobileButtonConnection = nil;
}
local function _(arg1, arg2, arg3) -- Line 25
	return arg1 + (arg2 - arg1) * arg3
end
local var8_upvw
local StarterPlayer_upvr = game:GetService("StarterPlayer")
local UserInputService_upvr = game:GetService("UserInputService")
local StarterGui_upvr = game:GetService("StarterGui")
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IIlIIIllIIIlllllIIllIlIIIllIIIIIlllIIllIllllIIlIlIllllllIIll")
function module_upvr.new() -- Line 30
	--[[ Upvalues[10]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr_3 (readonly)
		[3]: var8_upvw (read and write)
		[4]: StarterPlayer_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
		[6]: StarterGui_upvr (readonly)
		[7]: any_import_result1_upvr (readonly)
		[8]: any_import_result1_upvr_2 (readonly)
		[9]: ContextActionService_upvr (readonly)
		[10]: RunService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 46
		--[[ Upvalues[10]:
			[1]: module_upvr (copied, readonly)
			[2]: any_import_result1_upvr_3 (copied, readonly)
			[3]: var8_upvw (copied, read and write)
			[4]: StarterPlayer_upvr (copied, readonly)
			[5]: UserInputService_upvr (copied, readonly)
			[6]: StarterGui_upvr (copied, readonly)
			[7]: any_import_result1_upvr (copied, readonly)
			[8]: any_import_result1_upvr_2 (copied, readonly)
			[9]: ContextActionService_upvr (copied, readonly)
			[10]: RunService_upvr (copied, readonly)
		]]
		local SOME = game.Workspace:FindFirstChild("placeables"):FindFirstChild(game.Players.LocalPlayer.UserId.."-FPV")
		if not SOME then
		else
			local any_InvokeServer_result1_upvr = game.ReplicatedStorage.network.createDrone:InvokeServer()
			if any_InvokeServer_result1_upvr then
				local tbl_2_upvr = {}
				module_upvr.enabled = true
				any_import_result1_upvr_3.newDrone()
				game:GetService("TweenService"):Create(game.ReplicatedStorage.Kickback, TweenInfo.new(0.00001, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					Value = -50;
				}):Play()
				var8_upvw = workspace.CurrentCamera.CFrame
				StarterPlayer_upvr.CameraMaxZoomDistance = 0
				game.Players.LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
				UserInputService_upvr.MouseIconEnabled = false
				game.Lighting.Drone.Enabled = true
				game.Lighting.damage.Enabled = false
				workspace.CurrentCamera.CameraSubject = any_InvokeServer_result1_upvr.instance
				game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("static").DroneInstance.Value = any_InvokeServer_result1_upvr.instance
				game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("static").Enabled = true
				game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("chat").Enabled = false
				game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon").Enabled = false
				game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("blood").Enabled = false
				StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
				game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Captures, true)
				local Attachment = Instance.new("Attachment")
				Attachment.Visible = false
				Attachment.Parent = workspace.Terrain
				Attachment.CFrame = SOME.PrimaryPart.CFrame + Vector3.new(0, 2, 0)
				any_import_result1_upvr.attachment = Attachment
				any_import_result1_upvr.droneAudio = any_InvokeServer_result1_upvr.instance:WaitForChild("FPV"):WaitForChild("Audio"):WaitForChild("Sound")
				any_InvokeServer_result1_upvr.instance.PrimaryPart.AlignOrientation.Attachment1 = Attachment
				any_InvokeServer_result1_upvr.instance.PrimaryPart.AlignPosition.Attachment1 = Attachment
				for i_2, var27 in pairs(any_InvokeServer_result1_upvr.instance.PrimaryPart:GetDescendants()) do
					if var27:IsA("BasePart") and var27.Name ~= "Explosive" and not string.match(var27.Name, "Blade_") then
						var27.Transparency = 1
					end
				end
				if any_import_result1_upvr_2() == "mobile" then
					var27 = game.ReplicatedStorage.network
					i_2 = var27.mobileBind
					function var27(arg1, arg2, arg3) -- Line 141
						--[[ Upvalues[1]:
							[1]: any_import_result1_upvr (copied, readonly)
						]]
						if arg1 == 'A' or arg1 == 'W' or arg1 == 'D' or arg1 == 'E' or arg1 == 'Q' then
							local tbl = {
								KeyCode = Enum.KeyCode[arg1];
							}
							if arg2 == Enum.UserInputState.Begin then
								any_import_result1_upvr.InputBegan(tbl)
							elseif arg2 == Enum.UserInputState.End then
								any_import_result1_upvr.InputEnded(tbl)
							end
						end
					end
					module_upvr.mobileButtonConnection = i_2.Event:Connect(var27)
				end
				ContextActionService_upvr:BindActionAtPriority("fpv_controls", function(arg1, arg2, arg3) -- Line 129
					--[[ Upvalues[1]:
						[1]: any_import_result1_upvr (copied, readonly)
					]]
					if arg2 == Enum.UserInputState.Begin then
						any_import_result1_upvr.InputBegan(arg3)
					elseif arg2 == Enum.UserInputState.End then
						any_import_result1_upvr.InputEnded(arg3)
					end
					return Enum.ContextActionResult.Sink
				end, false, Enum.ContextActionPriority.High.Value, Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.Q, Enum.KeyCode.D, Enum.KeyCode.E, Enum.KeyCode.S)
				local var30_upvw = 0
				RunService_upvr:BindToRenderStep("fpv_rotate", Enum.RenderPriority.Camera.Value + 4, function(arg1) -- Line 190
					--[[ Upvalues[2]:
						[1]: UserInputService_upvr (copied, readonly)
						[2]: var30_upvw (read and write)
					]]
					local any_GetMouseDelta_result1 = UserInputService_upvr:GetMouseDelta()
					var30_upvw += any_GetMouseDelta_result1.X * 0.3
					var30_upvw = math.clamp(var30_upvw, -35, 35)
					workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * CFrame.Angles(0, 0, -math.rad(var30_upvw))
					if math.abs(any_GetMouseDelta_result1.X) < 0.1 then
						var30_upvw -= var30_upvw * 0.8 * arg1
					end
				end)
				local PrimaryPart_upvr = any_InvokeServer_result1_upvr.instance.PrimaryPart
				RunService_upvr:BindToRenderStep("fpv_loop", Enum.RenderPriority.Camera.Value + 5, function(arg1) -- Line 219
					--[[ Upvalues[1]:
						[1]: PrimaryPart_upvr (readonly)
					]]
					workspace.CurrentCamera.Focus = PrimaryPart_upvr.CFrame
					local any_ToOrientation_result1, any_ToOrientation_result2, any_ToOrientation_result3 = workspace.CurrentCamera.CFrame:ToOrientation()
					workspace.CurrentCamera.CFrame = CFrame.new(PrimaryPart_upvr.Position) * CFrame.fromOrientation(any_ToOrientation_result1, any_ToOrientation_result2, any_ToOrientation_result3)
					PrimaryPart_upvr.CFrame = CFrame.fromOrientation(any_ToOrientation_result1, any_ToOrientation_result2, any_ToOrientation_result3) + PrimaryPart_upvr.Position
				end)
				local RaycastParams_new_result1_upvr = RaycastParams.new()
				RaycastParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Exclude
				RaycastParams_new_result1_upvr.FilterDescendantsInstances = {any_InvokeServer_result1_upvr.instance, workspace:WaitForChild("ignore")}
				any_import_result1_upvr.droneSpeed = 45
				local back_upvr = any_InvokeServer_result1_upvr.instance:WaitForChild("FPV"):WaitForChild("Stabiliser"):WaitForChild("back")
				local front_upvr = any_InvokeServer_result1_upvr.instance:WaitForChild("FPV"):WaitForChild("Stabiliser"):WaitForChild("front")
				module_upvr.renderStepConnection = RunService_upvr.RenderStepped:Connect(function(...) -- Line 240
					--[[ Upvalues[7]:
						[1]: any_import_result1_upvr (copied, readonly)
						[2]: back_upvr (readonly)
						[3]: front_upvr (readonly)
						[4]: RaycastParams_new_result1_upvr (readonly)
						[5]: tbl_2_upvr (readonly)
						[6]: module_upvr (copied, readonly)
						[7]: any_InvokeServer_result1_upvr (readonly)
					]]
					any_import_result1_upvr.renderStepped(...)
					local WorldPosition = back_upvr.WorldPosition
					if workspace:Raycast(WorldPosition, front_upvr.WorldPosition - WorldPosition, RaycastParams_new_result1_upvr) then
						for i_3, v_3 in pairs(tbl_2_upvr) do
							v_3:Disconnect()
							tbl_2_upvr[i_3] = nil
						end
						module_upvr.destroy(any_InvokeServer_result1_upvr)
					end
				end)
				for _, v_4 in pairs(PrimaryPart_upvr:FindFirstChild("Explosive"):GetChildren()[1]:GetChildren()) do
					if v_4.Name == "Explosive" and v_4:IsA("BasePart") then
						tbl_2_upvr[v_4] = v_4.Touched:Connect(function(arg1) -- Line 273
							--[[ Upvalues[4]:
								[1]: PrimaryPart_upvr (readonly)
								[2]: tbl_2_upvr (readonly)
								[3]: module_upvr (copied, readonly)
								[4]: any_InvokeServer_result1_upvr (readonly)
							]]
							if not arg1:IsDescendantOf(workspace.ignore) and not arg1:IsDescendantOf(PrimaryPart_upvr) and not arg1:IsDescendantOf(game.Players.LocalPlayer.Character) then
								for i_5, v_5 in pairs(tbl_2_upvr) do
									v_5:Disconnect()
									tbl_2_upvr[i_5] = nil
								end
								module_upvr.destroy(any_InvokeServer_result1_upvr)
							end
						end)
					end
				end
				workspace.DescendantRemoving:Connect(function(arg1) -- Line 341
					--[[ Upvalues[3]:
						[1]: any_InvokeServer_result1_upvr (readonly)
						[2]: tbl_2_upvr (readonly)
						[3]: module_upvr (copied, readonly)
					]]
					if arg1 == any_InvokeServer_result1_upvr.instance then
						for i_6, v_6 in pairs(tbl_2_upvr) do
							v_6:Disconnect()
							tbl_2_upvr[i_6] = nil
						end
						module_upvr.destroy(any_InvokeServer_result1_upvr)
					end
				end)
				return
			end
			tbl_2_upvr = warn
			tbl_2_upvr("server drone creation failed")
		end
	end)
	if not pcall_result1 and pcall_result2 then
		warn(pcall_result2)
		module_upvr.destroy()
	end
end
function module_upvr.destroy(arg1) -- Line 369
	--[[ Upvalues[5]:
		[1]: RunService_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: any_import_result1_upvr_3 (readonly)
		[5]: any_import_result1_upvr (readonly)
	]]
	RunService_upvr:UnbindFromRenderStep("fpv_rotate")
	ContextActionService_upvr:UnbindAction("fpv_controls")
	RunService_upvr:UnbindFromRenderStep("fpv_loop")
	if module_upvr.renderStepConnection then
		module_upvr.renderStepConnection:Disconnect()
		module_upvr.renderStepConnection = nil
	end
	if module_upvr.mobileButtonConnection then
		module_upvr.mobileButtonConnection:Disconnect()
		module_upvr.mobileButtonConnection = nil
	end
	any_import_result1_upvr_3.destroyDrone()
	workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	if game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("cinematic").Enabled == false then
		game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("chat").Enabled = true
		game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("weapon").Enabled = true
	end
	game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("blood").Enabled = true
	module_upvr.enabled = false
	game.Lighting.Drone.Enabled = false
	game.Lighting.damage.Enabled = true
	game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("static").DroneInstance.Value = nil
	game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("static").Enabled = false
	any_import_result1_upvr.attachment:Destroy()
	for i, _ in pairs(any_import_result1_upvr.keyCodeToIsPressedMap) do
		any_import_result1_upvr.keyCodeToIsPressedMap[i] = false
	end
	game.ReplicatedStorage.network.explodeDrone:FireServer()
	game.ReplicatedStorage.Kickback.Value = 0
end
return module_upvr