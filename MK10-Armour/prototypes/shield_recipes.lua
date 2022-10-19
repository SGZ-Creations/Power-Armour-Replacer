local recipes = {
    {
        type = "recipe",
        name = "s_mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {"iron-plate", 10},
            {"copper-plate", 15},
            {"electronic-circuit", 20},
        },
        result = "s_mk1"
    },
    {
        type = "recipe",
        name = "s_mk2",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"s_mk1", 1},
            {"", },
        },
        result = "s_mk2"
    },
    {
        type = "recipe",
        name = "s_mk3",
        enabled = false,
        energy_required = 15,
        ingredients = {
            {"s_mk2", 1},
        },
        result = "s_mk3"
    },
    {
        type = "recipe",
        name = "s_mk4",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"s_mk3", 1},
        },
        result = "s_mk4"
    },
    {
        type = "recipe",
        name = "s_mk5",
        enabled = false,
        energy_required = 25,
        ingredients = {
            {"s_mk4", 1},
        },
        result = "s_mk5"
    },
    {
        type = "recipe",
        name = "s_mk6",
        enabled = false,
        energy_required = 30,
        hide_from_player_crafting = true,
        ingredients = {
            {"s_mk5", 1},
        },
        result = "s_mk6"
    },
    {
        type = "recipe",
        name = "s_mk7",
        enabled = false,
        energy_required = 35,
        hide_from_player_crafting = true,
        ingredients = {
            {"s_mk6", 1},
        },
        result = "s_mk7"
    },
    {
        type = "recipe",
        name = "s_mk8",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"s_mk7", 1},
        },
        result = "s_mk8"
    },
    {
        type = "recipe",
        name = "s_mk9",
        enabled = false,
        energy_required = 45,
        hide_from_player_crafting = true,
        ingredients = {
            {"s_mk8", 1},
        },
        result = "s_mk9"
    },
    {
        type = "recipe",
        name = "s_mk10",
        enabled = false,
        energy_required = 50,
        hide_from_player_crafting = true,
        ingredients = {
            {"s_mk9", 1},
        },
        result = "s_mk10"
    },
}

--[[
local compat = require("compatibilities/mods-compat")

compat.replace_ingredients(recipes[1], {
--bobs mods
    ["bobplate"] = {
        ["old-ingredient-1"] = {"new-ingredient-1, 5"}, -- the first three are for replacing ingredients in the recipe
        ["old-ingredient-2"] = {"new-ingredient-2, 2"},
        ["old-ingredient-3"] = {"new-ingredient-3, 7"},
        {"new-ingredient-4", count},                    -- these two are for adding new ingredients to the recipe
        {"new-ingredient-5", count}
    },
    ["bobequipment"] = {
        ["old-ingredient-1"] = {"new-ingredient-1, 5"},
        ["old-ingredient-2"] = {"new-ingredient-2, 2"},
        ["old-ingredient-3"] = {"new-ingredient-3, 7"},
        {"new-ingredient-4", count},
        {"new-ingredient-5", count}
    },
    --space/K2
})
]]--

local items = {
    {
        type = "item",
        name = "s_mk1",
        icon = "__base__/graphics/equipment/energy-shield-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk1",
        order = "aa[energy-shield-mk2]",
        subgroup = "equipment",
    },
    {
        type = "item",
        name = "s_mk2",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk2",
        order = "ab[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk3",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk3",
        order = "ac[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk4",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk4",
        order = "ad[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk5",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk5",
        order = "ae[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk6",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk6",
        order = "af[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk7",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk7",
        order = "ag[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk8",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk8",
        order = "ah[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk9",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk9",
        order = "ai[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk10",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk10",
        order = "aj[energy-shield-mk2]",
        subgroup = "equipment",

    },
}

data:extend(items)
data:extend(recipes)
