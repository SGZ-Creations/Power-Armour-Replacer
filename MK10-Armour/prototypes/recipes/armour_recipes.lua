local recipes = {
    {
        type = "recipe",
        name = "a_mk1",
        enabled = false,
        energy_required = 60.0,
        ingredients = {
            {"heavy-armor", 1},
            {"engine-unit", 100},
            {"steel-plate", 100},
            {"electronic-circuit", 50}
        },
        result = "a_mk1",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "a_mk2",
        enabled = false,
        energy_required = 60.0,
        ingredients = {
            {"a_mk1", 1},
            {"plastic-bar", 100},
            {"engine-unit", 50},
            {"steel-plate", 150},
            {"electronic-circuit", 100},
        },
        result = "a_mk2",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "a_mk3",
        enabled = false,
        energy_required = 60.0,
        ingredients = {
            {"a_mk2", 1},
            {"solid-fuel", 50},
            {"steel-plate", 175},
            {"engine-unit", 100},
            {"advanced-circuit", 125},
        },
        result = "a_mk3",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "a_mk4",
        enabled = false,
        energy_required = 60.0,
        ingredients = {
            {"a_mk3", 1},
            {"solid-fuel", 100},
            {"low-density-structure", 55},
            {"uranium-235", 250},
        },
        result = "a_mk4",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "a_mk5",
        enabled = false,
        energy_required = 70.0,
        ingredients = {
            {"a_mk4", 1},
            {"solid-fuel", 200},
            {"processing-unit", 200},
            {"advanced-circuit", 150},
            {"uranium-235", 350},
        },
        result = "a_mk5",
    },
    {
        type = "recipe",
        name = "a_mk6",
        enabled = false,
        energy_required = 70.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk5", 1},
            --{"ps_mk3", 5},
            {"solid-fuel", 300},
            {"rocket-control-unit", 50},
            {"processing-unit", 150},
            {"rocket-fuel", 55},
        },
        result = "a_mk6",
    },
    {
        type = "recipe",
        name = "a_mk7",
        enabled = false,
        energy_required = 70.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk6", 1},
            {"f_mk5", 5},
            --{"l_mk3", 5},
            {"nuclear-fuel", 20},
            {"beacon", 10},
            {"nuclear-reactor", 25},
        },
        result = "a_mk7",
    },
    {
        type = "recipe",
        name = "a_mk8",
        enabled = false,
        energy_required = 70.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk7", 1},
            {"f_mk5", 10},
            {"electric-furnace", 10},
            {"submachine-gun", 15},
            {"nuclear-reactor", 25},
            
        },
        result = "a_mk8",
    },
    {
        type = "recipe",
        name = "a_mk9",
        enabled = false,
        energy_required = 70.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk8", 1},
            {"s_mk5", 5},
            {"assembling-machine-3", 10},
            {"rocket-control-unit", 10},
            {"nuclear-reactor", 25},
        },
        result = "a_mk9",
    },
    {
        type = "recipe",
        name = "a_mk10",
        enabled = false,
        energy_required = 80.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk9", 1},
            {"s_mk8", 5},
            {"rocket-silo", 5},
            {"centrifuge", 15},
            {"fast-transport-belt", 35},
        },
        result = "a_mk10",
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
