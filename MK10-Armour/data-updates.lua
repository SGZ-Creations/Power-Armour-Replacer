-- Compatibility files
local compat = require("compatibilities.mods-compat")

compat.update_technologies{
    ["angelspetrochem"] = {
        ["progression_2"] = {
            ["plastics"] = "plastic-1",
        }
    },
    ["bobwarfare"] = {
        ["progression_2"] = {
            "bob-armor-making-3"
        },
        ["progression_3"] = {
            "bob-armor-making-4"
        }
    }
}