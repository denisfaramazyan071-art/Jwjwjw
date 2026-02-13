-- Path: ReplicatedStorage.lIIllIIIllllIllllIIlIIIllllIIIllIlllIlllllllIllIIIllIIIIIlIl

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:36
-- Luau version 6, Types version 3
-- Time taken: 0.002319 seconds

local var1_upvw
local module = {}
local LocalizationService_upvr = game:GetService("LocalizationService")
local Players_upvr = game:GetService("Players")
function module.loadTranslator() -- Line 10
	--[[ Upvalues[3]:
		[1]: var1_upvw (read and write)
		[2]: LocalizationService_upvr (readonly)
		[3]: Players_upvr (readonly)
	]]
	pcall(function() -- Line 11
		--[[ Upvalues[3]:
			[1]: var1_upvw (copied, read and write)
			[2]: LocalizationService_upvr (copied, readonly)
			[3]: Players_upvr (copied, readonly)
		]]
		var1_upvw = LocalizationService_upvr:GetTranslatorForPlayerAsync(Players_upvr.LocalPlayer)
	end)
	if not var1_upvw then
		pcall(function() -- Line 15
			--[[ Upvalues[2]:
				[1]: var1_upvw (copied, read and write)
				[2]: LocalizationService_upvr (copied, readonly)
			]]
			var1_upvw = LocalizationService_upvr:GetTranslatorForLocaleAsync("en")
		end)
	end
end
function module.typeWrite(arg1, arg2, arg3) -- Line 21
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1.Visible = true
	arg1.AutoLocalize = false
	local var15 = arg2
	if var1_upvw then
		var15 = var1_upvw:Translate(arg1, arg2)
	end
	local any_gsub_result1 = var15:gsub("<br%s*/>", '\n'):gsub("<[^<>]->", "")
	arg1.Text = any_gsub_result1
	for _, _ in utf8.graphemes(any_gsub_result1) do
		arg1.MaxVisibleGraphemes = 0 + 1
		task.wait(arg3)
		local _
	end
end
return module