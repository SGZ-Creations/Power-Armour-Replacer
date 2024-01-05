local util = require("compatibilities.util")
util.technology_dependancy
{
	["TeleportationEquipment"] = {
		["teleportation-equipment"] = {
			["solar_1"] = "par-armour-tech-3",
		},
	},

	["SpaceModFeorasFork"] = {
		["space-ai-robots"] = {
			["par-fusion-reactor-tech-1"] = "par-fusion-reactor-tech-10",
			["par-battery-tech-1"] = "par-battery-tech-10",
			["par-exoskeleton-tech-1"] = "par-exoskeleton-tech-5",
			["nv-bi_mk1"] = "no-power-equipment_mk2",
			["par-armour-tech-2"] = "par-armour-tech-10",
		},
	},

	[{"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",}] = {
		["space-ai-robots"] = {
			["par-fusion-reactor-tech-1"] = "par-fusion-reactor-tech-8",
			["par-battery-tech-10"] = "par-battery-tech-8",
			["par-exoskeleton-tech-5"] = "par-exoskeleton-tech-3",
			["par-armour-tech-10"] = "par-armour-tech-6",
		},
	},

	["base"] = {
		["spidertron"] = {
			["par-fusion-reactor-tech-1"] = "par-fusion-reactor-tech-5",
			["par-exoskeleton-tech-1"] = "par-exoskeleton-tech-5",
		},
	},
}