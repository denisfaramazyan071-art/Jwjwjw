-- Path: ReplicatedStorage.llIIllIlIIllIlIIllllIlIIllllIIIIIlIIlIIllIlIIllllIIIIllllIll

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:47
-- Luau version 6, Types version 3
-- Time taken: 0.005021 seconds

return {
	bodyDespawn = 100;
	gunDespawn = 100;
	chat = {
		cooldown = 1.5;
		maxCharacters = 100;
		nameColors = {
			attackers = Color3.fromRGB(255, 98, 98);
			defenders = Color3.fromRGB(114, 128, 255);
		};
		tags = {
			VET = {
				display = "Vet";
				color = Color3.fromRGB(255, 85, 85);
			};
			VIP = {
				display = "VIP";
				color = Color3.fromRGB(255, 194, 52);
			};
			RICH = {
				display = "Rich";
				color = Color3.fromRGB(173, 255, 135);
			};
		};
	};
	armbands = {
		attackers = {{
			name = "White";
			color = Color3.fromRGB(208, 208, 208);
		}};
		defenders = {{
			name = "Blue";
			color = Color3.fromRGB(97, 93, 208);
		}, {
			name = "Yellow";
			color = Color3.fromRGB(206, 172, 0);
		}, {
			name = "Green";
			color = Color3.fromRGB(31, 116, 29);
		}};
	};
	armbandColors = {
		White = Color3.fromRGB(116, 116, 116);
		Blue = Color3.fromRGB(44, 49, 95);
		Yellow = Color3.fromRGB(116, 104, 0);
		Green = Color3.fromRGB(53, 89, 40);
	};
	cases = {
		["outfit-case"] = {
			displayName = "Outfit case";
			price = 80;
			items = {
				["6sh117"] = {
					rarity = "rare";
				};
				tv110 = {
					rarity = "rare";
				};
				["green-mask"] = {
					rarity = "common";
				};
				["black-mask"] = {
					rarity = "common";
				};
				["greenski-mask"] = {
					rarity = "uncommon";
				};
				["ski-mask"] = {
					rarity = "rare";
				};
				["commander-hat"] = {
					rarity = "common";
				};
				["officer-hat"] = {
					rarity = "common";
				};
				altyn = {
					rarity = "rare";
				};
				["6b2"] = {
					rarity = "uncommon";
				};
				["6b43"] = {
					rarity = "rare";
				};
				["korsar-m3"] = {
					rarity = "rare";
				};
				["kaska-1m"] = {
					rarity = "uncommon";
				};
				["6b47"] = {
					rarity = "rare";
				};
				["6b28"] = {
					rarity = "rare";
				};
			};
			rarities = {
				common = 76;
				uncommon = 20;
				rare = 4;
			};
		};
	};
	cosmetics = {
		head = {
			none = {
				layoutOrder = 1;
				displayName = "None";
			};
			["commander-hat"] = {
				layoutOrder = 2;
				displayName = "Commander hat";
			};
			["officer-hat"] = {
				layoutOrder = 3;
				displayName = "Officer hat";
			};
			beanie = {
				layoutOrder = 4;
				displayName = "Beanie";
			};
			elfhat = {
				layoutOrder = 5;
				displayName = "Elf Hat";
			};
			santahat = {
				layoutOrder = 6;
				displayName = "Santa Hat";
			};
			ssh68 = {
				layoutOrder = 7;
				displayName = "SSH68";
			};
			["kaska-1m"] = {
				layoutOrder = 8;
				displayName = "KASKA-1M";
			};
			ushanka = {
				layoutOrder = 9;
				displayName = "Ushanka";
			};
			["6b47"] = {
				layoutOrder = 10;
				displayName = "6B47";
			};
			["6b28"] = {
				layoutOrder = 11;
				displayName = "6B28";
			};
			altyn = {
				layoutOrder = 12;
				displayName = "Altyn";
			};
		};
		face = {
			none = {
				layoutOrder = 1;
				displayName = "None";
			};
			["green-mask"] = {
				layoutOrder = 2;
				displayName = "Green mask";
			};
			["black-mask"] = {
				layoutOrder = 3;
				displayName = "Black mask";
			};
			["greenski-mask"] = {
				layoutOrder = 4;
				displayName = "Army Ski mask";
			};
			["ski-mask"] = {
				layoutOrder = 5;
				displayName = "Ski mask";
			};
		};
		body = {
			none = {
				layoutOrder = 1;
				displayName = "None";
			};
			["6b2"] = {
				layoutOrder = 2;
				displayName = "6B2";
			};
			["6b43"] = {
				layoutOrder = 3;
				displayName = "6B43";
			};
			["korsar-m3"] = {
				layoutOrder = 4;
				displayName = "Korsar M3";
			};
			["6sh117"] = {
				layoutOrder = 5;
				displayName = "6SH117";
			};
			tv110 = {
				layoutOrder = 6;
				displayName = "TV-110";
			};
		};
		back = {
			none = {
				layoutOrder = 1;
				displayName = "None";
			};
			wrappedak = {
				layoutOrder = 2;
				displayName = "AK Gift";
			};
		};
	};
}