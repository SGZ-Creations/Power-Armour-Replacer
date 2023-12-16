local util = require("compatibilities.util")
util.technology_dependancy
{
	["TeleportationEquipment"] = {
		["teleportation-equipment"] = {
			["solar_1"] = "armour_3",
		},
	},

	["SpaceModFeorasFork"] = {
		["space-ai-robots"] = {
			["fusion-reactor_1"] = "fusion-reactor_10",
			["battery_1"] = "battery_10",
			["exoskeleton_1"] = "exoskeleton_5",
			["nv-bi_mk1"] = "no-power-equipment_mk2",
			["armour_2"] = "armour_10",
		},
	},

	[{"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",}] = {
		["space-ai-robots"] = {
			["fusion-reactor_1"] = "fusion-reactor_8",
			["battery_10"] = "battery_8",
			["exoskeleton_5"] = "exoskeleton_3",
			["armour_10"] = "armour_6",
		},
	},

	["base"] = {
		["spidertron"] = {
			["fusion-reactor_1"] = "fusion-reactor_5",
			["exoskeleton_1"] = "exoskeleton_5",
		},
	},
}