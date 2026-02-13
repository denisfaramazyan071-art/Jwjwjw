-- Path: ReplicatedStorage.IlIIIIIIIIlllllIIllllIlIIIIIIlllIIlIIllIIIllllIIIllllIIlllIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:15
-- Luau version 6, Types version 3
-- Time taken: 0.001367 seconds

return {
	newButton = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 9, Named "newButton"
		local clone = script:FindFirstChild(arg3):Clone()
		if script.icons:FindFirstChild(arg2) then
			script.icons:FindFirstChild(arg2):Clone().Parent = clone
		end
		clone:SetAttribute("base_size", arg4)
		clone.Name = arg2
		clone.Size = arg4
		clone.Position = arg5
		clone.AnchorPoint = arg6
		clone.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("mobile"):WaitForChild(arg7)
	end;
	clearButtons = function(arg1) -- Line 24, Named "clearButtons"
		game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("mobile"):WaitForChild(arg1):ClearAllChildren()
	end;
}