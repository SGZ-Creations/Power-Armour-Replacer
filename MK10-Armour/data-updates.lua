-- Compatibility files
local compat = require("compatibilities.mods-compat")

compat.update_technologies{
    ["bobwarfare"] = {
        ["progression_5"] = {
            "bob-armor-making-3"
        },
        ["progression_8"] = {
            "bob-armor-making-4"
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
            "gem-processing-2"
        }
    },
    ["angelsrefining"] = {
        ["progression_1"] = {
            "angels-bronze-smelting-1"
        },
    },
    ["angelssmelting"] = {
        ["progression_2"] = {
            "angels-steel-smelting-1",
            ["zinc-processing"] = "angels-stone-smelting-1",
            ["invar-processing"] = "angels-invar-smelting-1",
        },
        ["progression_3"] = {
            "angels-brass-smelting-1",
            ["cobalt-processing"] = "angels-lead-smelting-2",
            ["aluminium-processing"] = "angels-aluminium-smelting-1",
        }
    },
    -- ["angelspetrochem"] = {
    --     [""] = {
    --     }
    -- },
}