-- Path: ReplicatedStorage.IlIlIlIIIIIlIIIlIlIlIIIIlIllIllIIIIIIlIIlIllIlIlIIIlIlllIIll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:02:06
-- Luau version 6, Types version 3
-- Time taken: 0.005074 seconds

local Frame_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("cursor"):WaitForChild("Frame")
local module_upvr = {
	connection = nil;
	currentInstance = nil;
	equippedValidWeapon = false;
	invisible = function() -- Line 15, Named "invisible"
		--[[ Upvalues[1]:
			[1]: Frame_upvw (read and write)
		]]
		game:GetService("TweenService"):Create(Frame_upvw, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
			Transparency = 1;
		}):Play()
	end;
	visible = function() -- Line 19, Named "visible"
		--[[ Upvalues[1]:
			[1]: Frame_upvw (read and write)
		]]
		game:GetService("TweenService"):Create(Frame_upvw, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
			Transparency = 0;
		}):Play()
	end;
}
function module_upvr.remove() -- Line 23
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.connection then
		module_upvr.connection:Disconnect()
		module_upvr.connection = nil
	end
	module_upvr.invisible()
end
function setAdorneeDisabled() -- Line 32
	if game.ReplicatedStorage:FindFirstChild("WeaponHighlight") and game.ReplicatedStorage:FindFirstChild("WeaponHighlight").Adornee ~= nil then
		game.ReplicatedStorage:FindFirstChild("WeaponHighlight").Adornee = nil
	end
end
local RunService_upvr = game:GetService("RunService")
local any_import_result1_upvr = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI).import("IIIIlIIllIlIlIllIIIlIlllIlIlIIllllIllIlIIlIllIIIIlIIIIIlIlII")
function module_upvr.new(arg1) -- Line 40
	--[[ Upvalues[4]:
		[1]: Frame_upvw (read and write)
		[2]: module_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: any_import_result1_upvr (readonly)
	]]
	Frame_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("cursor"):WaitForChild("Frame")
	module_upvr.visible()
	if module_upvr.connection then
		module_upvr.currentInstance = nil
		module_upvr.connection:Disconnect()
		module_upvr.connection = nil
	end
	module_upvr.connection = RunService_upvr.RenderStepped:Connect(function() -- Line 48
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: module_upvr (copied, readonly)
			[3]: any_import_result1_upvr (copied, readonly)
			[4]: Frame_upvw (copied, read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local CFrame = arg1.CFrame
		local RaycastParams_new_result1 = RaycastParams.new()
		RaycastParams_new_result1.FilterDescendantsInstances = {game.Players.LocalPlayer.Character, workspace.CurrentCamera:WaitForChild("ViewModel"), workspace.ignore}
		RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
		RaycastParams_new_result1.IgnoreWater = true
		local workspace_Raycast_result1 = workspace:Raycast(CFrame.Position, CFrame.LookVector * 500, RaycastParams_new_result1)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [70] 44. Error Block 27 start (CF ANALYSIS FAILED)
		local Instance = workspace_Raycast_result1.Instance
		module_upvr.currentInstance = Instance
		if Instance:IsDescendantOf(workspace.debris.dropped) and any_import_result1_upvr.items[Instance.Parent.Name].category == "bullet" and module_upvr.equippedValidWeapon == true then
			if not game.ReplicatedStorage:FindFirstChild("WeaponHighlight") then
				local Highlight = Instance.new("Highlight")
				Highlight.Name = "WeaponHighlight"
				Highlight.FillTransparency = 1
				Highlight.OutlineTransparency = 0
				Highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
				Highlight.DepthMode = Enum.HighlightDepthMode.Occluded
				Highlight.Parent = game.ReplicatedStorage
			end
			if (Instance.Position - game.Players.LocalPlayer.Character.PrimaryPart.Position).Magnitude <= 10 then
				if game.ReplicatedStorage:FindFirstChild("WeaponHighlight").Adornee ~= Instance.Parent then
					game.ReplicatedStorage:FindFirstChild("WeaponHighlight").Adornee = Instance.Parent
					-- KONSTANTWARNING: GOTO [216] #133
				end
			elseif game.ReplicatedStorage:FindFirstChild("WeaponHighlight").Adornee ~= nil then
				game.ReplicatedStorage:FindFirstChild("WeaponHighlight").Adornee = nil
				-- KONSTANTWARNING: GOTO [216] #133
			end
		else
			setAdorneeDisabled()
		end
		-- KONSTANTERROR: [70] 44. Error Block 27 end (CF ANALYSIS FAILED)
	end)
end
return module_upvr