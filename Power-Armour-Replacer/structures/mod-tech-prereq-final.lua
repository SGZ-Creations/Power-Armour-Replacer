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
			["par-battery-technology-1"] = "par-battery-technology-10",
			["par-exoskeleton-technology-1"] = "par-exoskeleton-technology-5",
			["nv-bi_mk1"] = "no-power-equipment_mk2",
			["armour_2"] = "armour_10",
		},
	},

	[{"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",}] = {
		["space-ai-robots"] = {
			["fusion-reactor_1"] = "fusion-reactor_8",
			["par-battery-technology-10"] = "par-battery-technology-8",
			["par-exoskeleton-technology-5"] = "par-exoskeleton-technology-3",
			["armour_10"] = "armour_6",
		},
	},

	["base"] = {
		["spidertron"] = {
			["fusion-reactor_1"] = "fusion-reactor_5",
			["par-exoskeleton-technology-1"] = "par-exoskeleton-technology-5",
		},
	},
}