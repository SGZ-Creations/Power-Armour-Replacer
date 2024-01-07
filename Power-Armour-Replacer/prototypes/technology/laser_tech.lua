data:extend({
    {
        type = "technology",
        name = "par-laser-tech-1",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/laser-shooting-speed.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk1"
            },
        },
        prerequisites = {"par-armour-tech-1", "par-fusion-reactor-tech-1"},
        unit =
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1}
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-laser-tech-2",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/laser-shooting-speed.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk2"
            },
        },
        prerequisites = {"par-laser-tech-1"},
        unit =
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 2}
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-laser-tech-3",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/laser-shooting-speed.png",
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
                {"automation-science-pack", 3},
                {"logistic-science-pack", 1}
            },
            time = 15
        },
        order = "g-a-b"
    },
    {
        type = "technology",
        name = "par-laser-tech-4",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/laser-shooting-speed.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk4"
            },
        },
        prerequisites = {"par-laser-tech-3", "advanced-electronics"},
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
        name = "par-laser-tech-5",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/laser-shooting-speed.png",
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
        name = "par-laser-tech-6",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/laser-shooting-speed.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk6"
            },
        },
        prerequisites = {"par-laser-tech-5",},
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
        name = "par-laser-tech-7",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/laser-shooting-speed.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk7"
            },
        },
        prerequisites = {"par-laser-tech-6",},
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
        name = "par-laser-tech-8",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/laser-shooting-speed.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk8"
            },
        },
        prerequisites = {"par-laser-tech-7",},
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
        name = "par-laser-tech-9",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/laser-shooting-speed.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk9"
            },
        },
        prerequisites = {"par-laser-tech-8",},
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
        name = "par-laser-tech-10",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/laser-shooting-speed.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-laser-mk10"
            },
        },
        prerequisites = {"par-laser-tech-9",},
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