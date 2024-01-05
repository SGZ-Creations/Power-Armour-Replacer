if mods["PyBlock"] then
    data:extend({
        {
            type = "technology",
            name = "par-armour-tech-1",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "par-armour-mk1"
                },
            },
            prerequisites = {"automation",},
            unit =
            {
                count = 250,
                ingredients = {
                    {"automation-science-pack", 1}
                },
                time = 15
            },
            order = "g-a-b"
        },
        {
            type = "technology",
            name = "par-armour-tech-2",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "par-armour-mk2"
                },
            },
            prerequisites = {"par-armour-tech-1",},
            unit = {
                count = 250,
                ingredients = {
                    {"automation-science-pack", 2}
                },
                time = 15
            },
            order = "g-a-b"
        },
        {
            type = "technology",
            name = "par-armour-tech-3",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "par-armour-mk3"
                },
            },
            prerequisites = {"par-armour-tech-2",},
            unit = {
                count = 250,
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
            name = "par-armour-tech-4",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "par-armour-mk4"
                },
            },
            prerequisites = {"par-armour-tech-3",},
            unit = {
                count = 250,
                ingredients = {
                    {"automation-science-pack", 4},
                    {"logistic-science-pack", 2},
                    {"military-science-pack", 1}
                },
                time = 15
            },
            order = "g-a-b"
        },
        {
            type = "technology",
            name = "par-armour-tech-5",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "par-armour-mk5"
                },
            },
            prerequisites = {"par-armour-tech-4",},
            unit = {
                count = 250,
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
            name = "par-armour-tech-6",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "par-armour-mk6"
                },
            },
            prerequisites = {"par-armour-tech-5",},
            unit = {
                count = 1000,
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
            name = "par-armour-tech-7",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "par-armour-mk7"
                },
            },
            prerequisites = {"par-armour-tech-6",},
            unit = {
                count = 250,
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
            name = "par-armour-tech-8",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "par-armour-mk8"
                },
            },
            prerequisites = {"par-armour-tech-7",},
            unit = {
                count = 250,
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
            name = "par-armour-tech-9",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects =  {
                {
                    type = "unlock-recipe",
                    recipe = "par-armour-mk9"
                },
            },
            prerequisites = {"par-armour-tech-8",},
            unit = {
                count = 250,
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
            name = "par-armour-tech-10",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "par-armour-mk10"
                },
            },
            prerequisites = {"par-armour-tech-9"},
            unit = {
                count = 250,
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
        },
    })
end

