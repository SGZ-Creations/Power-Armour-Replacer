local util = require("compatibilities.util")
util.technology_dependancy
{
	["TeleportationEquipment"] = {
		["teleportation-equipment"] = {
			["par-solar-panel-tech-1"] = "par-armour-tech-3",
		},
	},

	["SpaceModFeorasFork"] = {
		["space-ai-robots"] = {
			["par-fusion-reactor-tech-1"] = "par-fusion-reactor-tech-10",
			["par-battery-tech-1"] = "par-battery-tech-10",
			["par-exoskeleton-tech-1"] = "par-exoskeleton-tech-5",
			["par-night-immunity-tech-1"] = "par-night-immunity-tech-2",
			["par-armour-tech-2"] = "par-armour-tech-10",
		},
	},

	[{"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",}] = {
		["space-ai-robots"] = {
			["par-fusion-reactor-tech-10"] = "par-fusion-reactor-tech-4",
			["par-battery-tech-10"] = "par-battery-tech-6",
			["par-exoskeleton-tech-5"] = "par-exoskeleton-tech-3",
			["par-armour-tech-10"] = "par-armour-tech-8",
			"par-roboport-tech-4",
			"par-laser-tech-10",
		},
	},

	["base"] = {
		["spidertron"] = {
			["par-fusion-reactor-tech-1"] = "par-fusion-reactor-tech-5",
			["par-exoskeleton-tech-1"] = "par-exoskeleton-tech-5",
		},
	},

	["spidertrontiers-community-updates"] = {
		["spidertron_mk2"] = {
			["par-fusion-reactor-tech-1"] = "par-fusion-reactor-tech-7",
		},
		["spidertron_mk3"] = {
			["par-fusion-reactor-tech-1"] = "par-fusion-reactor-tech-9",
		},
	},

	--[[
	["spidertrontiers"] = {
		["spidertron_mk2"] = {
			["par-fusion-reactor-tech-1"] = "par-fusion-reactor-tech-7",
		},
		["spidertron_mk3"] = {
			["par-fusion-reactor-tech-1"] = "par-fusion-reactor-tech-9",
		},
	},
	]]
}