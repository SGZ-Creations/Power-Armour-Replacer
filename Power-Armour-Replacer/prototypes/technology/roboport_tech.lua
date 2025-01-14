local icon_utils = require("structures.icon-utils")
data:extend({
    {
        type = "technology",
        name = "par-roboport-tech-1",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-1", 256, 1),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-roboport-mk1"
            },
        },
        prerequisites = {"par-fission-reactor-tech-1"},
        research_trigger = {type ="craft-item", item ="par-fission-reactor-mk1", count = 5},
        order = "Roboport01"
    },
    {
        type = "technology",
        name = "par-roboport-tech-2",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-1", 256, 2),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-roboport-mk2"
            },
        },
        prerequisites = {"par-roboport-tech-1",},
        unit =
        {
            count = 750,
            ingredients = {
                {"automation-science-pack", 2},
            },
            time = 15
        },
        order = "Roboport02"
    },
    {
        type = "technology",
        name = "par-roboport-tech-3",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-1", 256, 3),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-roboport-mk3"
            },
        },
        prerequisites = {"par-roboport-tech-2",},
        unit =
        {
            count = 750,
            ingredients = {
                {"automation-science-pack", 3},
                {"logistic-science-pack", 1},
            },
            time = 15
        },
        order = "Roboport03"
    },
    {
        type = "technology",
        name = "par-roboport-tech-4",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-1", 256, 4),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-roboport-mk4"
            },
        },
        prerequisites = {"par-roboport-tech-3",},
        unit =
        {
            count = 750,
            ingredients = {
                {"automation-science-pack", 4},
                {"logistic-science-pack", 2},
                {"military-science-pack", 1},
            },
            time = 15
        },
        order = "Roboport04"
    },
    {
        type = "technology",
        name = "par-roboport-tech-5",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-1", 256, 5),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-roboport-mk5"
            },
        },
        prerequisites = {"par-roboport-tech-4", },
        unit =
        {
            count = 750,
            ingredients = {
                {"automation-science-pack", 5},
                {"logistic-science-pack", 3},
                {"military-science-pack", 2},
                {"chemical-science-pack", 1},
            },
            time = 15
        },
        order = "Roboport05"
    },
    {
        type = "technology",
        name = "par-roboport-tech-6",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-2", 256, 6),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-roboport-mk6"
            },
        },
        prerequisites = {"par-roboport-tech-5", },
        unit =
        {
            count = 750,
            ingredients = {
                {"automation-science-pack", 6},
                {"logistic-science-pack", 4},
                {"military-science-pack", 3},
                {"chemical-science-pack", 2},
            },
            time = 15
        },
        order = "Roboport06"
    },
    {
        type = "technology",
        name = "par-roboport-tech-7",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-2", 256, 7),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-roboport-mk7"
            },
        },
        prerequisites = {"par-roboport-tech-6", },
        unit =
        {
            count = 750,
            ingredients = {
                {"automation-science-pack", 7},
                {"logistic-science-pack", 5},
                {"military-science-pack", 4},
                {"chemical-science-pack", 3},
                {"production-science-pack", 1},
            },
            time = 15
        },
        order = "Roboport07"
    },
    {
        type = "technology",
        name = "par-roboport-tech-8",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-2", 256, 8),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-roboport-mk8"
            },
        },
        prerequisites = {"par-roboport-tech-7", },
        unit =
        {
            count = 750,
            ingredients = {
                {"automation-science-pack", 8},
                {"logistic-science-pack", 6},
                {"military-science-pack", 5},
                {"chemical-science-pack", 4},
                {"production-science-pack", 2},
            },
            time = 15
        },
        order = "Roboport08"
    },
    {
        type = "technology",
        name = "par-roboport-tech-9",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-2", 256, 9),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-roboport-mk9"
            },
        },
        prerequisites = {"par-roboport-tech-8",} ,
        unit =
        {
            count = 750,
            ingredients = {
                {"automation-science-pack", 9},
                {"logistic-science-pack", 7},
                {"military-science-pack", 6},
                {"chemical-science-pack", 5},
                {"production-science-pack", 3},
                {"utility-science-pack", 1},
            },
            time = 15
        },
        order = "Roboport09"
    },
    {
        type = "technology",
        name = "par-roboport-tech-10",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-2", 256, 10),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-roboport-mk10"
            },
        },
        prerequisites = {"par-roboport-tech-9",},
        unit =
        {
            count = 750,
            ingredients = {
                {"automation-science-pack", 10},
                {"logistic-science-pack", 8},
                {"military-science-pack", 7},
                {"chemical-science-pack", 6},
                {"production-science-pack", 4},
                {"utility-science-pack", 2},
            },
            time = 15
        },
        order = "Roboport10"
    }
});