local icon_utils = require("structures.icon-utils")

data:extend({
    {
        type = "technology",
        name = "par-exoskeleton-technology-1",
        icons = icon_utils.create_equipment_technology_icon("exoskeleton", 256, 4, 1),
        prerequisites = {"armour_2", "par-fusion-reactor-tech-1"},
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-exoskelton-mk1"
            }
        },
        unit =
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 15
        },
        order = "g-h"
    },
    {
        type = "technology",
        name = "par-exoskeleton-technology-2",
        icons = icon_utils.create_equipment_technology_icon("exoskeleton", 256, 4, 2),
        prerequisites = {"par-exoskeleton-technology-1", "battery", "armour_4"},
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-exoskelton-mk2"
            }
        },
        unit =
        {
            count = 1000,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
            },
            time = 15
        },
        order = "g-h"
    },
    {
        type = "technology",
        name = "par-exoskeleton-technology-3",
        icons = icon_utils.create_equipment_technology_icon("exoskeleton", 256, 4, 3),
        prerequisites = {"par-exoskeleton-technology-2", "armour_6"},
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-exoskelton-mk3"
            }
        },
        unit =
        {
            count = 1500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
                {"chemical-science-pack", 1},
            },
            time = 15
        },
        order = "g-h"
    },
    {
        type = "technology",
        name = "par-exoskeleton-technology-4",
        icons = icon_utils.create_equipment_technology_icon("exoskeleton", 256, 4, 4),
        prerequisites =
        {
            "par-exoskeleton-technology-3",
            "armour_8",
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-exoskelton-mk4"
            }
        },
        unit =
        {
            count = 2000,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
            },
            time = 15
        },
        order = "g-h"
    },
    {
        type = "technology",
        name = "par-exoskeleton-technology-5",
        icons = icon_utils.create_equipment_technology_icon("exoskeleton", 256, 4, 5),
        prerequisites = {"par-exoskeleton-technology-4", "armour_10"},
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-exoskelton-mk5"
            }
        },
        unit =
        {
            count = 2500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
            },
            time = 15
        },
        order = "g-h"
    }
});