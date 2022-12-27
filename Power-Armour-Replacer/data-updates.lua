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
            "bob-armor-making-3"
        },
        ["armour_8"] = {
            "bob-armor-making-4"
        },
        ["spidertron"] = {
            ["fusion-reactor_5"] = "fusion-reactor_1",
            ["exoskeleton_5"] = "exoskeleton_1",
        }
    },
    ["bobrevamp"] = {
        ["armour_8"] = {
            "heat-shield",
        }
    },
    ["bobplates"] = {
        ["armour_2"] = {
            "zinc-processing",
            ["plastics"] = "invar-processing",
        },
        ["armour_3"] = {
            "aluminium-processing",
            "cobalt-processing",
        },
        ["armour_5"] = {
            ["electric-engine"] = "gem-processing-2"
        },
        ["armour_6"] = {
            ["rocket-fuel"] = "titanium-processing",
            ["advanced-electronics-3"] = "electric-engine",
            ["rocket-control-unit"] = "battery-2",
        },
        ["armour_7"] = {
            "tungsten-processing",
            "ceramics"
        },
        ["armour_8"] = {
            "battery-3",
        },
        ["armour_9"] = {
            "nitinol-processing",
        },
        ["armour_10"] = {
            ["rocket-silo"] = "rocket-control-unit",
        },
    },
    ["boblogistics"] = {
        ["armour_10"] = {
            ["logistics-3"] = "logistics-5" ,
        },
    },
    ["bobassembly"] = {
        ["armour_9"] = {
            ["automation-3"] = "automation-5"
        },
    },
    ["angelssmelting"] = {
        ["armour_1"] = {
            "angels-bronze-smelting-1"
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
            ["low-density-structure"] = "angels-silver-smelting-1",
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
           "angels-cobalt-smelting-1",
        },
        ["armour_9"] = {
            ["nitinol-processing"] = "angels-nitinol-smelting-1",
            "angels-stone-smelting-3"
        },
    },
    ["angelspetrochem"] = {
        ["armour_4"] = {
            ["uranium-processing"] = "angels-stone-smelting-2",
        },
    },
    ["Atomic_Overhaul"] = {
        ["armour_7"] = {
            ["nuclear-power"] = "non-moderated-fuel-processing",
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
