data:extend({
    {
        type = "technology",
        name = "exoskeleton_1",
        icon_size = 256, icon_mipmaps = 4,
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
        prerequisites = {"armour_2"},
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "e_mk1"
            }
        },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
            },
            time = 15
        },
        order = "g-h"
    },
    {
        type = "technology",
        name = "exoskeleton_2",
        icon_size = 256, icon_mipmaps = 4,
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
        prerequisites = {"exoskeleton_1", "battery", "armour_4"},
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "e_mk2"
            }
        },
        unit =
        {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
            },
            time = 15
        },
        order = "g-h"
    },
    {
        type = "technology",
        name = "exoskeleton_3",
        icon_size = 256, icon_mipmaps = 4,
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
        prerequisites = {"exoskeleton_2", "armour_6"},
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "e_mk3"
            }
        },
        unit =
        {
            count = 1500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "military-science-pack", 1 }
            },
            time = 15
        },
        order = "g-h"
    },
    {
        type = "technology",
        name = "exoskeleton_4",
        icon_size = 256, icon_mipmaps = 4,
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
        prerequisites = {"exoskeleton_3", "armour_8"},
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "e_mk4"
            }
        },
        unit =
        {
            count = 2000,
            ingredients = {
                {"automation-science-pack", 1 },
                {"logistic-science-pack", 1 },
                {"military-science-pack", 1 },
                {"chemical-science-pack", 1 }
            },
            time = 15
        },
        order = "g-h"
    },
    {
        type = "technology",
        name = "exoskeleton_5",
        icon_size = 256, icon_mipmaps = 4,
        icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
        prerequisites = {"exoskeleton_4", "armour_10"},
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "e_mk5"
            }
        },
        unit =
        {
            count = 2500,
            ingredients = {
                {"automation-science-pack", 1 },
                {"logistic-science-pack", 1 },
                {"military-science-pack", 1 },
                {"chemical-science-pack", 1 },
                {"production-science-pack", 1}
            },
            time = 15
        },
        order = "g-h"
    }
});