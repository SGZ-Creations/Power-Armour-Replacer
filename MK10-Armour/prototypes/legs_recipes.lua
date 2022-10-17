local recipes = {
    {
        type = "recipe",
        name = "l_mk1",
        energy_required = 5,
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
        energy_required = 10,
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
        energy_required = 15,
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
        energy_required = 20,
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
        energy_required = 25,
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
        type = "item",
        name = "a_mk1",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "a_mk2",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "a_mk3",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "a_mk4",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "a_mk5",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
}

data:extend(recipes)