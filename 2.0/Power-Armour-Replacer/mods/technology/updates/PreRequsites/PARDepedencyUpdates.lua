local PAR = require("mods.util")
PAR.technology_dependancy
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

	["bobrevamp"] = {
		["par-armour-tech-8"] = {
			"bob-heat-shield",
		},
		["par-laser-tech-7"] = {
			"bob-heat-shield",
		},
	},

	[{"bobrevamp", "bobplates",}] = {
		["par-fission-reactor-tech-7"] = {
			"bob-rtg",
		},
	},

	["bobplates"] = {
		["par-armour-tech-2"] = {
			["electronics"] = "automation",
		},
		["par-armour-tech-3"] = {
			["plastics"] = "bob-zinc-processing",
			"bob-aluminium-processing",
			"bob-cobalt-processing",
		},
		["par-armour-tech-4"] = {
			["processing-unit"] = "bob-invar-processing",
		},
		["par-armour-tech-5"] = {
			["electric-engine"] = "bob-gem-processing-3",
		},
		["par-armour-tech-6"] = {
			"bob-titanium-processing",
			"bob-battery-2",
		},
		["par-armour-tech-7"] = {
			"bob-tungsten-processing",
			"bob-ceramics",
		},
		["par-armour-tech-8"] = {
			"bob-battery-3",
			"low-density-structure",
		},
		["par-armour-tech-9"] = {
			"bob-nitinol-processing",
		},
		["par-shield-tech-6"] = {
			"bob-titanium-processing"
		},
		["par-laser-tech-5"] = {
			"bob-gem-processing-3"
		},
	},

	["angelssmelting"] = {
		["par-armour-tech-1"] = {
			"angels-solder-smelting-1",
		},
		["par-armour-tech-2"] = {
			"angels-steel-smelting-1",
		},
		["par-armour-tech-4"] = {
			"angels-silver-smelting-1",
			"angels-stone-smelting-2",
		},
		["par-armour-tech-6"] = {
			["rocket-fuel"] = "angels-titanium-smelting-1",
			["bob-titanium-processing"] = "angels-titanium-smelting-1",
			["bob-battery-2"] = "angels-glass-smelting-2",
			"angels-gold-smelting-1",
		},
		["par-armour-tech-7"] = {
			["bob-tungsten-processing"] = "angels-tungsten-smelting-1",
		},
		["par-armour-tech-9"] = {
			["bob-nitinol-processing"] = "angels-nitinol-smelting-1",
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

	["angelspetrochem"] = {
		["par-armour-tech-5"] = {
				"plastic-1",
			},
	},

	[{"bobplates", "angelssmelting"}] = {
		["par-armour-tech-1"] = {
			"angels-bronze-smelting-1",
		},
		["par-armour-tech-3"] = {
			["processing-unit"] = "angels-brass-smelting-1",
			["bob-zinc-processing"] = "angels-stone-smelting-1",
			["bob-cobalt-processing"] = "angels-lead-smelting-2",
			["bob-aluminium-processing"] = "angels-aluminium-smelting-1",
		},
		["par-armour-tech-6"] = {
			"angels-cobalt-steel-smelting-1",
		},
		["par-armour-tech-7"] = {
			["low-density-structure"] = "bob-cobalt-processing",
			["bob-cobalt-processing"] = "angels-cobalt-steel-smelting-1",
		},
		["par-fission-reactor-tech-3"] = {
			"angels-invar-smelting-1",
		},
		["par-fission-reactor-tech-5"] = {
			"angels-brass-smelting-1",
		},
	},
--[[
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

	["exotic-industries"] = {
		["par-armour-tech-1"] = {
			["automation"] = "logistics",
		},
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