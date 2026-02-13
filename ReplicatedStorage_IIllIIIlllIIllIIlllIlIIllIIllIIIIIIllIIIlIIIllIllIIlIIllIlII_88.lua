-- Path: ReplicatedStorage.IIllIIIlllIIllIIlllIlIIllIIllIIIIIIllIIIlIIIllIllIIlIIllIlII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:02:04
-- Luau version 6, Types version 3
-- Time taken: 0.004897 seconds

local module_upvr = {
	players = {};
}
local BindableEvent_upvr_2 = Instance.new("BindableEvent")
local BindableEvent_upvr_4 = Instance.new("BindableEvent")
local BindableEvent_upvr = Instance.new("BindableEvent")
local BindableEvent_upvr_3 = Instance.new("BindableEvent")
local BindableEvent_upvr_5 = Instance.new("BindableEvent")
function module_upvr.getclient() -- Line 24
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.players[game.Players.LocalPlayer]
end
function module_upvr.getEnemyTeam() -- Line 28
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.getclient().team == "attackers" then
		return "defenders"
	end
	return "attackers"
end
function module_upvr.isFriendly(arg1) -- Line 36
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var7
	if module_upvr.getclient().team ~= module_upvr.players[arg1].team then
		var7 = false
	else
		var7 = true
	end
	return var7
end
function module_upvr.setPlayerTeam(arg1, arg2) -- Line 40
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: BindableEvent_upvr_5 (readonly)
	]]
	if not module_upvr.players[arg1] then
		return warn(arg1.Name, " does not exist [setplayerteam]", i)
	end
	module_upvr.players[arg1].team = arg2
	if arg1 == game.Players.LocalPlayer then
		BindableEvent_upvr_5:Fire(arg1, arg2)
	end
end
function module_upvr.deployPlayer(arg1) -- Line 56
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: BindableEvent_upvr (readonly)
	]]
	if not module_upvr.players[arg1] then
		return warn(arg1.Name, " does not exist [deployplayer]")
	end
	module_upvr.players[arg1].spawned = true
	module_upvr.players[arg1].deathConnection = arg1.Character:WaitForChild("Humanoid").Died:Connect(function() -- Line 64
		--[[ Upvalues[2]:
			[1]: module_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		module_upvr.playerDied(arg1)
	end)
	BindableEvent_upvr:Fire(arg1)
end
function module_upvr.playerDied(arg1) -- Line 72
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: BindableEvent_upvr_3 (readonly)
	]]
	if not module_upvr.players[arg1] then
		return warn(arg1.Name, " does not exist")
	end
	module_upvr.players[arg1].deathConnection:Disconnect()
	module_upvr.players[arg1].spawned = false
	BindableEvent_upvr_3:Fire(arg1)
end
function module_upvr.addPlayerToRegistry(arg1) -- Line 88
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: BindableEvent_upvr_2 (readonly)
	]]
	if module_upvr.players[arg1] then
		return warn("attempted to add existing player to registry")
	end
	module_upvr.players[arg1] = {
		team = nil;
		spawned = false;
		character = arg1.Character;
	}
	BindableEvent_upvr_2:Fire(arg1)
end
function module_upvr.removePlayerFromRegistry(arg1) -- Line 110
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: BindableEvent_upvr_4 (readonly)
	]]
	if module_upvr.players[arg1] then
		if module_upvr.players[arg1].deathConnection then
			module_upvr.players[arg1].deathConnection:Disconnect()
			module_upvr.players[arg1].deathConnection = nil
		end
		module_upvr.players[arg1] = nil
	end
	BindableEvent_upvr_4:Fire(arg1)
end
module_upvr.onPlayerAdded = BindableEvent_upvr_2.Event
module_upvr.onPlayerRemoved = BindableEvent_upvr_4.Event
module_upvr.onPlayerDeployed = BindableEvent_upvr.Event
module_upvr.onPlayerDied = BindableEvent_upvr_3.Event
module_upvr.onTeamSet = BindableEvent_upvr_5.Event
return module_upvr