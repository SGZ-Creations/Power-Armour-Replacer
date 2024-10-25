local icon_utils = require("structures.icon-utils")
data:extend({
    {
        type = "technology",
        name = "par-exoskeleton-tech-1",
        icons = icon_utils.create_equipment_technology_icon("exoskeleton", 256, 1),
        prerequisites = { "par-armour-tech-2", "par-fusion-reactor-tech-1" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-exoskeleton-mk1"
            }
        },
        research_trigger = {type ="craft-item", item ="par-armour-mk2", count = 1},
        order = "g-h"
    },
    {
        type = "technology",
        name = "par-exoskeleton-tech-2",
        icons = icon_utils.create_equipment_technology_icon("exoskeleton", 256, 2),
        prerequisites = { "par-exoskeleton-tech-1", "battery", "par-armour-tech-4" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-exoskeleton-mk2"
            }
        },
        unit =
        {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "military-science-pack",   1 },
            },
            time = 15
        },
        order = "g-h"
    },
    {
        type = "technology",
        name = "par-exoskeleton-tech-3",
        icons = icon_utils.create_equipment_technology_icon("exoskeleton", 256, 3),
        prerequisites = { "par-exoskeleton-tech-2", "par-armour-tech-6" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-exoskeleton-mk3"
            }
        },
        unit =
        {
            count = 1500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "military-science-pack",   1 },
                { "chemical-science-pack",   1 },
            },
            time = 15
        },
        order = "g-h"
    },
    {
        type = "technology",
        name = "par-exoskeleton-tech-4",
        icons = icon_utils.create_equipment_technology_icon("exoskeleton", 256, 4),
        prerequisites =
        {
            "par-exoskeleton-tech-3",
            "par-armour-tech-8",
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-exoskeleton-mk4"
            }
        },
        unit =
        {
            count = 2000,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "military-science-pack",   1 },
                { "chemical-science-pack",   1 },
                { "production-science-pack", 1 },
            },
            time = 15
        },
        order = "g-h"
    },
    {
        type = "technology",
        name = "par-exoskeleton-tech-5",
        icons = icon_utils.create_equipment_technology_icon("exoskeleton", 256, 5),
        prerequisites = { "par-exoskeleton-tech-4", "par-armour-tech-10" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-exoskeleton-mk5"
            }
        },
        unit =
        {
            count = 2500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "military-science-pack",   1 },
                { "chemical-science-pack",   1 },
                { "production-science-pack", 1 },
                { "utility-science-pack",    1 },
            },
            time = 15
        },
        order = "g-h"
    }
});
