local util = require("compatibilities.util")

util.technology_dependancy
{
	[{"bobrevamp", "bobplate",}] = {
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
}