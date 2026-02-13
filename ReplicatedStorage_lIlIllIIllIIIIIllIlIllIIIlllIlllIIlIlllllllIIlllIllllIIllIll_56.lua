-- Path: ReplicatedStorage.lIlIllIIllIIIIIllIlIllIIIlllIlllIIlIlllllllIIlllIllllIIllIll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:34
-- Luau version 6, Types version 3
-- Time taken: 0.002753 seconds

local module = {}
local Frame_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("debug-item"):WaitForChild("Frame")
function getColorForString(arg1) -- Line 6
	if arg1 == "nil" then
		return Color3.fromRGB(255, 123, 125)
	end
	if arg1 == "true" or arg1 == "false" then
		return Color3.fromRGB(255, 123, 125)
	end
	if arg1 == "[rbx-script-connection]" then
		return Color3.fromRGB(181, 181, 181)
	end
	return Color3.fromRGB(173, 241, 149)
end
function module.clear() -- Line 20
	--[[ Upvalues[1]:
		[1]: Frame_upvw (read and write)
	]]
	for _, v in pairs(Frame_upvw:GetChildren()) do
		if v:IsA("Frame") then
			v:Destroy()
		end
	end
end
function module.updateVar(arg1, arg2) -- Line 28
	--[[ Upvalues[1]:
		[1]: Frame_upvw (read and write)
	]]
	Frame_upvw = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("debug-item"):WaitForChild("Frame")
	local SOME = Frame_upvw:FindFirstChild(arg1)
	local var9
	if type(arg2) == "boolean" then
		var9 = tostring(var9)
	end
	if not SOME then
		local type_result1 = type(var9)
		local clone = script:FindFirstChild(type_result1):Clone()
		clone.Name = arg1
		clone.Variable.Text = '.'..arg1
		clone.ValueText.Text = var9
		if type_result1 == "string" then
			clone.ValueText.TextColor3 = getColorForString(var9)
		end
		clone.Parent = Frame_upvw
	else
		if type(var9) == "string" then
			SOME.ValueText.TextColor3 = getColorForString(var9)
		end
		SOME.ValueText.Text = var9
	end
end
return module