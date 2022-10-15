local recipes = {
    {
        type = "recipe",
        name = "a_mk1",
        ingredients = {
            {"modular-armor", 1},
            {"battery", 100},
            {"engine-unit", 50},
            {"steel-plate", 100},
            {"advanced-circuit", 75}
        },
        result = "a_mk1"
    },
    {
        type = "recipe",
        name = "a_mk2",
        ingredients = {
            {"a_mk1", 1},
            {"battery", 100},
            {"steel-plate", 150},
            {"engine-unit", 75},
            {"advanced-circuit", 100},
        },
        result = "a_mk2"
    },
    {
        type = "recipe",
        name = "a_mk3",
        ingredients = {
            {"a_mk2", 1},
            {"steel-plate", 175},
            {"engine-unit", 100},
            {"advanced-circuit", 150},
            {"processing-unit", 50},
        },
        result = "a_mk3"
    },
    {
        type = "recipe",
        name = "a_mk4",
        ingredients = {
            {"a_mk3", 1},
            {"solid-fuel", 100},
            {"processing-unit", 150},
            {"low-density-structure", 55},
            {"uranium-235", 250},
        },
        result = "a_mk4"
    },
    {
        type = "recipe",
        name = "a_mk5",
        ingredients = {
            {"a_mk4", 1},
            {"solid-fuel", 200},
            {"processing-unit", 200},
            {"rocket-control-unit", 45},
            {"uranium-235", 350},
        },
        result = "a_mk5"
    },
    {
        type = "recipe",
        name = "a_mk6",
        ingredients = {
            {"a_mk5", 1},
            {"solid-fuel", 300},
            {"rocket-control-unit", 65},
            {"processing-unit", 150},
            {"rocket-control-unit", 55},
        },
        result = "a_mk6"
    },
    {
        type = "recipe",
        name = "a_mk7",
        ingredients = {
            {"a_mk6", 1},
            {"nuclear-fuel", 20},
            {"beacon", 10},
            {"nuclear-reactor", 25},
            {"f_mk1", 10},
        },
        result = "a_mk7"
    },
    {
        type = "recipe",
        name = "a_mk8",
        ingredients = {
            {"a_mk7", 1},
            {"nuclear-reactor", 25},
            {"f_mk1", 20},
            {"assembling-machine-3", 10},
            {"s_mk8", 5},
        },
        result = "a_mk8"
    },
    {
        type = "recipe",
        name = "a_mk9",
        ingredients = {
            {"a_mk8", 1},
            {"nuclear-reactor", 25},
            {"f_mk5", 10},
            {"centrifuge", 15},
            {"assembling-machine", 10},
        },
        result = "a_mk9"
    },
    {
        type = "recipe",
        name = "a_mk10",
        ingredients = {
            {"a_mk9", 1},
            {"nuclear-reactor", 25},
            {"f_mk5", 10},
            {"centrifuge", 15},
            {"assembling-machine-3", 20},
        },
        result = "a_mk10"
    },
}

local items = {
    {
        type = "armor",
        name = "a_mk1",
        icon = "__base__.graphics.power-armor.png",
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