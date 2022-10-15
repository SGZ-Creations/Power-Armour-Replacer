local recipes = {
    {
        type = "recipe",
        name = "bi_mk1",
        ingredients = {
            {""},
            {""},
            {""},
            {""},
            {""},
        },
        result = "bi_mk1"
    },
    {
        type = "recipe",
        name = "bi_mk2",
        ingredients = {
            {"bi_mk1", 1},
            {""},
            {""},
            {""},
            {""},
        },
        result = "bi_mk2"
    },
    {
        type = "recipe",
        name = "nv_mk1",
        ingredients = {
            {"",},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = "nv_mk1"
    },
    {
        type = "recipe",
        name = "nv_mk2",
        ingredients = {
            {"nv_mk1", 1},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = "nv_mk2"
    },
}

local items = {
    {
        type = "equipment",
        name = "a_mk7",
        icon = "__base__.graphics.belt_immunity_equipment.png",
        stack_size = 1
    },
    {
        type = "equipment",
        name = "a_mk8",
        icon = "__base__.graphics.belt_immunity_equipment.png",
        stack_size = 1
    },
    {
        type = "equipment",
        name = "nv_mk1",
        icon = "__base__.graphics.nightvision.png",
        stack_size = 1
    },
    {
        type = "equipment",
        name = "nv_mk2",
        icon = "__base__.graphics.nightvision.png",
        stack_size = 1
    },
}