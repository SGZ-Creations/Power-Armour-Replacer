if mods["PyBlock"] then
    data:extend({
        {
            type = "technology",
            name = "armour_1",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "a_mk1"
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
            name = "armour_2",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "a_mk2"
                },
            },
            prerequisites = {"armour_1",},
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
            name = "armour_3",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "a_mk3"
                },
            },
            prerequisites = {"armour_2",},
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
            name = "armour_4",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "a_mk4"
                },
            },
            prerequisites = {"armour_3",},
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
            name = "armour_5",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "a_mk5"
                },
            },
            prerequisites = {"armour_4",},
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
            name = "armour_6",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "a_mk6"
                },
            },
            prerequisites = {"armour_5",},
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
            name = "armour_7",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "a_mk7"
                },
            },
            prerequisites = {"armour_6",},
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
            name = "armour_8",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "a_mk8"
                },
            },
            prerequisites = {"armour_7",},
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
            name = "armour_9",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects =  {
                {
                    type = "unlock-recipe",
                    recipe = "a_mk9"
                },
            },
            prerequisites = {"armour_8",},
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
            name = "armour_10",
            icon_size = 256, icon_mipmaps = 4,
            icon = "__base__/graphics/technology/power-armor-mk2.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "a_mk10"
                },
            },
            prerequisites = {"armour_9"},
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

