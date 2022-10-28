-- Compatibility files
local compat = require("compatibilities.mods-compat")

compat.update_technologies{
    ["bobelectronics"] = {
        ["progression_5"] = {
            ["advanced-electronics-2"] = "advanced-electronics"
        },
        ["progression_7"] = {
            "advanced-electronics-2"
        },
        ["progression_9"] = {
            "advanced-electronics-3"
        },
    },
    ["bobwarfare"] = {
        ["progression_5"] = {
            "bob-armor-making-3"
        },
        ["progression_8"] = {
            "bob-armor-making-4"
        }
    },
    ["bobrevamp"] = {
        ["progression_8"] = {
            "heat-shield",
        }
    },
    ["bobplates"] = {
        ["progression_2"] = {
            "zinc-processing",
            ["plastics"] = "invar-processing",
        },
        ["progression_3"] = {
            "aluminium-processing",
            "cobalt-processing",
        },
        ["progression_5"] = {
            ["electric-engine"] = "gem-processing-2"
        },
        ["progression_6"] = {
            ["rocket-fuel"] = "titanium-processing",
            ["advanced-electronics-3"] = "electric-engine",
            ["rocket-control-unit"] = "battery-2",
        },
        ["progression_7"] = {
            "tungsten-processing",
            "ceramics"
        },
        ["progression_8"] = {
            "battery-3",
        },
        ["progression_9"] = {
            "nitinol-processing",
        },
        ["progression_10"] = {
            ["rocket-silo"] = "rocket-control-unit",
        },
    },
    ["boblogistics"] = {
        ["progression_10"] = {
            ["logistics-3"] = "logistics-5" ,
        },
    },
    ["bobassembly"] = {
        ["progression_10"] = {
            ["automation-3"] = "automation-6"
        },
    },
    ["angelssmelting"] = {
        ["progression_1"] = {
            "angels-bronze-smelting-1"
        },
        ["progression_2"] = {
            "angels-steel-smelting-1",
            ["zinc-processing"] = "angels-stone-smelting-1",
            ["invar-processing"] = "angels-invar-smelting-1",
        },
        ["progression_3"] = {
            ["advanced-electronics"] = "angels-brass-smelting-1",
            ["cobalt-processing"] = "angels-lead-smelting-2",
            ["aluminium-processing"] = "angels-aluminium-smelting-1",
        },
        ["progression_4"] = {
            ["low-density-structure"] = "angels-silver-smelting-1",
            "plastic-1",
            
        },
        ["progression_6"] = {
            ["titanium-processing"] = "angels-titanium-smelting-1",
            ["battery-2"] = "angels-glass-smelting-2",
            "angels-gold-smelting-1"
        },
        ["progression_7"] = {
           ["tungsten-processing"] = "angels-tungsten-smelting-1",
           "angels-cobalt-smelting-1",
        },
        ["progression_9"] = {
            ["nitinol-processing"] = "angels-nitinol-smelting-1"
        },
    },
    ["angelspetrochem"] = {
        ["progression_4"] = {
            ["uranium-processing"] = "angels-stone-smelting-2",
        },
    },
    ["Atomic_Overhaul"] = {
        ["progression_7"] = {
            ["nuclear-power"] = "non-moderated-fuel-processing",
        },
    },
    ["Clowns-Processing"] = {
        ["progression_10"] = {
            "advanced-depleted-uranium-smelting-1",
        },
    },
    ["248k"] = {
        ["progression_3"] = {
            ["angels-aluminium-smelting-1"] = "el_caster_tech",
        },
    },
}
