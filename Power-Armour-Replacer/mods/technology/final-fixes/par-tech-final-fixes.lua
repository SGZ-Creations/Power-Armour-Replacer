local PAR = require("mods.util")
PAR.technology_dependancy
{
	["base"] = {
		["spidertron"] = {
			["par-fission-reactor-tech-1"] = "par-fission-reactor-tech-5",
			["par-exoskeleton-tech-1"] = "par-exoskeleton-tech-2",
		},
	},

	["SpidertronPatrols"] = {
		["spidertron"] = {
			"par-exoskeleton-tech-3",
		},
	},

	["space-age"] = {
		["mech-armor"] = {
			["par-armour-tech-2"] = "par-armour-tech-5",
		}
	},

	["mech-armor"] = {
		["mech-armor"] = {
			["par-armour-tech-2"] = "par-armour-tech-5",
		}
	},

	["TeleportationEquipment"] = {
		["teleportation-equipment"] = {
			["par-solar-panel-tech-1"] = "par-armour-tech-3",
		},
	},

	["SpaceModFeorasFork"] = {
		["space-ai-robots"] = {
			["par-fission-reactor-tech-1"] = "par-fission-reactor-tech-10",
			["par-battery-tech-1"] = "par-battery-tech-10",
			["par-exoskeleton-tech-1"] = "par-exoskeleton-tech-5",
			["par-night-immunity-tech-1"] = "par-night-immunity-tech-2",
			["par-armour-tech-2"] = "par-armour-tech-10",
		},
	},

	[{"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",}] = {
		["space-ai-robots"] = {
			["par-fission-reactor-tech-10"] = "par-fission-reactor-tech-4",
			["par-battery-tech-10"] = "par-battery-tech-6",
			["par-exoskeleton-tech-5"] = "par-exoskeleton-tech-3",
			["par-armour-tech-10"] = "par-armour-tech-8",
			"par-roboport-tech-4",
			"par-laser-tech-10",
		},
	},

	["spidertrontiers-community-updates"] = {
		["spidertron_mk2"] = {
			["par-fission-reactor-tech-1"] = "par-fission-reactor-tech-7",
		},
		["spidertron_mk3"] = {
			["par-fission-reactor-tech-1"] = "par-fission-reactor-tech-9",
		},
	},
}
local Tech = data.raw.technology

if mods["nanobots-refined"] then
    table.insert(Tech["par-night-immunity-tech-1"].effects,{type="unlock-recipe",recipe="equipment-bot-chip-feeder"})
    table.insert(Tech["par-night-immunity-tech-1"].effects,{type="unlock-recipe",recipe="equipment-bot-chip-launcher"})
    table.insert(Tech["par-night-immunity-tech-1"].effects,{type="unlock-recipe",recipe="equipment-bot-chip-trees"})
    table.insert(Tech["par-night-immunity-tech-1"].effects,{type="unlock-recipe",recipe="equipment-bot-chip-items"})
    table.insert(Tech["par-night-immunity-tech-1"].effects,{type="unlock-recipe",recipe="equipment-bot-chip-nanointerface"})
end


if mods["Krastorio2"] then
	table.insert(Tech["par-roboport-tech-6"].effects,{type="unlock-recipe",recipe="vehicle-roboport"})
end