local recipes = {
    {
        type = "recipe",
        name = "b_mk1",
        enabled = false,
        energy_required = 25,
        ingredients = {
            {"lab", 2},
            {"electronic-circuit", 10},
            {"copper-cable", 50},
        },
        result = "b_mk1"
        
    },
    {
        type = "recipe",
        name = "b_mk2",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {"b_mk1", 1},
            {"electronic-circuit", 15},
            {"iron-stick", 15},
            {"steel-plate", 20},
        },
        result = "b_mk2"
    },
    {
        type = "recipe",
        name = "b_mk3",
        enabled = false,
        energy_required = 35,
        ingredients = {
            {"b_mk2", 1},
            {"advanced-circuit", 10},
            {"steel-platete", 4},
        },
        result = "b_mk3"
    },
    {
        type = "recipe",
        name = "b_mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"b_mk3", 1},
            {"electronic-circuit", 15},
            {"advanced-circuit", 10},
            {"coal", 20},
            {"copper-cable", 25},
        },
        result = "b_mk4"
    },
    {
        type = "recipe",
        name = "b_mk5",
        enabled = false,
        energy_required = 45,
        ingredients = {
            {"b_mk4", 1},
            {"advanced-circuit", 20},
            {"iron-stick", 100},
            {"steel-plate", 55},
        },
        result = "b_mk5"
    },
    {
        type = "recipe",
        name = "b_mk6",
        enabled = false,
        energy_required = 50,
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk5", 1},
            {"advanced-circuit", 25},
            {"steel-plate", 20},
            {"plastic-bar", 35},
        },
        result = "b_mk6"
    },
    {
        type = "recipe",
        name = "b_mk7",
        enabled = false,
        energy_required = 55,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk6", 1},
            {"plastic-bar", 65},
            {type="fluid", name="lubricant", amount=300},
            {"advanced-circuit", 40},
        },
        result = "b_mk7"
    },
    {
        type = "recipe",
        name = "b_mk8",
        enabled = false,
        energy_required = 60,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk7", 1},
            {type="fluid", name="water", amount=500},
            {"processing-unit", 25},
        },
        result = "b_mk8"
    },
    {
        type = "recipe",
        name = "b_mk9",
        enabled = false,
        energy_required = 65,
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk8", 1},
            {"processing-unit", 50},
            {"battery", 100},
        },
        result = "b_mk9"
    },
    {
        type = "recipe",
        name = "b_mk10",
        enabled = false,
        energy_required = 70,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk9", 1},
            {"rocket-control-unit", 10},
            {type="fluid", name="sulfuric-acid", amount=150},
        },
        result = "b_mk10"
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