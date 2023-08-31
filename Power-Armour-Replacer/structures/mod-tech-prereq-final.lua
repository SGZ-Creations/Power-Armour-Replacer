local util = require("compatibilities.util")

util.technology_dependancy
{
	[{"bobrevamp", "bobplate",}] = { --dosen't work a.t.m.
		["fusion-reactor_7"] = {
			"rtg",
		},
	},
	["TeleportationEquipment"] = {
		["teleportation-equipment"] = {
			["solar_1"] = "armour_3",
		},
	},

	[{"SpaceMod", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",}] = {
		["protection-fields"] = {
			["bob-energy-shield-equipment-6"] = "shield_6",
		},
		["fusion-reactor"] = {
			["fusion-reactor-equipment-4"] = "fusion-reactor_4",
		}
	},

	[{"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",}] = {
		["protection-fields"] = {
			["bob-energy-shield-equipment-6"] = "shield_6",
		},
		["fusion-reactor"] = {
			["fusion-reactor-equipment-4"] = "fusion-reactor_4",
		},
		["laser-cannon"] = {
			["personal-laser-defense-equipment-6"] = "laser_6",
		},
		["space-ai-robots"] = {
			["exoskeleton-equipment-3"] = "exoskeleton_3",
			["bob-battery-equipment-6"] = "battery_6",
			["power-armor-mk2"] = "armour_8",
			["exoskeleton_1"] = "fusion-reactor_4",
			["battery_2"] = "steel-processing",
		}
	},
}