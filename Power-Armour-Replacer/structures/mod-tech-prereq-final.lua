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
}