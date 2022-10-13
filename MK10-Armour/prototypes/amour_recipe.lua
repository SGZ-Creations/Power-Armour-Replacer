local recipes = {
    {
        type = "recipe",
        name = "a_mk1",
        ingredients = {
            {"modular-armor", 1},
            {"engine-unit", 5},
            {"steel-plate", 10}
        },
        result = "a_mk1"
    },
    {
        type = "recipe",
        name = "a_mk2",
        ingredients = {
            {"a_mk1", 1},
        },
        result = "a_mk2"
    },
    {
        type = "recipe",
        name = "a_mk3",
        ingredients = {
            {"a_mk2", 1},
        },
        result = "a_mk3"
    },
    {
        type = "recipe",
        name = "a_mk4",
        ingredients = {
            {"a_mk3", 1},
        },
        result = "a_mk4"
    },
    {
        type = "recipe",
        name = "a_mk5",
        ingredients = {
            {"a_mk4", 1},
        },
        result = "a_mk5"
    },
    {
        type = "recipe",
        name = "a_mk6",
        ingredients = {
            {"a_mk5", 1},
        },
        result = "a_mk6"
    },
    {
        type = "recipe",
        name = "a_mk7",
        ingredients = {
            {"a_mk6", 1},
        },
        result = "a_mk7"
    },
    {
        type = "recipe",
        name = "a_mk8",
        ingredients = {
            {"a_mk7", 1},
        },
        result = "a_mk8"
    },
    {
        type = "recipe",
        name = "a_mk9",
        ingredients = {
            {"a_mk8", 1},
        },
        result = "a_mk9"
    },
    {
        type = "recipe",
        name = "a_mk10",
        ingredients = {
            {"a_mk9", 1},
        },
        result = "a_mk10"
    },
}

local items = {
    {
        type = "armor",
        name = "a_mk1",
        icon = "__base__.graphics.power-armor-mk-2.png",
        stack_size = 1
    },
    {
        type = "armor",
        name = "a_mk2",
        icon = "__base__.graphics.power-armor-mk-2.png",
        stack_size = 1
    },
    {
        type = "armor",
        name = "a_mk3",
        icon = "__base__.graphics.power-armor-mk-2.png",
        stack_size = 1
    },
    {
        type = "armor",
        name = "a_mk4",
        icon = "__base__.graphics.power-armor-mk-2.png",
        stack_size = 1
    },
    {
        type = "armor",
        name = "a_mk5",
        icon = "__base__.graphics.power-armor-mk-2.png",
        stack_size = 1
    },
    {
        type = "armor",
        name = "a_mk6",
        icon = "__base__.graphics.power-armor-mk-2.png",
        stack_size = 1
    },
    {
        type = "armor",
        name = "a_mk7",
        icon = "__base__.graphics.power-armor-mk-2.png",
        stack_size = 1
    },
    {
        type = "armor",
        name = "a_mk8",
        icon = "__base__.graphics.power-armor-mk-2.png",
        stack_size = 1
    },
    {
        type = "armor",
        name = "a_mk9",
        icon = "__base__.graphics.power-armor-mk-2.png",
        stack_size = 1
    },
    {
        type = "armor",
        name = "a_mk10",
        icon = "__base__.graphics.power-armor-mk-2.png",
        stack_size = 1
    },
}

data:extend(recipes)