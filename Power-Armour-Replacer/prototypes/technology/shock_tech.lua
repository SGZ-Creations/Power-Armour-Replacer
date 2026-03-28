--local icon_utils = require("structures.icon-utils")
---@class LuaSettings
local SS = settings.startup
data:extend({
    {
        type = "technology",
        name = "par-shock-defense-tech-1",
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/discharge-defense-equipment.png"),
        effects = {
            {type = "unlock-recipe", recipe = "par-shock-defense-mk1"},
		},
        prerequisites = {"par-fission-reactor-tech-1" },
        research_trigger = {type ="craft-item", item ="par-fission-reactor-mk1", count = 5},
        order = "Laser01"
    },
    {
        type = "technology",
        name = "par-shock-defense-tech-2",
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/discharge-defense-equipment.png"),
        effects = {
            {type = "unlock-recipe", recipe = "par-shock-defense-mk2"},
        },
        prerequisites = {"par-shock-defense-tech-1"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1}
            },
            time = 15
        },
        order = "Laser02"
    },
    {
        type = "technology",
        name = "par-shock-defense-tech-3",
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/discharge-defense-equipment.png"),
        effects = {
            {type = "unlock-recipe", recipe = "par-shock-defense-mk3"},
        },
        prerequisites = {"par-shock-defense-tech-2"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 2},
                {"logistic-science-pack",   1}
            },
            time = 15
        },
        order = "Laser03"
    },
    {
        type = "technology",
        name = "par-shock-defense-tech-4",
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/discharge-defense-equipment.png"),
        effects = {
            {type = "unlock-recipe", recipe = "par-shock-defense-mk4"},
        },
        prerequisites = {"par-shock-defense-tech-3", "advanced-circuit"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 3},
                {"logistic-science-pack",   2},
                {"military-science-pack",   1},
            },
            time = 15
        },
        order = "Laser04"
    },
    {
        type = "technology",
        name = "par-shock-defense-tech-5",
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/discharge-defense-equipment.png"),
        effects = {
            {type = "unlock-recipe", recipe = "par-shock-defense-mk5"},
        },
        prerequisites = {"par-shock-defense-tech-4", "laser"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 4},
                {"logistic-science-pack",   3},
                {"military-science-pack",   2},
                {"chemical-science-pack",   1},
            },
            time = 15
        },
        order = "Laser05"
    },
    {
        type = "technology",
        name = "par-shock-defense-tech-6",
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/discharge-defense-equipment.png"),
        effects = {
            {type = "unlock-recipe",recipe = "par-shock-defense-mk6"},
        },
        prerequisites = {"par-shock-defense-tech-5"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 5},
                {"logistic-science-pack",   4},
                {"military-science-pack",   3},
                {"chemical-science-pack",   2},
            },
            time = 15
        },
        order = "Laser06"
    },
    {
        type = "technology",
        name = "par-shock-defense-tech-7",
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/discharge-defense-equipment.png"),
        effects = {
            {type = "unlock-recipe", recipe = "par-shock-defense-mk7"},
        },
        prerequisites = {"par-shock-defense-tech-6"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 6},
                {"logistic-science-pack",   5},
                {"military-science-pack",   4},
                {"chemical-science-pack",   3},
                {"production-science-pack", 1},
            },
            time = 15
        },
        order = "Laser07"
    },
    {
        type = "technology",
        name = "par-shock-defense-tech-8",
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/discharge-defense-equipment.png"),
        effects = {
            {type = "unlock-recipe", recipe = "par-shock-defense-mk8"},
        },
        prerequisites = {"par-shock-defense-tech-7"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 7},
                {"logistic-science-pack",   6},
                {"military-science-pack",   5},
                {"chemical-science-pack",   4},
                {"production-science-pack", 2},
            },
            time = 15
        },
        order = "Laser08"
    },
    {
        type = "technology",
        name = "par-shock-defense-tech-9",
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/discharge-defense-equipment.png"),
        effects = {
            {type = "unlock-recipe", recipe = "par-shock-defense-mk9"},
        },
        prerequisites = {"par-shock-defense-tech-8"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 8},
                {"logistic-science-pack",   7},
                {"military-science-pack",   6},
                {"chemical-science-pack",   5},
                {"production-science-pack", 4},
                {"utility-science-pack",    3},
            },
            time = 15
        },
        order = "Laser09"
    },
    {
        type = "technology",
        name = "par-shock-defense-tech-10",
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/discharge-defense-equipment.png"),
        effects = {
            {type = "unlock-recipe", recipe = "par-shock-defense-mk10"},
        },
        prerequisites = {"par-shock-defense-tech-9"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 9},
                {"logistic-science-pack",   8},
                {"military-science-pack",   7},
                {"chemical-science-pack",   6},
                {"production-science-pack", 4},
                {"utility-science-pack",    2},
            },
            time = 15
        },
        order = "Laser10"
    }
});

if SS["ShortcutTech"].value == true then
    data.raw["shortcut"]["give-discharge-defense-remote"].unavailable_until_unlocked = false
elseif SS["ShortcutTech"].value == false then
    data.raw["shortcut"]["give-discharge-defense-remote"].technology_to_unlock = "par-shock-defense-tech-1"
end