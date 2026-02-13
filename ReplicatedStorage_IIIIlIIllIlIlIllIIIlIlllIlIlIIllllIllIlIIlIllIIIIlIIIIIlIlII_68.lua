-- Path: ReplicatedStorage.IIIIlIIllIlIlIllIIIlIlllIlIlIIllllIllIlIIlIllIIIIlIIIIIlIlII

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-12 16:01:45
-- Luau version 6, Types version 3
-- Time taken: 0.088573 seconds

local module = {
	ammunition = {
		bullet = {
			category = "bullet";
		};
		rocket = {
			category = "projectile";
			explosionRadius = 10;
		};
	};
	casings = {
		casing = {};
		pistol_casing = {};
	};
	defaultLoadouts = {
		Assault = {{
			name = "ak-74m";
		}, {
			name = "makarov";
		}, {}, {}, {}, {}, {}, {}, {}};
		Medic = {{
			name = "ak-74m";
		}, {
			name = "makarov";
		}, {
			name = "bandage";
		}, {}, {}, {}, {}, {}, {}};
		Marksman = {{
			name = "svd";
		}, {
			name = "makarov";
		}, {}, {}, {}, {}, {}, {}, {}};
		["Drone Operator"] = {{
			name = "ak-74m";
		}, {
			name = "FPV";
		}, {
			name = "controller";
		}, {}, {}, {}, {}, {}, {}};
		["Machine Gunner"] = {{
			name = "rpd";
		}, {
			name = "makarov";
		}, {}, {}, {}, {}, {}, {}, {}};
	};
	classes = {
		Assault = {
			loadout = {
				Other = {};
				{{
					subcategoryName = "Assault Rifles";
					entries = {{
						name = "ak-74m";
					}, {
						name = "akm";
					}, {
						name = "asval";
					}, {
						name = "ak-12";
					}, {
						name = "m16a1";
					}};
				}, {
					subcategoryName = "LMGs";
					entries = {{
						name = "rpk";
					}};
				}}, {{
					subcategoryName = "Pistols";
					entries = {{
						name = "makarov";
					}, {
						name = "m1911";
					}, {
						name = "HDM";
					}};
				}, {
					subcategoryName = "Machine pistols";
					entries = {{
						name = "skorpion";
					}};
				}, {
					subcategoryName = "Shotguns";
					entries = {{
						name = "ks23";
					}};
				}, {
					subcategoryName = "Explosive";
					entries = {{
						name = "rpg-22";
					}, {
						name = "rpg-7";
					}};
				}}, {{
					subcategoryName = "Grenades";
					entries = {{
						name = "f1";
					}, {
						name = "RGD-5";
					}};
				}}
			};
			rank = 0;
		};
		Medic = {
			loadout = {
				Other = {};
				{{
					subcategoryName = "Assault Rifles";
					entries = {{
						name = "ak-74m";
					}, {
						name = "akm";
					}, {
						name = "asval";
					}, {
						name = "ak-12";
					}, {
						name = "m16a1";
					}};
				}, {
					subcategoryName = "LMGs";
					entries = {{
						name = "rpk";
					}};
				}}, {{
					subcategoryName = "Pistols";
					entries = {{
						name = "makarov";
					}, {
						name = "m1911";
					}, {
						name = "HDM";
					}};
				}, {
					subcategoryName = "Machine pistols";
					entries = {{
						name = "skorpion";
					}};
				}, {
					subcategoryName = "Shotguns";
					entries = {{
						name = "ks23";
					}};
				}, {
					subcategoryName = "Explosive";
					entries = {{
						name = "rpg-22";
					}, {
						name = "rpg-7";
					}};
				}}, {{
					subcategoryName = "Heals";
					entries = {{
						name = "bandage";
					}};
				}}
			};
			rank = 5;
		};
		Marksman = {
			loadout = {
				Other = {};
				{{
					subcategoryName = "DMRs";
					entries = {{
						name = "svd";
					}, {
						name = "sks";
					}, {
						name = "vss";
					}};
				}}, {{
					subcategoryName = "Pistols";
					entries = {{
						name = "makarov";
					}, {
						name = "m1911";
					}, {
						name = "HDM";
					}};
				}, {
					subcategoryName = "Machine pistols";
					entries = {{
						name = "skorpion";
					}};
				}, {
					subcategoryName = "Shotguns";
					entries = {{
						name = "ks23";
					}};
				}}, {{
					subcategoryName = "Grenades";
					entries = {{
						name = "f1";
					}, {
						name = "RGD-5";
					}};
				}}
			};
			rank = 10;
		};
		["Drone Operator"] = {
			loadout = {
				Other = {};
				{{
					subcategoryName = "Assault Rifles";
					entries = {{
						name = "ak-74m";
					}, {
						name = "akm";
					}, {
						name = "asval";
					}, {
						name = "ak-12";
					}, {
						name = "m16a1";
					}};
				}, {
					subcategoryName = "DMRs";
					entries = {{
						name = "svd";
					}, {
						name = "sks";
					}, {
						name = "vss";
					}};
				}}, {{
					subcategoryName = "Drones";
					entries = {{
						name = "FPV";
					}};
				}}, {{
					subcategoryName = "Controllers";
					entries = {{
						name = "controller";
					}};
				}}
			};
			rank = 16;
		};
		["Machine Gunner"] = {
			loadout = {
				Other = {};
				{{
					subcategoryName = "LMGs";
					entries = {{
						name = "rpd";
					}, {
						name = "rpk";
					}, {
						name = "pkm";
					}};
				}}, {{
					subcategoryName = "Pistols";
					entries = {{
						name = "makarov";
					}, {
						name = "m1911";
					}, {
						name = "HDM";
					}};
				}, {
					subcategoryName = "Machine pistols";
					entries = {{
						name = "skorpion";
					}};
				}, {
					subcategoryName = "Shotguns";
					entries = {{
						name = "ks23";
					}};
				}, {
					subcategoryName = "Explosive";
					entries = {{
						name = "rpg-22";
					}, {
						name = "rpg-7";
					}};
				}}, {{
					subcategoryName = "Grenades";
					entries = {{
						name = "f1";
					}, {
						name = "RGD-5";
					}};
				}}
			};
			rank = 24;
		};
	};
	items = {
		none = {
			displayName = "Nothing";
		};
		["ak-74m"] = {
			category = "bullet";
			displayName = "AKS-74";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			kickback = -0.3;
			recoil = "ak-74m";
			name = "ak-74m";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
				crouch = "#.crouch";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"automatic", "semi-automatic"};
			cooldown = 0.1;
			magSize = 30;
			magazines = 8;
			visualMagMultiplier = 1;
			reloadTime = "1.5s";
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 60;
				};
			};
			bulletCrackEffect = true;
			shellCasing = "casing";
			crackPitch = 0.8;
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			damage = {
				head = 70;
				torso = 40;
				limb = 33;
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(-29.326, -17.087, 326.65) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-29.326, -17.087, 327.03) * CFrame.Angles(0, (-math.pi), 0)};
				character = {CFrame.new(-29.326, -17.087, 326.68) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-29.326, -17.087, 327.03) * CFrame.Angles(0, (-math.pi), 0)};
			};
		};
		ks23 = {
			category = "shotgun";
			displayName = "KS-23";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			recoil = "ks23";
			name = "ks23";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
				crouch = "#.crouch";
				boltback = "#.boltback";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"semi-automatic"};
			cooldown = 0.8;
			chamberSize = 4;
			storedRounds = 30;
			pelletsPerShot = 10;
			minSpread = 1;
			maxSpread = 7;
			kickback = -0.45;
			price = 1000;
			visualMagMultiplier = 1;
			reloadTime = "0.9s";
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 60;
				};
			};
			shellCasing = "shell_casing";
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			damage = {
				head = 80;
				torso = 70;
				limb = 50;
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(-494.374, -18.996, 369.8) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-494.374, -18.996, 370.209) * CFrame.Angles(0, (-math.pi), 0)};
				character = {CFrame.new(-36.088, -19.075, 363.2) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-36.088, -19.075, 363.572) * CFrame.Angles(0, (-math.pi), 0)};
			};
		};
		asval = {
			category = "bullet";
			displayName = "AS VAL";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			recoil = "ak-74m";
			name = "asval";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
				crouch = "#.crouch";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"automatic", "semi-automatic"};
			cooldown = 0.067;
			magSize = 20;
			magazines = 8;
			price = 1250;
			visualMagMultiplier = 1;
			reloadTime = "1.5s";
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 60;
				};
			};
			bulletCrackEffect = true;
			shellCasing = "casing";
			crackPitch = 1.4;
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, (math.pi/2), 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, (math.pi/2), 0) + Vector3.new(0, 0, 0);
			};
			damage = {
				head = 75;
				torso = 40;
				limb = 30;
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(-363.3, -19.049, -34.675) * CFrame.Angles(0, (math.pi/2), 0), CFrame.new(-363.636, -19.049, -34.675) * CFrame.Angles(0, (math.pi/2), 0)};
				character = {CFrame.new(-364.2, -19.098, -34.763) * CFrame.Angles(0, (math.pi/2), 0), CFrame.new(-364.563, -19.098, -34.763) * CFrame.Angles(0, (math.pi/2), 0)};
			};
		};
		rpk = {
			category = "bullet";
			displayName = "RPK";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			recoil = "rpk";
			name = "rpk";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
				crouch = "#.crouch";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"automatic", "semi-automatic"};
			cooldown = 0.1;
			magSize = 45;
			magazines = 8;
			visualMagMultiplier = 1;
			reloadTime = "1.5s";
			price = 1500;
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 60;
				};
			};
			bulletCrackEffect = true;
			shellCasing = "casing";
			crackPitch = 0.8;
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			damage = {
				head = 85;
				torso = 65;
				limb = 45;
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(-458.829, -17.94, 338.4) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-458.829, -17.94, 338.752) * CFrame.Angles(0, (-math.pi), 0)};
				character = {CFrame.new(-434.305, -16.981, 320.3) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-434.305, -16.981, 320.646) * CFrame.Angles(0, (-math.pi), 0)};
			};
		};
		akm = {
			category = "bullet";
			displayName = "AKM";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			recoil = "ak-74m";
			name = "akm";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
				crouch = "#.crouch";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"automatic", "semi-automatic"};
			cooldown = 0.09;
			magSize = 30;
			magazines = 8;
			price = 850;
			crackPitch = 0.7;
			visualMagMultiplier = 1;
			reloadTime = "1.5s";
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 60;
				};
			};
			bulletCrackEffect = true;
			shellCasing = "casing";
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			damage = {
				head = 75;
				torso = 40;
				limb = 30;
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(-36.088, -19.075, 363.2) * CFrame.Angles(0, math.pi, 0), CFrame.new(-36.088, -19.075, 363.572) * CFrame.Angles(0, math.pi, 0)};
				character = {CFrame.new(-36.088, -19.075, 363.2) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-36.088, -19.075, 363.572) * CFrame.Angles(0, (-math.pi), 0)};
			};
		};
		["ak-12"] = {
			category = "bullet";
			displayName = "AK-12";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			recoil = "ak-74m";
			name = "ak-12";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
				crouch = "#.crouch";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"automatic", "semi-automatic"};
			cooldown = 0.0857;
			magSize = 30;
			magazines = 8;
			price = 900;
			crackPitch = 0.7;
			visualMagMultiplier = 1;
			reloadTime = "1.5s";
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 60;
				};
			};
			bulletCrackEffect = true;
			shellCasing = "casing";
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			damage = {
				head = 78;
				torso = 50;
				limb = 38;
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(-490.951, -18.888, 363.47) * CFrame.Angles(0, math.pi, 0), CFrame.new(-490.951, -18.888, 363.882) * CFrame.Angles(0, math.pi, 0)};
				character = {CFrame.new(-510.893, -19.655, 378.24) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-510.893, -19.655, 378.663) * CFrame.Angles(0, (-math.pi), 0)};
			};
		};
		pkm = {
			category = "bullet";
			displayName = "PKM";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			recoil = "pkm";
			name = "pkm";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
				crouch = "#.crouch";
				chain = "#.chain";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"automatic"};
			cooldown = 0.098;
			magSize = 100;
			magazines = 6;
			kickback = -0.2;
			price = 3000;
			crackPitch = 0.65;
			visualMagMultiplier = 1;
			reloadTime = "5.5s";
			states = {
				idle = {
					walkspeed = 9;
					fov = 70;
				};
				sprint = {
					walkspeed = 12;
					fov = 75;
				};
				aim = {
					walkspeed = 3;
					fov = 60;
				};
			};
			bulletCrackEffect = true;
			shellCasing = "casing";
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			damage = {
				head = 95;
				torso = 85;
				limb = 70;
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(-498.075, -19.003, 363.75) * CFrame.Angles(0, math.pi, 0), CFrame.new(-498.075, -19.003, 364.345) * CFrame.Angles(0, math.pi, 0)};
				character = {CFrame.new(-498.075, -19.003, 363.75) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-498.075, -19.003, 364.345) * CFrame.Angles(0, (-math.pi), 0)};
			};
		};
		rpd = {
			category = "bullet";
			displayName = "RPD";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			recoil = "rpd";
			name = "rpd";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
				crouch = "#.crouch";
				chain = "#.chain";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"automatic", "semi-automatic"};
			cooldown = 0.088;
			magSize = 100;
			magazines = 4;
			level = 24;
			crackPitch = 0.7;
			visualMagMultiplier = 1;
			reloadTime = "5.5s";
			states = {
				idle = {
					walkspeed = 9;
					fov = 70;
				};
				sprint = {
					walkspeed = 12;
					fov = 75;
				};
				aim = {
					walkspeed = 3;
					fov = 60;
				};
			};
			bulletCrackEffect = true;
			shellCasing = "casing";
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			damage = {
				head = 80;
				torso = 50;
				limb = 40;
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(-497.669, -18.77, 367.4) * CFrame.Angles(0, math.pi, 0), CFrame.new(-497.669, -18.77, 367.797) * CFrame.Angles(0, math.pi, 0)};
				character = {CFrame.new(-497.669, -18.77, 367.4) * CFrame.Angles(0, math.pi, 0), CFrame.new(-497.669, -18.77, 367.797) * CFrame.Angles(0, math.pi, 0)};
			};
		};
		svd = {
			category = "bullet";
			displayName = "SVD";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			recoil = "ak-74m";
			name = "svd";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
				crouch = "#.crouch";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"semi-automatic"};
			cooldown = 0.3;
			magSize = 10;
			magazines = 8;
			visualMagMultiplier = 2;
			scope = true;
			reloadTime = "1.5s";
			level = 10;
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 18;
				};
			};
			bulletCrackEffect = true;
			shellCasing = "casing";
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, (math.pi/2), 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, (math.pi/2), 0) + Vector3.new(0, 0, 0);
			};
			damage = {
				head = 100;
				torso = 90;
				limb = 82;
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(-363.4, -18.877, -37.365) * CFrame.Angles(0, (math.pi/2), 0), CFrame.new(-363.996, -18.877, -37.365) * CFrame.Angles(0, (math.pi/2), 0)};
				character = {CFrame.new(-301.5, -15.66, -30.997) * CFrame.Angles(0, (math.pi/2), 0), CFrame.new(-301.957, -15.66, -30.997) * CFrame.Angles(0, (math.pi/2), 0)};
			};
		};
		sks = {
			category = "bullet";
			displayName = "SKS";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			recoil = "sks";
			name = "sks";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
				crouch = "#.crouch";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"semi-automatic"};
			cooldown = 0.2;
			magSize = 10;
			magazines = 8;
			visualMagMultiplier = 2;
			price = 1000;
			autoBoltBack = true;
			boltBackOnEmptyMag = true;
			reloadTime = "1.5s";
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 40;
				};
			};
			bulletCrackEffect = true;
			shellCasing = "casing";
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			damage = {
				head = 100;
				torso = 95;
				limb = 75;
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(-537.156, -20.245, 391.7) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-537.156, -20.245, 392.279) * CFrame.Angles(0, (-math.pi), 0)};
				character = {CFrame.new(-415.188, -15.648, 302.7) * CFrame.Angles(0, math.pi, 0), CFrame.new(-415.188, -15.648, 303.207) * CFrame.Angles(0, math.pi, 0)};
			};
		};
		m16a1 = {
			category = "bullet";
			displayName = "M16A1";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			recoil = "ak-74m";
			name = "m16a1";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"automatic", "semi-automatic"};
			cooldown = 0.08;
			magSize = 30;
			magazines = 8;
			crackPitch = 1.1;
			visualMagMultiplier = 1;
			gamepass = true;
			reloadTime = "1.5s";
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 60;
				};
			};
			bulletCrackEffect = true;
			shellCasing = "casing";
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			damage = {
				head = 95;
				torso = 70;
				limb = 40;
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(-29.326, -17.087, 326.65) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-29.326, -17.087, 327.03) * CFrame.Angles(0, (-math.pi), 0)};
				character = {CFrame.new(-23.7, -1.09, -42.155) * CFrame.Angles(0, (math.pi/2), 0), CFrame.new(-24.148, -1.09, -42.155) * CFrame.Angles(0, (math.pi/2), 0)};
			};
		};
		vss = {
			category = "bullet";
			displayName = "VSS Vintorez";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			recoil = "vss";
			name = "vss";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
				crouch = "#.crouch";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"semi-automatic", "automatic"};
			cooldown = 0.07;
			magSize = 10;
			magazines = 8;
			visualMagMultiplier = 2;
			scope = true;
			price = 2000;
			reloadTime = "1.5s";
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 14;
				};
			};
			shellCasing = "casing";
			bulletCrackEffect = false;
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			damage = {
				head = 90;
				torso = 82;
				limb = 78;
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(-490.424, -18.537, 363.2) * CFrame.Angles(0, math.pi, 0), CFrame.new(-490.424, -18.537, 363.61) * CFrame.Angles(0, math.pi, 0)};
				character = {CFrame.new(-462.639, -17.487, 342.6) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-462.639, -17.487, 343.01) * CFrame.Angles(0, (-math.pi), 0)};
			};
		};
		makarov = {
			category = "bullet";
			recoil = "makarov";
			displayName = "Makarov pistol";
			name = "makarov";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"semi-automatic"};
			cooldown = 0.15;
			magSize = 8;
			magazines = 8;
			visualMagMultiplier = 2;
			reloadTime = "1.2s";
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 60;
				};
			};
			shellCasing = "pistol_casing";
			bulletCrackEffect = true;
			boltBackOnEmptyMag = true;
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			damage = {
				head = 50;
				torso = 30;
				limb = 15;
			};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(34.597, -17.479, -335.7) * CFrame.Angles(0, 0, 0), CFrame.new(34.597, -17.479, -335.942) * CFrame.Angles(0, 0, 0)};
				character = {CFrame.new(34.597, -17.479, -335.75) * CFrame.Angles(0, 0, 0), CFrame.new(34.597, -17.479, -335.942) * CFrame.Angles(0, 0, 0)};
			};
		};
		skorpion = {
			category = "bullet";
			recoil = "skorpion";
			displayName = "Škorpion Vz. 61";
			name = "skorpion";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
				crouch = "#.crouch";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"automatic", "semi-automatic"};
			cooldown = 0.06;
			magSize = 20;
			magazines = 8;
			price = 700;
			visualMagMultiplier = 2;
			reloadTime = "1.2s";
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 60;
				};
			};
			shellCasing = "pistol_casing";
			bulletCrackEffect = true;
			boltBackOnEmptyMag = true;
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			damage = {
				head = 75;
				torso = 50;
				limb = 40;
			};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(-489.362, -18.573, 363.9) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-489.362, -18.573, 364.404) * CFrame.Angles(0, (-math.pi), 0)};
				character = {CFrame.new(-504.164, -19.135, 374.9) * CFrame.Angles(0, (-math.pi), 0), CFrame.new(-504.164, -19.135, 375.427) * CFrame.Angles(0, (-math.pi), 0)};
			};
		};
		m1911 = {
			category = "bullet";
			recoil = "m1911";
			displayName = "M1911";
			name = "m1911";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"semi-automatic"};
			cooldown = 0.2;
			magSize = 8;
			magazines = 8;
			visualMagMultiplier = 2;
			reloadTime = "1.2s";
			gamepass = true;
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 60;
				};
			};
			shellCasing = "pistol_casing";
			bulletCrackEffect = true;
			boltBackOnEmptyMag = true;
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			damage = {
				head = 75;
				torso = 40;
				limb = 25;
			};
			rotations = {
				viewModel = CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0);
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(29.241, -18.418, -353.2) * CFrame.Angles(0, 0, 0), CFrame.new(29.241, -18.418, -353.512) * CFrame.Angles(0, 0, 0)};
				character = {CFrame.new(29.979, -18.883, -362.1) * CFrame.Angles(0, 0, 0), CFrame.new(29.979, -18.883, -362.439) * CFrame.Angles(0, 0, 0)};
			};
		};
		HDM = {
			category = "bullet";
			recoil = "makarov";
			displayName = "HDM";
			name = "HDM";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
				bolt = "#.bolt";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			fireModes = {"semi-automatic"};
			cooldown = 0.15;
			magSize = 10;
			magazines = 8;
			visualMagMultiplier = 2;
			gamepass = true;
			reloadTime = "1.2s";
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 60;
				};
			};
			shellCasing = "pistol_casing";
			bulletCrackEffect = false;
			boltBackOnEmptyMag = true;
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "fireMode";
				bind = Enum.KeyCode.V;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			damage = {
				head = 75;
				torso = 65;
				limb = 50;
			};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			ammunition = {
				name = "bullet";
				speed = 1000;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 8, 0);
			};
			boltPositions = {
				viewModel = {CFrame.new(30.95, -18.88, -363.85) * CFrame.Angles(0, 0, 0), CFrame.new(30.95, -18.88, -364.188) * CFrame.Angles(0, 0, 0)};
				character = {CFrame.new(30.95, -18.88, -363.85) * CFrame.Angles(0, 0, 0), CFrame.new(30.95, -18.88, -364.188) * CFrame.Angles(0, 0, 0)};
			};
		};
		["rpg-7"] = {
			category = "projectile";
			displayName = "RPG-7";
			recoil = "rpg-7";
			image = {
				size = UDim2.new(0, 16, 0, 16);
				value = "rbxassetid://12288788062";
			};
			price = 2000;
			name = "rpg-7";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			defaultAmmo = 2;
			cooldown = 1;
			reloadTime = "2.3s";
			showAmmoAsOne = true;
			visibleProjectile = true;
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 15;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 45;
				};
			};
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			damage = {
				head = 100;
				torso = 100;
				limb = 100;
			};
			rotations = {
				viewModel = CFrame.Angles(0, (-math.pi/2), 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, (-math.pi/2), 0) + Vector3.new(0, 0, 0);
			};
			ammunition = {
				name = "rocket";
				speed = 600;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 2, 0);
			};
			projectiles = {"rocket"};
		};
		["rpg-22"] = {
			category = "projectile";
			displayName = "RPG-22";
			recoil = "rpg-7";
			image = {
				size = UDim2.new(0, 16, 0, 16);
				value = "rbxassetid://12288788062";
			};
			price = 500;
			name = "rpg-22";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				aim = "#.aim";
				reload = "#.reload";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				aim = "#.character.aim";
				recoil = "recoil";
			};
			defaultAmmo = 0;
			cooldown = 1;
			showAmmoAsOne = true;
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 15;
					fov = 75;
				};
				aim = {
					walkspeed = 5;
					fov = 45;
				};
			};
			bindableActions = {{
				action = "fire";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "aim";
				bind = "aim";
			}, {
				action = "reload";
				bind = "reload";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			damage = {
				head = 100;
				torso = 100;
				limb = 100;
			};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
			ammunition = {
				name = "rocket";
				speed = 550;
				maxDistance = 2000;
				gravity = Vector3.new(0, -workspace.Gravity / 2, 0);
			};
			projectiles = {"rocket"};
		};
		FPV = {
			category = "buildable";
			displayName = "FPV Drone";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			name = "FPV";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
			};
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
			};
			showAmmoAsOne = true;
			level = 16;
			buildables = 2;
			bindableActions = {{
				action = "place";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
		};
		controller = {
			category = "controller";
			displayName = "Controller";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			name = "controller";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
			};
			level = 16;
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
			};
			bindableActions = {{
				action = "connect";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
		};
		bandage = {
			category = "heal";
			displayName = "Bandage";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			name = "bandage";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
			};
			level = 5;
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
			};
			bindableActions = {{
				action = "place";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
		};
		f1 = {
			category = "grenade";
			displayName = "F1 Grenade";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			name = "f1";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				throw = "#.throw";
				crouch = "#.crouch";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				recoil = "recoil";
			};
			fuse = 3.5;
			grenades = 2;
			price = 400;
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
			};
			bindableActions = {{
				action = "throw";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
		};
		["RGD-5"] = {
			category = "grenade";
			displayName = "RGD-5";
			image = {
				size = UDim2.new(0, 22, 0, 22);
				value = "rbxassetid://15286655815";
			};
			name = "RGD-5";
			animations = {
				idle = "#.idle";
				sprint = "#.sprint";
				throw = "#.throw";
				crouch = "#.crouch";
			};
			characterAnimations = {
				idle = "#.character.idle";
				sprint = "#.character.sprint";
				recoil = "recoil";
			};
			fuse = 3.2;
			grenades = 2;
			price = 650;
			states = {
				idle = {
					walkspeed = 10;
					fov = 70;
				};
				sprint = {
					walkspeed = 14;
					fov = 75;
				};
			};
			bindableActions = {{
				action = "throw";
				bind = Enum.UserInputType.MouseButton1;
			}, {
				action = "sprint";
				bind = "run";
			}, {
				action = "crouch";
				bind = "crouchbind";
			}};
			rotations = {
				viewModel = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
				character = CFrame.Angles(0, math.pi, 0) + Vector3.new(0, 0, 0);
			};
		};
	};
}
local function deepFreeze_upvr(arg1) -- Line 3152, Named "deepFreeze"
	--[[ Upvalues[1]:
		[1]: deepFreeze_upvr (readonly)
	]]
	table.freeze(arg1)
	for _, v in pairs(arg1) do
		if type(v) == "table" then
			deepFreeze_upvr(v)
		end
	end
end
deepFreeze_upvr(module)
return module