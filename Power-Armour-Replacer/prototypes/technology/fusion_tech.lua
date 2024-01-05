data:extend({
    {
        type = "technology",
        name = "par-fusion-reactor-tech-1",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk1"
            },
        },
        prerequisites = {"par-armour-tech-1",},
        unit =
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-fusion-reactor-tech-2",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk2"
            },
        },
        prerequisites = {"par-fusion-reactor-tech-1", "solar_2"},
        unit =
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 2},
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-fusion-reactor-tech-3",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk3"
            },
        },
        prerequisites = {"par-fusion-reactor-tech-2", "solar_3", "oil-processing", "battery",},
        unit =
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 3},
                {"logistic-science-pack", 1},
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-fusion-reactor-tech-4",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk4"
            },
        },
        prerequisites = {"par-fusion-reactor-tech-3", "solar_4", "advanced-electronics", "engine",},
        unit =
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 4},
                {"logistic-science-pack", 2},
                {"military-science-pack", 1},
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-fusion-reactor-tech-5",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk5"
            },
        },
        prerequisites = {"par-fusion-reactor-tech-4", "solar_5"},
        unit =
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 5},
                {"logistic-science-pack", 3},
                {"military-science-pack", 2},
                {"chemical-science-pack", 1},
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-fusion-reactor-tech-6",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk6"
            },
        },
        prerequisites = {"par-fusion-reactor-tech-5", "solar_6"},
        unit =
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 6},
                {"logistic-science-pack", 4},
                {"military-science-pack", 3},
                {"chemical-science-pack", 2},
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-fusion-reactor-tech-7",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk7"
            },
        },
        prerequisites = {"par-fusion-reactor-tech-6", "solar_7"},
        unit =
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 7},
                {"logistic-science-pack", 5},
                {"military-science-pack", 4},
                {"chemical-science-pack", 3},
                {"production-science-pack", 1},
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-fusion-reactor-tech-8",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk8"
            },
        },
        prerequisites = {"par-fusion-reactor-tech-7", "solar_8"},
        unit =
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 8},
                {"logistic-science-pack", 6},
                {"military-science-pack", 5},
                {"chemical-science-pack", 4},
                {"production-science-pack", 2},
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-fusion-reactor-tech-9",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk9"
            },
        },
        prerequisites = {"par-fusion-reactor-tech-8", "solar_9"},
        unit =
        {
            count = 500,
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
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-fusion-reactor-tech-10",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-fusion-reactor-mk10"
            },
        },
        prerequisites = {"par-fusion-reactor-tech-9", "solar_10"},
        unit =
        {
            count = 500,
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
        order = "g-a-b"
    }
});