-- Compatibility files
local compat = require("compatibilities.mods-compat")

compat.update_technologies{
    ["bobelectronics"] = {
        ["armour_5"] = {
            ["advanced-electronics-2"] = "advanced-electronics"
        },
        ["armour_7"] = {
            "advanced-electronics-2"
        },
        ["armour_9"] = {
            "advanced-electronics-3"
        },
    },
    ["bobwarfare"] = {
        ["armour_5"] = {
            ["uranium-processing"] = "bob-armor-making-3"
        },
        ["armour_8"] = {
            "bob-armor-making-4"
        },
    },
    ["bobrevamp"] = {
        ["armour_8"] = {
            "heat-shield",
        }
    },
    ["bobplates"] = {
        ["armour_2"] = {
            "zinc-processing",
            ["electronics"] = "invar-processing",
        },
        ["armour_3"] = {
            "aluminium-processing",
            "cobalt-processing",
        },
        ["armour_5"] = {
            ["electric-engine"] = "gem-processing-2"
        },
        ["armour_6"] = {
            ["circuit-network"] = "titanium-processing",
            ["advanced-electronics-3"] = "electric-engine",
            "battery-2",
        },
        ["armour_7"] = {
            ["rocket-control-unit"] = "tungsten-processing",
            "ceramics",
        },
        ["armour_8"] = {
            "battery-3",
            "low-density-structure"
        },
        ["armour_9"] = {
            "nitinol-processing",
        },
        ["armour_10"] = {
            "rocket-control-unit",
        }
    },
    ["angelssmelting"] = {
        ["armour_1"] = {
            "angels-bronze-smelting-1",
            "angels-solder-smelting-1",
        },
        ["armour_2"] = {
            "angels-steel-smelting-1",
            ["zinc-processing"] = "angels-stone-smelting-1",
            ["invar-processing"] = "angels-invar-smelting-1",
        },
        ["armour_3"] = {
            ["advanced-electronics"] = "angels-brass-smelting-1",
            ["cobalt-processing"] = "angels-lead-smelting-2",
            ["aluminium-processing"] = "angels-aluminium-smelting-1",
        },
        ["armour_4"] = {
            "angels-silver-smelting-1",
            "plastic-1",
            
        },
        ["armour_6"] = {
            ["rocket-fuel"] = "angels-titanium-smelting-1",
            ["titanium-processing"] = "angels-titanium-smelting-1",
            ["battery-2"] = "angels-glass-smelting-2",
            "angels-gold-smelting-1"
        },
        ["armour_7"] = {
           ["tungsten-processing"] = "angels-tungsten-smelting-1",
           ["low-density-structure"] = "cobalt-processing",
        },
        ["armour_9"] = {
            ["nitinol-processing"] = "angels-nitinol-smelting-1",
            "angels-stone-smelting-3"
        },
    },
    ["angelspetrochem"] = {
        ["armour_4"] = {
            "angels-stone-smelting-2",
        },
    },
    ["Clowns-Processing"] = {
        ["armour_10"] = {
            "advanced-depleted-uranium-smelting-1",
        },
    },
    ["248k"] = {
        ["armour_3"] = {
            ["angels-aluminium-smelting-1"] = "el_caster_tech",
            "el_caster_tech",
        },
        ["battery_1"] = {
            "el_lithium_tech"
        },
        
    },
}
