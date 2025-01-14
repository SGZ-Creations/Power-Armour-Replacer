--[[ 
Hey if u came here to remove the reserch. Note i have added items from this reserch to craft it too.
Also i suggest u download "Clowns Sicence" if u haven't. Before u remove anything. As that would make it easier to unlock.
]]
-- Compatibility files
local util = require("dlc-compatible.util")

util.technology_dependancy
{
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

--[[
	["bobwarfare"] = {
		["par-armour-tech-5"] = {
			["uranium-processing"] = "bob-armor-making-3"
		},
		["par-armour-tech-8"] = {
			"bob-armor-making-4"
		},
	},
]]
	["bobrevamp"] = {
		["par-armour-tech-8"] = {
			"heat-shield",
		},
		["par-laser-tech-7"] = {
			"heat-shield",
		},
	},

	[{"bobrevamp", "bobplates",}] = {
		["par-fission-reactor-tech-7"] = {
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
			["advanced-electronics"] = "invar-processing",
		},
		["par-armour-tech-5"] = {
			["electric-engine"] = "gem-processing-3",
			--["uranium-processing"] = "",
		},
		["par-armour-tech-6"] = {
			["advanced-electronics-3"] = "electric-engine",
			"titanium-processing",
			"battery-2",
		},
		["par-armour-tech-7"] = {
			"tungsten-processing",
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
			"armour-control-unit",
		},
		["par-battery-tech-6"] = {
			"lithium-processing",
		},
		["par-shield-tech-6"] = {
			"lithium-processing",
			"cobalt-processing"
		},
		["par-fission-reactor-tech-6"] = {
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
			"angels-gold-smelting-1",
		},
		["par-armour-tech-7"] = {
			["tungsten-processing"] = "angels-tungsten-smelting-1",
		},
		["par-armour-tech-9"] = {
			["nitinol-processing"] = "angels-nitinol-smelting-1",
			"angels-stone-smelting-3",
		},
		["par-exoskeleton-tech-3"] = {
			"angels-chrome-smelting-1",
		},
		["par-fission-reactor-tech-3"] = {
			"angels-silver-smelting-1",
		},
		["par-fission-reactor-tech-4"] = {
			"angels-nickel-smelting-1",
		},
		["par-fission-reactor-tech-5"] = {
			"advanced-circuit",
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
		["par-armour-tech-6"] = {
			"angels-cobalt-steel-smelting-1",
		},
		["par-armour-tech-7"] = {
			["low-density-structure"] = "cobalt-processing",
			["cobalt-processing"] = "angels-cobalt-steel-smelting-1",
		},
		["par-fission-reactor-tech-3"] = {
			"angels-invar-smelting-1",
		},
		["par-fission-reactor-tech-5"] = {
			"angels-brass-smelting-1",
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

	["pyalternativeenergy"] = {
		["par-armour-tech-3"] = {
			["advanced-electronics"] = "machine-components-mk01",
			[""] = "alloys-mk02",
		},
	},

	["pyhightech"] = {
		["par-armour-tech-2"] = {
			["electronics"] = "vacuum-tube-electronics",
			"aluminium-mk01",
			"chromium-mk01",
		},
		["par-armour-tech-5"] = {
			["advanced-electronics-2"] = "machine-components-mk02",
		},
	},
	--[[
	["pyrawores"] = {
		["mod"] = {
			["tech"] = "tech",
			"tech",
	},
	]]
}

if mods["TeleportationEquipment"] then
    local tech_eff = data.raw.technology["teleportation-equipment"]
    if not mods["exotic-industries"] then tech_eff.unit.count = 1000 end
    tech_eff.unit.ingredients =  {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
    }
end