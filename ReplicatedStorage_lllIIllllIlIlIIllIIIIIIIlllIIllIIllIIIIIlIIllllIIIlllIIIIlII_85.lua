-- Path: ReplicatedStorage.lllIIllllIlIlIIllIIIIIIIlllIIllIIllIIIIIlIIllllIIIlllIIIIlII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:02:01
-- Luau version 6, Types version 3
-- Time taken: 0.010905 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IlIIIIIIIIlllllIIllllIlIIIIIIlllIIlIIllIIIllllIIIllllIIlllIl")
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IIlIIIllIIIlllllIIllIlIIIllIIIIIlllIIllIllllIIlIlIllllllIIll")
local module_upvr = {
	remove = function(arg1) -- Line 9, Named "remove"
		--[[ Upvalues[1]:
			[1]: any_import_result1_upvr_2 (readonly)
		]]
		if not arg1 then
		end
		any_import_result1_upvr_2.clearButtons("weapon")
	end;
	hide = function(arg1) -- Line 16, Named "hide"
		--[[ Upvalues[1]:
			[1]: any_import_result1_upvr (readonly)
		]]
		if any_import_result1_upvr() ~= "mobile" then
		else
			if arg1 == "weapon" then
				require(game.Players.LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule")):GetControls():Disable()
				game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("TouchGui").Enabled = false
			end
			game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("mobile"):WaitForChild(arg1).Visible = false
		end
	end;
	unhide = function(arg1) -- Line 35, Named "unhide"
		--[[ Upvalues[1]:
			[1]: any_import_result1_upvr (readonly)
		]]
		if any_import_result1_upvr() ~= "mobile" then
		else
			if arg1 == "weapon" then
				require(game.Players.LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule")):GetControls():Enable()
				game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("TouchGui").Enabled = true
			end
			game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("mobile"):WaitForChild(arg1).Visible = true
		end
	end;
}
function module_upvr.destroyDrone() -- Line 55
	--[[ Upvalues[2]:
		[1]: any_import_result1_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if any_import_result1_upvr() ~= "mobile" then
	else
		module_upvr.remove("drone")
		module_upvr.unhide("weapon")
	end
end
function module_upvr.newDrone() -- Line 66
	--[[ Upvalues[3]:
		[1]: any_import_result1_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: any_import_result1_upvr_2 (readonly)
	]]
	if any_import_result1_upvr() ~= "mobile" then
	else
		module_upvr.hide("weapon")
		module_upvr.unhide("drone")
		for _, v_2 in pairs({{
			action = 'W';
		}, {
			action = 'A';
		}, {
			action = 'D';
		}, {
			action = 'E';
		}, {
			action = 'Q';
		}}) do
			if v_2.action == 'W' then
				any_import_result1_upvr_2.newButton('W', v_2.action, "holdbutton", UDim2.new(0, 65, 0, 65), UDim2.new(0.1, 0, 0.5, 0) + UDim2.new(0, 0, 0, -2), Vector2.new(0.5, 1), "drone")
			elseif v_2.action == 'S' then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				any_import_result1_upvr_2.newButton('S', v_2.action, "holdbutton", UDim2.new(0, 65, 0, 65), UDim2.new(0.1, 0, 0.5, 0) + UDim2.new(0, 0, 0, 2), Vector2.new(0.5, 0), "drone")
			elseif v_2.action == 'Q' then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				any_import_result1_upvr_2.newButton('Q', v_2.action, "holdbutton", UDim2.new(0, 65, 0, 65), UDim2.new(0.1, 0, 0.5, 0) + UDim2.new(0, 0, 0, 20), Vector2.new(0.5, 0), "drone")
			end
		end
	end
end
function module_upvr.new(arg1) -- Line 146
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr_2 (readonly)
	]]
	local JumpButton = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("TouchGui"):WaitForChild("TouchControlFrame"):WaitForChild("JumpButton")
	any_import_result1_upvr_2.clearButtons("weapon")
	any_import_result1_upvr_2.newButton("Fire", "leaderboard", "button", UDim2.new(0, 36, 0, 36), UDim2.new(0, 10, 0.1, 0), Vector2.new(0, 0), "weapon")
	for _, v in pairs(arg1) do
		if v.action == "fire" then
			local var22 = JumpButton.Size.X.Offset * 0.6
			any_import_result1_upvr_2.newButton("Fire", v.action, "hold", UDim2.new(0, JumpButton.Size.X.Offset + 10, 0, JumpButton.Size.Y.Offset + 10), JumpButton.Position - UDim2.new(0, var22, 0, var22), Vector2.new(0.5, 0.5), "weapon")
		elseif v.action == "reload" then
			any_import_result1_upvr_2.newButton("Reload", v.action, "button", UDim2.new(0, JumpButton.Size.X.Offset * 0.7, 0, JumpButton.Size.Y.Offset * 0.7), JumpButton.Position - UDim2.new(0, JumpButton.Size.X.Offset * 0.6, 0, 0), Vector2.new(1, 0), "weapon")
		elseif v.action == "aim" then
			any_import_result1_upvr_2.newButton("Aim", v.action, "button", UDim2.new(0, JumpButton.Size.X.Offset * 0.7, 0, JumpButton.Size.Y.Offset * 0.7), JumpButton.Position - UDim2.new(0, -5, 0, JumpButton.Size.X.Offset * 1), Vector2.new(0, 0), "weapon")
		elseif v.action == "fireMode" then
			any_import_result1_upvr_2.newButton("Mode", v.action, "button", UDim2.new(0, JumpButton.Size.X.Offset * 0.7, 0, JumpButton.Size.Y.Offset * 0.7), UDim2.new(1, -10, 0.1, 0), Vector2.new(1, 0), "weapon")
		elseif v.action == "sprint" then
			local udim2 = UDim2.new(0, JumpButton.Size.X.Offset * 0.7, 0, JumpButton.Size.Y.Offset * 0.7)
			any_import_result1_upvr_2.newButton("Sprint", v.action, "button", udim2, UDim2.new(1, -70 - udim2.X.Offset, 0.1, 0), Vector2.new(0, 0), "weapon")
		elseif v.action == "place" then
			local var24 = JumpButton.Size.X.Offset * 0.6
			any_import_result1_upvr_2.newButton("Activate", v.action, "button", UDim2.new(0, JumpButton.Size.X.Offset + 10, 0, JumpButton.Size.Y.Offset + 10), JumpButton.Position - UDim2.new(0, var24, 0, var24), Vector2.new(0.5, 0.5), "weapon")
		elseif v.action == "connect" then
			local var25 = JumpButton.Size.X.Offset * 0.6
			any_import_result1_upvr_2.newButton("Activate", v.action, "button", UDim2.new(0, JumpButton.Size.X.Offset + 10, 0, JumpButton.Size.Y.Offset + 10), JumpButton.Position - UDim2.new(0, var25, 0, var25), Vector2.new(0.5, 0.5), "weapon")
		elseif v.action == "crouch" then
			local udim2_2 = UDim2.new(0, JumpButton.Size.X.Offset * 0.7, 0, JumpButton.Size.Y.Offset * 0.7)
			any_import_result1_upvr_2.newButton("Crouch", v.action, "button", udim2_2, UDim2.new(1, -80 - udim2_2.X.Offset * 2, 0.1, 0), Vector2.new(0, 0), "weapon")
		elseif v.action == "throw" then
			local var27 = JumpButton.Size.X.Offset * 0.6
			any_import_result1_upvr_2.newButton("Throw", v.action, "button", UDim2.new(0, JumpButton.Size.X.Offset + 10, 0, JumpButton.Size.Y.Offset + 10), JumpButton.Position - UDim2.new(0, var27, 0, var27), Vector2.new(0.5, 0.5), "weapon")
		end
	end
	any_import_result1_upvr_2.newButton("Switch", "switch", "button", UDim2.new(0, JumpButton.Size.X.Offset * 0.65, 0, JumpButton.Size.Y.Offset * 0.65), JumpButton.Position - UDim2.new(0, JumpButton.Size.X.Offset * 5, 0, 0), Vector2.new(0.5, 0.5), "weapon")
end
return module_upvr