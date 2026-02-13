-- Path: ReplicatedStorage.IlllIIIlIllIlIIlIIIllIllIlIllllllIIIllIIllIIlIIlIllIlIlIllII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:00:56
-- Luau version 6, Types version 3
-- Time taken: 0.012896 seconds

local IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI = require(game.ReplicatedStorage.IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI)
local any_import_result1_upvr_2 = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IlllIIIIIlllIlIllIlIllIIlllIlIIllIlIIIllIllIIlIIllIlllIIlIII")
local any_import_result1_upvr = IIIlIllllIIIIIIllllIlIIlIIllIIlIlIlllIIlIIllIIIIlIIIllIlIIlI.import("IIIIlIIllIlIlIllIIIlIlllIlIlIIllllIllIlIIlIllIIIIlIIIIIlIlII")
local module_upvr = {
	library = {
		default = function(arg1, arg2, arg3) -- Line 15, Named "default"
			local FirePoint_2_upvr = arg2.Handle.FirePoint
			FirePoint_2_upvr.frontsmoke:Emit(2)
			FirePoint_2_upvr.Smoke:Emit(1)
			FirePoint_2_upvr.Shoot:Emit(1)
			if math.random(1, 2) ~= 1 then
				FirePoint_2_upvr.Spark:Emit(math.random(7, 10))
				FirePoint_2_upvr.PointLight.Enabled = true
				delay(0.02, function() -- Line 31
					--[[ Upvalues[1]:
						[1]: FirePoint_2_upvr (readonly)
					]]
					if FirePoint_2_upvr.Parent and FirePoint_2_upvr:FindFirstChild("PointLight") then
						FirePoint_2_upvr:FindFirstChild("PointLight").Enabled = false
					end
				end)
			end
		end;
		silentWithSparks = function(arg1, arg2, arg3) -- Line 44, Named "silentWithSparks"
			local FirePoint_3_upvr = arg2.Handle.FirePoint
			FirePoint_3_upvr.ParticleEmitter5:Emit(1)
			FirePoint_3_upvr.Smoke:Emit(1)
			if math.random(1, 6) == 1 then
				FirePoint_3_upvr.Spark:Emit(math.random(3, 5))
				FirePoint_3_upvr.PointLight.Enabled = true
				delay(0.02, function() -- Line 59
					--[[ Upvalues[1]:
						[1]: FirePoint_3_upvr (readonly)
					]]
					if FirePoint_3_upvr:FindFirstChild("PointLight") then
						FirePoint_3_upvr:FindFirstChild("PointLight").Enabled = false
					end
				end)
			end
		end;
		silent = function(arg1, arg2, arg3) -- Line 71, Named "silent"
			local FirePoint = arg2.Handle.FirePoint
			FirePoint.ParticleEmitter5:Emit(3)
			FirePoint.Smoke:Emit(3)
		end;
		rpg = function(arg1, arg2, arg3) -- Line 79, Named "rpg"
			local FirePoint_4 = arg2.Handle.FirePoint
			FirePoint_4.rpgsmoke5:Emit(30)
			FirePoint_4.rpgSmoke:Emit(20)
			FirePoint_4.rpgShoot:Emit(1)
			FirePoint_4.rpgShoot2:Emit(1)
		end;
	};
	items = {
		vss = function(arg1, arg2, arg3) -- Line 95
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.silent(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3)
		end;
		asval = function(arg1, arg2, arg3) -- Line 103
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.silent(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3)
		end;
		["ak-74m"] = function(arg1, arg2, arg3) -- Line 111
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.default(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3)
		end;
		rpk = function(arg1, arg2, arg3) -- Line 119
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.default(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3)
		end;
		sks = function(arg1, arg2, arg3, arg4) -- Line 127
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.default(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3)
		end;
		akm = function(arg1, arg2, arg3) -- Line 135
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.default(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3)
		end;
		["ak-12"] = function(arg1, arg2, arg3) -- Line 143
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.default(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3)
		end;
		pkm = function(arg1, arg2, arg3) -- Line 151
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.default(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3)
		end;
		rpd = function(arg1, arg2, arg3) -- Line 159
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.default(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3)
		end;
		skorpion = function(arg1, arg2, arg3) -- Line 167
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.default(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3)
		end;
		svd = function(arg1, arg2, arg3) -- Line 175
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.default(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3)
		end;
		m16a1 = function(arg1, arg2, arg3) -- Line 183
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.silentWithSparks(arg1, arg2, arg3)
			module_upvr.ejectShell(arg1, arg2)
		end;
		makarov = function(arg1, arg2, arg3, arg4) -- Line 191
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.silentWithSparks(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3, arg4)
		end;
		m1911 = function(arg1, arg2, arg3, arg4) -- Line 200
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.silentWithSparks(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3, arg4)
		end;
		HDM = function(arg1, arg2, arg3, arg4) -- Line 208
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.silentWithSparks(arg1, arg2, arg3)
			module_upvr.bolt(arg1, arg2, arg3, arg4)
		end;
		["rpg-7"] = function(arg1, arg2, arg3) -- Line 217
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.rpg(arg1, arg2, arg3)
		end;
		["rpg-22"] = function(arg1, arg2, arg3) -- Line 223
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.rpg(arg1, arg2, arg3)
		end;
		ks23 = function(arg1, arg2, arg3) -- Line 229
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr.library.default(arg1, arg2, arg3)
		end;
	};
}
function module_upvr.ejectShell(arg1, arg2) -- Line 237
	--[[ Upvalues[1]:
		[1]: any_import_result1_upvr (readonly)
	]]
	local clone = game.ReplicatedStorage.resources.misc:FindFirstChild(any_import_result1_upvr.items[arg1].shellCasing):Clone()
	clone.Anchored = false
	clone.CollisionGroup = "dropped"
	local WorldCFrame = arg2.Base.Casing.WorldCFrame
	clone.CFrame = WorldCFrame
	clone.Orientation = Vector3.new(math.random(-360, 360), math.random(-360, 360), math.random(-360, 360))
	clone.AssemblyLinearVelocity = -WorldCFrame.LookVector * 70 + Vector3.new(0, math.random(0, 12), 0)
	clone.AssemblyAngularVelocity = Vector3.new(math.random(-100, 150), 0, math.random(-250, 70))
	arg2.Base.Casing.smoke:Emit(2)
	clone.Transparency = 1
	clone.Parent = workspace.ignore
	clone.bullet_case:Play()
	clone.Transparency = 0
	game.Debris:AddItem(clone, 5)
end
function module_upvr.bolt(arg1, arg2, arg3, arg4) -- Line 270
	--[[ Upvalues[3]:
		[1]: any_import_result1_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: any_import_result1_upvr_2 (readonly)
	]]
	local var33 = "viewModel"
	if arg3 then
		var33 = "character"
	end
	local _1_upvr = any_import_result1_upvr.items[arg1].boltPositions[var33][1]
	local _2_upvr = any_import_result1_upvr.items[arg1].boltPositions[var33][2]
	coroutine.wrap(function() -- Line 282
		--[[ Upvalues[7]:
			[1]: arg2 (readonly)
			[2]: _1_upvr (readonly)
			[3]: module_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: arg4 (readonly)
			[6]: any_import_result1_upvr_2 (copied, readonly)
			[7]: _2_upvr (readonly)
		]]
		pcall(function() -- Line 283
			--[[ Upvalues[7]:
				[1]: arg2 (copied, readonly)
				[2]: _1_upvr (copied, readonly)
				[3]: module_upvr (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: arg4 (copied, readonly)
				[6]: any_import_result1_upvr_2 (copied, readonly)
				[7]: _2_upvr (copied, readonly)
			]]
			game:GetService("TweenService"):Create(arg2.Bolt.Motor6D, TweenInfo.new(0.05, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
				C0 = _1_upvr;
			}):Play()
			module_upvr.ejectShell(arg1, arg2)
			if arg4 then
				any_import_result1_upvr_2.play("click")
			else
				wait(0.05)
				game:GetService("TweenService"):Create(arg2.Bolt.Motor6D, TweenInfo.new(0.05, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
					C0 = _2_upvr;
				}):Play()
			end
		end)
	end)()
end
function module_upvr.new(arg1, arg2, arg3, arg4) -- Line 305
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: any_import_result1_upvr (readonly)
		[3]: any_import_result1_upvr_2 (readonly)
	]]
	pcall(function() -- Line 308
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: arg3 (readonly)
			[3]: arg2 (readonly)
			[4]: module_upvr (copied, readonly)
			[5]: arg4 (readonly)
			[6]: any_import_result1_upvr (copied, readonly)
			[7]: any_import_result1_upvr_2 (copied, readonly)
		]]
		local var41 = arg1..".close"
		if arg3 then
			if (arg2.Handle.FirePoint.WorldPosition - workspace.CurrentCamera.CFrame.Position).Magnitude < 75 then
				module_upvr.items[arg1](arg1, arg2, arg3, arg4)
			end
			local tbl = {
				low = 0.7;
				high = 0.75;
			}
			if any_import_result1_upvr.items[arg1].crackPitch then
				tbl.low = any_import_result1_upvr.items[arg1].crackPitch
				tbl.high = any_import_result1_upvr.items[arg1].crackPitch
			end
			any_import_result1_upvr_2.playWorldParent(game.ReplicatedStorage.resources.sounds.bullet.crack:GetChildren()[math.random(1, #game.ReplicatedStorage.resources.sounds.bullet.crack:GetChildren())].Name, arg2.Handle.FirePoint, nil, {
				PlaybackSpeed = tbl;
			})
			any_import_result1_upvr_2.playWorldParent(var41, arg2.Handle.FirePoint, nil, nil)
		else
			module_upvr.items[arg1](arg1, arg2, arg3, arg4)
			any_import_result1_upvr_2.playWorldParent(var41, arg2.Handle.FirePoint, nil, nil)
		end
	end)
end
return module_upvr