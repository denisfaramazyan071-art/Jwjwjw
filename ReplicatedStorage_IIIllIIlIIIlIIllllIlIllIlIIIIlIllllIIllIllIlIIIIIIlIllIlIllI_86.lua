-- Path: ReplicatedStorage.IIIllIIlIIIlIIllllIlIllIlIIIIlIllllIIllIllIlIIIIIIlIllIlIllI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:02:01
-- Luau version 6, Types version 3
-- Time taken: 0.004522 seconds

local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("lIIIIlIlllllllIIlIIIllllIIIIIlIIllllllIIllIlllIlIIIllllIIlll")
return {
	firstPerson = function() -- Line 6, Named "firstPerson"
		--[[ Upvalues[1]:
			[1]: any_import_result1_upvr (readonly)
		]]
		repeat
			task.wait()
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
		until workspace.CurrentCamera.CameraType == Enum.CameraType.Custom
		game.Players.LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
		game:GetService("UserInputService").MouseIconEnabled = false
		game.Players.LocalPlayer.CameraMaxZoomDistance = 0
		workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Captures, true)
		any_import_result1_upvr.update("camera state", "first person")
		game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(0.001, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			FieldOfView = 70;
		}):Play()
	end;
	spectate = function(arg1) -- Line 27, Named "spectate"
		--[[ Upvalues[1]:
			[1]: any_import_result1_upvr (readonly)
		]]
		repeat
			task.wait()
			workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
		until workspace.CurrentCamera.CameraType == Enum.CameraType.Scriptable
		game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
		game:GetService("UserInputService").MouseIconEnabled = true
		game.Players.LocalPlayer.CameraMaxZoomDistance = 100
		workspace.CurrentCamera.CameraSubject = arg1
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Captures, true)
		any_import_result1_upvr.update("camera state", "spectating")
		game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(0.001, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			FieldOfView = 70;
		}):Play()
	end;
	firstPersonMouse = function() -- Line 71, Named "firstPersonMouse"
		--[[ Upvalues[1]:
			[1]: any_import_result1_upvr (readonly)
		]]
		game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
		game:GetService("UserInputService").MouseIconEnabled = true
		game.Players.LocalPlayer.CameraMaxZoomDistance = 0
		workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Captures, true)
		any_import_result1_upvr.update("camera state", "first person [mouse]")
	end;
	lock = function(arg1, arg2) -- Line 87, Named "lock"
		--[[ Upvalues[1]:
			[1]: any_import_result1_upvr (readonly)
		]]
		game:GetService("StarterPlayer").CameraMaxZoomDistance = 0
		repeat
			wait()
			workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
		until workspace.CurrentCamera.CameraType == Enum.CameraType.Scriptable
		workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
		workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		if arg2 then
			local tbl_2 = {}
			tbl_2.CFrame = arg1
			game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), tbl_2):Play()
		else
			local tbl = {}
			tbl.CFrame = arg1
			game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(1e-07, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), tbl):Play()
			workspace.CurrentCamera.CFrame = arg1
		end
		game:GetService("UserInputService").MouseIconEnabled = true
		any_import_result1_upvr.update("camera state", "locked")
		game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(0.001, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			FieldOfView = 70;
		}):Play()
	end;
}