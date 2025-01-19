local icon_utils = require("structures.icon-utils")
data:extend({
    {
        type = "technology",
        name = "par-shield-tech-1",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 1),
        effects = {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk1"
            },
        },
        prerequisites = {"par-fission-reactor-tech-1"},
        research_trigger = {type ="craft-item", item ="par-fission-reactor-mk1", count = 5},
        order = "Shield01"
    },
    {
        type = "technology",
        name = "par-shield-tech-2",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 2),
        effects = {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk2"
            },
        },
        prerequisites = {"par-shield-tech-1",},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 15
        },
        order = "Shield02"
    },
    {
        type = "technology",
        name = "par-shield-tech-3",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 3),
        effects = {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk3"
            },
        },
        prerequisites = {"par-shield-tech-2",},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 2},
                {"logistic-science-pack",   1},
            },
            time = 15
        },
        order = "Shield03"
    },
    {
        type = "technology",
        name = "par-shield-tech-4",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 4),
        effects = {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk4"
            },
        },
        prerequisites = {"par-shield-tech-3",},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 3},
                {"logistic-science-pack",   2},
                {"military-science-pack",   1},
            },
            time = 15
        },
        order = "Shield04"
    },
    {
        type = "technology",
        name = "par-shield-tech-5",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 5),
        effects = {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk5"
            },
        },
        prerequisites = {"par-shield-tech-4",},
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
        order = "Shield05"
    },
    {
        type = "technology",
        name = "par-shield-tech-6",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 6),
        effects = {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk6"
            },
        },
        prerequisites = {"par-shield-tech-5",},
        unit =  {
            count = 500,
            ingredients = {
                {"automation-science-pack", 5},
                {"logistic-science-pack",   4},
                {"military-science-pack",   3},
                {"chemical-science-pack",   2},
            },
            time = 15
        },
        order = "Shield06"
    },
    {
        type = "technology",
        name = "par-shield-tech-7",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 7),
        effects = {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk7"
            },
        },
        prerequisites = {"par-shield-tech-6",},
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
        order = "Shield07"
    },
    {
        type = "technology",
        name = "par-shield-tech-8",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 8),
        effects = {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk8"
            },
        },
        prerequisites = {"par-shield-tech-7",},
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
        order = "Shield08"
    },
    {
        type = "technology",
        name = "par-shield-tech-9",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 9),
        effects = {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk9"
            },
        },
        prerequisites = {"par-shield-tech-8"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 8},
                {"logistic-science-pack", 7},
                {"military-science-pack", 6},
                {"chemical-science-pack", 5},
                {"production-science-pack", 3},
                {"utility-science-pack", 1},
            },
            time = 15
        },
        order = "Shield09"
    },
    {
        type = "technology",
        name = "par-shield-tech-10",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 10),
        effects = {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk10"
            },
        },
        prerequisites = {"par-shield-tech-9",},
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
        order = "Shield10"
    }
});