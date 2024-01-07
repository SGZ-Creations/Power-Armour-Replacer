data:extend({
    {
        type = "technology",
        name = "par-shield-tech-1",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/energy-shield-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk1"
            },
        },
        prerequisites = {"par-armour-tech-1", "par-fusion-reactor-tech-1"},
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
        name = "par-shield-tech-2",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk2"
            },
        },
        prerequisites = {"par-shield-tech-1",},
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
        name = "par-shield-tech-3",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk3"
            },
        },
        prerequisites = {"par-shield-tech-2",},
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
        name = "par-shield-tech-4",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk4"
            },
        },
        prerequisites = {"par-shield-tech-3",},
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
        name = "par-shield-tech-5",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk5"
            },
        },
        prerequisites = {"par-shield-tech-4",},
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
        name = "par-shield-tech-6",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk6"
            },
        },
        prerequisites = {"par-shield-tech-5",},
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
        name = "par-shield-tech-7",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk7"
            },
        },
        prerequisites = {"par-shield-tech-6",},
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
        name = "par-shield-tech-8",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk8"
            },
        },
        prerequisites = {"par-shield-tech-7",},
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
        name = "par-shield-tech-9",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk9"
            },
        },
        prerequisites = {"par-shield-tech-8"},
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
        name = "par-shield-tech-10",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-shield-mk10"
            },
        },
        prerequisites = {"par-shield-tech-9",},
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