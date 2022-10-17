local recipes = {
    {
        type = "recipe",
        name = "bi_mk1",
        energy_required = 10,
        ingredients = {
            {"lubricant", 200},
            {"electronic-circuit", 10},
            {"plastic-bar", 35},
            {"battery", 5},
        },
        result = "bi_mk1"
    },
    {
        type = "recipe",
        name = "bi_mk2",
        energy_required = 20,
        hide_from_player_crafting = true,
        ingredients = {
            {"bi_mk1", 1},
            {"sulfuric-acid", 150},
            {"f_mk5", 2},
            {"", },
            {"", },
        },
        result = "bi_mk2"
    },
    {
        type = "recipe",
        name = "nv_mk1",
        energy_required = 10,
        ingredients = {
            {"lubricant", 200},
            {"iron-gear-wheel", 100},
            {"copper-wire", 100},
            {"small-lamp", 10},
            {"electronic-circuit", 35},
        },
        result = "nv_mk1"
    },
    {
        type = "recipe",
        name = "nv_mk2",
        energy_required = 20,
        hide_from_player_crafting = true,
        ingredients = {
            {"nv_mk1", 1},
            {"f_mk5", 2},
            {"lubricant", 200},
            {"advanced-circuit", 55},
            {"processing-unit", 40},
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