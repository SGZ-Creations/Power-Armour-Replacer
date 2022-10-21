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
            {"electronic-circuit", 20},
            {"engine-unit", 20},
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
            {"electronic-circuit", 20},
            {"advanced-circuit", 15},
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
            {"small-lamp", 10},
            {"plastic-bar", 50},
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
            {"electric-engine-unit", 15},
            {"advanced-circuit", 30},
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
            {"f_mk3", 3},
            {"uranium-235", 80},
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
            {"low-density-structure", 30},
            {"solid-fuel", 250},
        },
        result = "s_mk7"
    },
    {
        type = "recipe",
        name = "s_mk8",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"s_mk7", 1},
            {"uranium-235", 120},
            {"processing-unit", 80},
            {type="fluid", name="lubricant", amount=350},
        },
        result = "s_mk8"
    },
    {
        type = "recipe",
        name = "s_mk9",
        enabled = false,
        energy_required = 45,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"s_mk8", 1},
            {"b_mk8", 6},
            {type="fluid", name="petroleum-gas", amount=350},
        },
        result = "s_mk9"
    },
    {
        type = "recipe",
        name = "s_mk10",
        enabled = false,
        energy_required = 50,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"s_mk9", 1},
            {"rocket-control-unit", 45},
            {"processing-unit", 130},
            {type="fluid", name="sulfuric-acid", amount=350},
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

data:extend(recipes)
