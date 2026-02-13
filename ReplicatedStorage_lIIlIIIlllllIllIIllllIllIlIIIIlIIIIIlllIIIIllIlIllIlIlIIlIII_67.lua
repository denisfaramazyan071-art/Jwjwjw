-- Path: ReplicatedStorage.lIIlIIIlllllIllIIllllIllIlIIIIlIIIIIlllIIIIllIlIllIlIlIIlIII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:43
-- Luau version 6, Types version 3
-- Time taken: 0.004299 seconds

local module_upvr = {
	ammunition = {};
	models = {};
	selectorModels = {};
	animations = {};
	sounds = {};
	characterModels = {};
}
for _, v in pairs(game.ReplicatedStorage.resources.items.character:GetDescendants()) do
	if v:IsA("Model") and v.Parent:IsA("Folder") then
		module_upvr.characterModels[v.Name] = v
	end
end
for _, v_2 in pairs(game.ReplicatedStorage.resources.items.viewModel:GetDescendants()) do
	if v_2:IsA("Model") and v_2.Parent:IsA("Folder") then
		module_upvr.models[v_2.Name] = v_2
	end
end
for _, v_3 in pairs(game.ReplicatedStorage.resources.items.selector:GetDescendants()) do
	if v_3:IsA("Model") and v_3.Parent:IsA("Folder") then
		module_upvr.selectorModels[v_3.Name] = v_3
	end
end
for _, v_4 in pairs(game.ReplicatedStorage.resources.sounds:GetDescendants()) do
	if v_4:IsA("Sound") then
		module_upvr.sounds[v_4.Name] = v_4
	end
end
for _, v_5 in pairs(game.ReplicatedStorage.resources.ammunition:GetDescendants()) do
	if v_5:IsA("BasePart") and v_5.Parent:IsA("Folder") then
		module_upvr.ammunition[v_5.Name] = v_5
	end
end
for _, v_6 in pairs(game.ReplicatedStorage.animations:GetDescendants()) do
	if v_6:IsA("Animation") and v_6.Parent:IsA("Folder") then
		module_upvr.animations[v_6.Name] = v_6
	end
end
function module_upvr.getAnimationFromData(arg1, arg2) -- Line 48
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.animations[string.gsub(arg1.animations[arg2], '#', arg1.name)]
end
function module_upvr.getCharacterAnimationFromData(arg1, arg2) -- Line 54
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.animations[string.gsub(arg1.characterAnimations[arg2], '#', arg1.name)]
end
function module_upvr.getSoundFromData(arg1, arg2) -- Line 61
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.sounds[string.gsub(arg1.sounds[arg2], '#', arg1.name)]
end
return module_upvr