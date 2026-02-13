-- Path: ReplicatedStorage.llIIlllIIIllIlIIIllllllllIlIlIIIIIIlIlIIllllIIIllIIIIIIllIlI

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:02:05
-- Luau version 6, Types version 3
-- Time taken: 0.002453 seconds

return {
	equip = function(arg1, arg2, arg3) -- Line 4, Named "equip"
		if workspace:WaitForChild("lobby"):WaitForChild("Lobby"):WaitForChild("StarterCharacter"):FindFirstChild(arg1) then
			workspace:WaitForChild("lobby"):WaitForChild("Lobby"):WaitForChild("StarterCharacter"):FindFirstChild(arg1):Destroy()
		end
		if game.ReplicatedStorage.resources.cosmetics:FindFirstChild(arg2) then
			local clone_2 = game.ReplicatedStorage.resources.cosmetics:FindFirstChild(arg2):Clone()
			clone_2.Name = arg1
			workspace:WaitForChild("lobby"):WaitForChild("Lobby"):WaitForChild("StarterCharacter"):WaitForChild("Humanoid"):AddAccessory(clone_2)
			clone_2.Handle:WaitForChild("AccessoryWeld").Part0 = clone_2.Handle
			clone_2.Handle:WaitForChild("AccessoryWeld").Part1 = workspace:WaitForChild("lobby"):WaitForChild("Lobby"):WaitForChild("StarterCharacter"):WaitForChild(arg3)
		end
		if game.ReplicatedStorage.resources:WaitForChild("Lobby"):WaitForChild("StarterCharacter"):FindFirstChild(arg1) then
			game.ReplicatedStorage.resources:WaitForChild("Lobby"):WaitForChild("StarterCharacter"):FindFirstChild(arg1):Destroy()
		end
		if game.ReplicatedStorage.resources.cosmetics:FindFirstChild(arg2) then
			local clone = game.ReplicatedStorage.resources.cosmetics:FindFirstChild(arg2):Clone()
			clone.Name = arg1
			game.ReplicatedStorage.resources:WaitForChild("Lobby"):WaitForChild("StarterCharacter"):WaitForChild("Humanoid"):AddAccessory(clone)
			clone.Handle:WaitForChild("AccessoryWeld").Part0 = clone.Handle
			clone.Handle:WaitForChild("AccessoryWeld").Part1 = workspace:WaitForChild("lobby"):WaitForChild("Lobby"):WaitForChild("StarterCharacter"):WaitForChild(arg3)
		end
	end;
}