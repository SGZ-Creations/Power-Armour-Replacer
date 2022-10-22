-- Compatibility files
local compat = require("compatibilities.mods-compat")

compat.update_technologies{
    ["angelspetrochem"] = {
        ["progression_2"] = {
            ["plastics"] = "plastic-1",
        }
    },
    ["bobwarfare"] = {
        ["progression_5"] = {
            "bob-armor-making-3"
        },
        ["progression_8"] = {
            "bob-armor-making-4"
        }
    },
    ["angelssmelting"]= {
        ["progression_2"] = {
            "angels-steel-smelting-1"
        }
    }
}