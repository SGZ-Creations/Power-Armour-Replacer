local icon_utils = require("structures.icon-utils")
data:extend({
    {
        type = "technology",
        name = "par-fusion-reactor-tech-1",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 4, 1),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk1"
            },
        },
        prerequisites = { "par-armour-tech-1", },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-fusion-reactor-tech-2",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 4, 2),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk2"
            },
        },
        prerequisites = { "par-fusion-reactor-tech-1", "par-solar-panel-tech-2" },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 2 },
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-fusion-reactor-tech-3",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 4, 3),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk3"
            },
        },
        prerequisites = { "par-fusion-reactor-tech-2", "par-solar-panel-tech-3", "oil-processing", "battery", },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 3 },
                { "logistic-science-pack",   1 },
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-fusion-reactor-tech-4",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 4, 4),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk4"
            },
        },
        prerequisites = { "par-fusion-reactor-tech-3", "par-solar-panel-tech-4", "advanced-electronics", "engine", },
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
        name = "par-fusion-reactor-tech-5",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 4, 5),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk5"
            },
        },
        prerequisites = { "par-fusion-reactor-tech-4", "par-solar-panel-tech-5" },
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
        name = "par-fusion-reactor-tech-6",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 4, 6),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk6"
            },
        },
        prerequisites = { "par-fusion-reactor-tech-5", "par-solar-panel-tech-6" },
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
        name = "par-fusion-reactor-tech-7",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 4, 7),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk7"
            },
        },
        prerequisites = { "par-fusion-reactor-tech-6", "par-solar-panel-tech-7" },
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
        name = "par-fusion-reactor-tech-8",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 4, 8),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk8"
            },
        },
        prerequisites = { "par-fusion-reactor-tech-7", "par-solar-panel-tech-8" },
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
        name = "par-fusion-reactor-tech-9",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 4, 9),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk9"
            },
        },
        prerequisites = { "par-fusion-reactor-tech-8", "par-solar-panel-tech-9" },
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
        name = "par-fusion-reactor-tech-10",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 4, 10),
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk10"
            },
        },
        prerequisites = { "par-fusion-reactor-tech-9", "par-solar-panel-tech-10" },
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
