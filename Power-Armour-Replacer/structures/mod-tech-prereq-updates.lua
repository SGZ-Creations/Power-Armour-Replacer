--[[ 
Hey if u came here to remove the reserch. Note i have added items from this reserch to craft it too.
Also i suggest u download "Clowns Sicence" if u haven't. Before u remove anything. As that would make it easier to unlock.
]]
-- Compatibility files
local util = require("compatibilities.util")

util.technology_dependancy
{
	["base"] = {
		["spidertron"] = {
			["par-fusion-reactor-tech-1"] = "par-fusion-reactor-tech-5",
			["par-exoskeleton-tech-1"] = "par-exoskeleton-tech-5",
		},
	},

	["space-spidertron"] = {
		["spidertron"] = {
			"par-night-immunity-tech-2",
		}
	},
	["boblogistics"] = {
		["par-roboport-tech-3"] = {
			"bob-robo-modular-1"
		},
		["par-roboport-tech-5"] = {
			"bob-robo-modular-2"
		},
		["par-roboport-tech-7"] = {
			"bob-robo-modular-3"
		},
		["par-roboport-tech-9"] = {
			"bob-robo-modular-4"
		},
	},

	["bobelectronics"] = {
		["par-laser-tech-3"] = {
			["advanced-electronics"] = "electronics"
		},
		["par-laser-tech-5"] = {
			"advanced-electronics"
		},
		["par-battery-tech-3"] = {
			["advanced-electronics"] = "electronics"
		},
		["par-battery-tech-5"] = {
			"advanced-electronics"
		},
		["par-armour-tech-3"] = {
			["advanced-electronics"] = "electronics"
		},
		["par-armour-tech-5"] = {
			["advanced-electronics-2"] = "advanced-electronics"
		},
		["par-armour-tech-7"] = {
			"advanced-electronics-2"
		},
		["par-armour-tech-9"] = {
			"advanced-electronics-3"
		},
	},


	["bobpower"] = {
		["par-laser-tech-3"] = {
		"bob-heat-pipe-1",
		},
		["par-laser-tech-5"] = {
			["nuclear-power"] = "bob-heat-pipe-2",
			"bob-heat-pipe-2",
		},
		["par-laser-tech-7"] = {
			"bob-heat-pipe-3"
		},
		["par-laser-tech-9"] = {
			"bob-heat-pipe-4"
		},
	},

	["bobwarfare"] = {
		["par-armour-tech-5"] = {
			["uranium-processing"] = "bob-armor-making-3"
		},
		["par-armour-tech-8"] = {
			"bob-armor-making-4"
		},
	},

	["bobrevamp"] = {
		["par-armour-tech-8"] = {
			"heat-shield",
		},
		["par-laser-tech-7"] = {
			"heat-shield",
		},
	},

	[{"bobrevamp", "bobplates",}] = {
		["par-fusion-reactor-tech-7"] = {
			"rtg",
		},
	},

	["bobplates"] = {
		["par-armour-tech-2"] = {
			["electronics"] = "automation",
		},
		["par-armour-tech-3"] = {
			["plastics"] = "zinc-processing",
			"aluminium-processing",
			"cobalt-processing",
		},
		["par-armour-tech-4"] = {
			["advanced-electronics"] = "invar-processing"
		},
		["par-armour-tech-5"] = {
			["electric-engine"] = "gem-processing-3"
		},
		["par-armour-tech-6"] = {
			["circuit-network"] = "titanium-processing",
			["advanced-electronics-3"] = "electric-engine",
			"battery-2",
		},
		["par-armour-tech-7"] = {
			["rocket-control-unit"] = "tungsten-processing",
			"ceramics",
		},
		["par-armour-tech-8"] = {
			"battery-3",
			"low-density-structure",
		},
		["par-armour-tech-9"] = {
			"nitinol-processing",
		},
		["par-armour-tech-10"] = {
			"rocket-control-unit",
		},
		["par-battery-tech-6"] = {
			"lithium-processing",
		},
		["par-shield-tech-6"] = {
			"lithium-processing",
			"cobalt-processing"
		},
		["par-fusion-reactor-tech-6"] = {
			"lithium-processing",
		},
		["par-solar-panel-tech-6"] = {
			"lithium-processing",
		},
		["par-laser-tech-4"] = {
			["advanced-electronics"] = "gem-processing-2"
		},
	},

	["angelssmelting"] = {
		["par-armour-tech-1"] = {
			"angels-solder-smelting-1",
		},
		["par-armour-tech-2"] = {
			"angels-steel-smelting-1",
		},
		["par-armour-tech-3"] = {
			["zinc-processing"] = "angels-stone-smelting-1",
			["cobalt-processing"] = "angels-lead-smelting-2",
			["aluminium-processing"] = "angels-aluminium-smelting-1",
		},
		["par-armour-tech-4"] = {
			"angels-silver-smelting-1",
			"angels-stone-smelting-2",
		},
		["par-armour-tech-5"] = {
			"plastic-1",
		},
		["par-armour-tech-6"] = {
			["rocket-fuel"] = "angels-titanium-smelting-1",
			["titanium-processing"] = "angels-titanium-smelting-1",
			["battery-2"] = "angels-glass-smelting-2",
			"angels-cobalt-steel-smelting-1",
			"angels-gold-smelting-1",
		},
		["par-armour-tech-7"] = {
			["tungsten-processing"] = "angels-tungsten-smelting-1",
			["low-density-structure"] = "angels-cobalt-steel-smelting-1",
		},
		["par-armour-tech-9"] = {
			["nitinol-processing"] = "angels-nitinol-smelting-1",
			"angels-stone-smelting-3",
		},
		["par-exoskeleton-tech-3"] = {
			"angels-chrome-smelting-1",
		},
		["par-fusion-reactor-tech-3"] = {
			"angels-invar-smelting-1",
			"angels-silver-smelting-1",
		},
		["par-fusion-reactor-tech-4"] = {
			"angels-nickel-smelting-1",
		},
		["par-fusion-reactor-tech-5"] = {
			"advanced-electronics",
			"angels-brass-smelting-1",
			"angels-gold-smelting-1",
		},
		["par-shield-tech-6"] = {
			"angels-silver-casting-2",
		},
	},

	[{"bobplates", "angelssmelting"}] = {
		["par-armour-tech-1"] = {
			"angels-bronze-smelting-1",
		},
		["par-armour-tech-3"] = {
			["advanced-electronics"] = "angels-brass-smelting-1",
		},
		["par-armour-tech-7"] = {
			["low-density-structure"] = "cobalt-processing",
		},
	},

	["angelspetrochem"] = {
		["par-armour-tech-4"] = {
		},
	},

	["Clowns-Processing"] = {
		["par-armour-tech-10"] = {
			"advanced-depleted-uranium-smelting-1",
		},
		["par-exoskeleton-tech-4"] = {
			"advanced-osmium-smelting",
		},
		["par-exoskeleton-tech-5"] = {
			"advanced-depleted-uranium-smelting-1",
		},
	},

	["Darkstar_utilities_fixed"] = {
		["par-laser-tech-5"] = {
			"laser-cores",
		},
	},

	["exotic-industries"] = {
		["par-armour-tech-1"] = {
			["automation"] = "logistics",
		},
	},

	["248k"] = {
		["par-armour-tech-3"] = {
			"el_caster_tech",
		},
		["par-battery-tech-3"] = {
			"el_lithium_tech",
		},
		["par-night-immunity-tech-1"] = {
			"el_lithium_tech",
		},
	},

	[{"248k", "angelssmelting"}] = {
		["par-armour-tech-3"] = {
			["angels-aluminium-smelting-1"] = "el_caster_tech",
		},
	},

	["IndustrialRevolution3"] = {
		["par-armour-tech-1"] = {
			["automation"] = "ir-bronze-forestry",
		},
		["par-armour-tech-2"] = {
			["electronics"] = "ir-iron-milestone",
		},
		["par-armour-tech-3"] = {
			["advanced-electronics"] = "ir-electronics-1",
			["military-2"] = "ir-gold-milestone",
			["plastics"] = "ir-electronics-1",
		},
		["par-battery-tech-1"] = {
			["steel-processing"] = "ir-bronze-milestone",
		},
		["par-battery-tech-2"] = {
			"ir-iron-milestone",
		},
		["par-battery-tech-3"] = {
			["advanced-electronics"] = "ir-electronics-1",
		},
		["par-battery-tech-4"] = {
			"ir-steel-milestone",
		},
		["par-fusion-reactor-tech-2"] = {
			"ir-iron-milestone",
		},
		["par-fusion-reactor-tech-4"] = {
			["electronics"] = "ir-iron-milestone",
		},
		["par-laser-tech-3"] = {
			"ir-electronics-1",
		},
		["par-laser-tech-4"] = {
			"ir-steel-milestone",
		},
		["par-laser-tech-5"] = {
		},
		["par-roboport-tech-1"] = {
			"ir-steambot",
		},
		["par-roboport-tech-2"] = {
			"ir-iron-milestone",
		},
		["par-roboport-tech-3"] = {
			"ir-iron-motor",
			"ir-electronics-1",
			"engine",
		},
		["par-roboport-tech-4"] = {
			"ir-steel-milestone",
		},
	},
}