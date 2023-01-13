data:extend({
    {
        type = "technology",
        name = "solar_1",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/solar-panel-equipment.png",
        effects =
        {

            {
                type = "unlock-recipe",
                recipe = "p-s_mk1"
            },
        },
        prerequisites = {"armour_1"},
        unit =
        {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 1}
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "solar_2",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/solar-panel-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "p-s_mk2"
            },
        },
        prerequisites = {"solar_1", },
        unit =
        {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 2}
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "solar_3",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/solar-panel-equipment.png",
        effects =
        {

            {
                type = "unlock-recipe",
                recipe = "p-s_mk3"
            },
        },
        prerequisites = {"solar_2", },
        unit =
        {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 3},
                { "logistic-science-pack", 1}
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "solar_4",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/solar-panel-equipment.png",
        effects =
        {

            {
                type = "unlock-recipe",
                recipe = "p-s_mk4"
            },
        },
        prerequisites = {"solar_3", },
        unit =
        {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 4},
                { "logistic-science-pack", 2},
                { "military-science-pack", 1}
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "solar_5",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/solar-panel-equipment.png",
        effects =
        {

            {
                type = "unlock-recipe",
                recipe = "p-s_mk5"
            },
        },
        prerequisites = {"solar_4", },
        unit =
        {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 5},
                { "logistic-science-pack", 3},
                { "military-science-pack", 2}
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "solar_6",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/solar-panel-equipment.png",
        effects =
        {

            {
                type = "unlock-recipe",
                recipe = "p-s_mk6"
            },
        },
        prerequisites = {"solar_5", },
        unit =
        {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 6},
                { "logistic-science-pack", 4},
                { "military-science-pack", 3},
                { "chemical-science-pack", 1}
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "solar_7",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/solar-panel-equipment.png",
        effects =
        {

            {
                type = "unlock-recipe",
                recipe = "p-s_mk7"
            },
        },
        prerequisites = {"solar_6", },
        unit =
        {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 7},
                { "logistic-science-pack", 5},
                { "military-science-pack", 4},
                { "chemical-science-pack", 2}
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "solar_8",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/solar-panel-equipment.png",
        effects =
        {

            {
                type = "unlock-recipe",
                recipe = "p-s_mk8"
            },
        },
        prerequisites = {"solar_7", },
        unit =
        {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 8},
                { "logistic-science-pack", 6},
                { "military-science-pack", 5},
                { "chemical-science-pack", 3},
                { "production-science-pack", 1}
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "solar_9",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/solar-panel-equipment.png",
        effects =
        {

            {
                type = "unlock-recipe",
                recipe = "p-s_mk9"
            },
        },
        prerequisites = {"solar_8", },
        unit =
        {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 9},
                { "logistic-science-pack", 7},
                { "military-science-pack", 6},
                { "chemical-science-pack", 4},
                { "production-science-pack", 2}
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "solar_10",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/solar-panel-equipment.png",
        effects =
        {

            {
                type = "unlock-recipe",
                recipe = "p-s_mk10"
            },
        },
        prerequisites = {"solar_9", },
        unit =
        {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 10},
                { "logistic-science-pack", 8},
                { "military-science-pack", 7},
                { "chemical-science-pack", 5},
                { "production-science-pack", 3},
                { "utility-science-pack", 1}
            },
            time = 15
        },
        order = "g-a-b"
    }
});
