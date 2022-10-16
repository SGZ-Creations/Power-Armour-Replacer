local recipes = {
    {
        type = "recipe",
        name = "b_mk1",
        ingredients = {
            {"lab", 2},
            {"circuit", 15},
            {"copper-cable", 50},
        },
        result = b_mk1
        
    },
    {
        type = "recipe",
        name = "b_mk2",
        ingredients = {
            {"b_mk1",},
            {"small-lamp", 5},
            {"steel-chest", 4},
        },
        result = b_mk2
    },
    {
        type = "recipe",
        name = "b_mk3",
        ingredients = {
            {"b_mk2",},
            {"constant-combinator", 2},
            {"steel-chest", 4},
        },
        result = b_mk3
    },
    {
        type = "recipe",
        name = "b_mk4",
        ingredients = {
            {"b_mk3",},
            {"small-lamp", 5},
            {"constant-combinator", 3},
        },
        result = b_mk4
    },
    {
        type = "recipe",
        name = "b_mk5",
        ingredients = {
            {"b_mk4",},
            {"advanced-circuit", 20},
            {"",},
            {"",},
            {"",},
        },
        result = b_mk5
    },
    {
        type = "recipe",
        name = "b_mk6",
        ingredients = {
            {"b_mk5",},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = b_mk6
    },
    {
        type = "recipe",
        name = "b_mk7",
        ingredients = {
            {"b_mk6",},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = b_mk7
    },
    {
        type = "recipe",
        name = "b_mk8",
        ingredients = {
            {"b_mk7",},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = b_mk8
    },
    {
        type = "recipe",
        name = "b_mk9",
        ingredients = {
            {"b_mk8",},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = b_mk9
    },
    {
        type = "recipe",
        name = "b_mk10",
        ingredients = {
            {"b_mk9",},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = b_mk10
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