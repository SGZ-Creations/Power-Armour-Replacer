local icon_utils = require("structures.icon-utils")
data:extend({
    {
        type = "technology",
        name = "par-laser-tech-1",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 1),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk1"
            },
        },
        prerequisites = {"par-fusion-reactor-tech-1" },
        research_trigger = {type ="craft-item", item ="par-fusion-reactor-mk1", count = 5},
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-laser-tech-2",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 2),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk2"
            },
        },
        prerequisites = { "par-laser-tech-1" },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 2 }
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-laser-tech-3",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 3),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk3"
            },
        },
        prerequisites =
        {
            "par-laser-tech-2",
        },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 3 },
                { "logistic-science-pack",   1 }
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-laser-tech-4",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 4),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk4"
            },
        },
        prerequisites = { "par-laser-tech-3", "advanced-circuit",},
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 4 },
                { "logistic-science-pack",   2 },
                { "military-science-pack",   1 },
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-laser-tech-5",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 5),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk5"
            },
        },
        prerequisites =
        {
            "par-laser-tech-4",
            "laser",
        },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 5 },
                { "logistic-science-pack",   3 },
                { "military-science-pack",   2 },
                { "chemical-science-pack",   1 },
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-laser-tech-6",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 6),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk6"
            },
        },
        prerequisites = { "par-laser-tech-5", },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 6 },
                { "logistic-science-pack",   4 },
                { "military-science-pack",   3 },
                { "chemical-science-pack",   2 },
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-laser-tech-7",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 7),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk7"
            },
        },
        prerequisites = { "par-laser-tech-6", },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 7 },
                { "logistic-science-pack",   5 },
                { "military-science-pack",   4 },
                { "chemical-science-pack",   3 },
                { "production-science-pack", 1 },
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-laser-tech-8",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 8),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk8"
            },
        },
        prerequisites = { "par-laser-tech-7", },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 8 },
                { "logistic-science-pack",   6 },
                { "military-science-pack",   5 },
                { "chemical-science-pack",   4 },
                { "production-science-pack", 2 },
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-laser-tech-9",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 9),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk9"
            },
        },
        prerequisites = { "par-laser-tech-8", },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 9 },
                { "logistic-science-pack",   7 },
                { "military-science-pack",   6 },
                { "chemical-science-pack",   5 },
                { "production-science-pack", 3 },
                { "utility-science-pack",    1 },
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-laser-tech-10",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 10),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk10"
            },
        },
        prerequisites = { "par-laser-tech-9", },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 10 },
                { "logistic-science-pack",   8 },
                { "military-science-pack",   7 },
                { "chemical-science-pack",   6 },
                { "production-science-pack", 4 },
                { "utility-science-pack",    2 },
            },
            time = 15
        },
        order = "g-a-b"
    }
});
