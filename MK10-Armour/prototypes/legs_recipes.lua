local recipes = {
    {
        type = "recipe",
        name = "l_mk1",
        ingredients = {
            {"",},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = "l_mk1"
    },
    {
        type = "recipe",
        name = "l_mk2",
        ingredients = {
            {"f_mk1", 1},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = "l_mk2"
    },
    {
        type = "recipe",
        name = "l_mk3",
        ingredients = {
            {"f_mk2", 1},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = "l_mk3"
    },
    {
        type = "recipe",
        name = "l_mk4",
        ingredients = {
            {"f_mk4", 1},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = "l_mk4"
    },
    {
        type = "recipe",
        name = "l_mk5",
        ingredients = {
            {"f_mk4", 1},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = "l_mk5"
    },
}

local items = {
    {
        type = "armor",
        name = "a_mk1",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
    {
        type = "armor",
        name = "a_mk2",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
    {
        type = "armor",
        name = "a_mk3",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
    {
        type = "armor",
        name = "a_mk4",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
    {
        type = "armor",
        name = "a_mk5",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
}

data:extend(recipes)