local recipes = {
    {
        type = "recipe",
        name = "e_mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {"",},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = "e_mk1"
    },
    {
        type = "recipe",
        name = "e_mk2",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"e_mk1", 1},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = "e_mk2"
    },
    {
        type = "recipe",
        name = "e_mk3",
        enabled = false,
        energy_required = 15,
        hide_from_player_crafting = true,
        ingredients = {
            {"e_mk2", 1},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = "e_mk3"
    },
    {
        type = "recipe",
        name = "e_mk4",
        enabled = false,
        energy_required = 20,
        hide_from_player_crafting = true,
        ingredients = {
            {"e_mk4", 1},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = "e_mk4"
    },
    {
        type = "recipe",
        name = "e_mk5",
        enabled = false,
        energy_required = 25,
        hide_from_player_crafting = true,
        ingredients = {
            {"e_mk4", 1},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = "e_mk5"
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
        name = "e_mk1",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "e_mk2",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "e_mk3",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "e_mk4",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "e_mk5",
        icon = "__base__.graphics.exoskeleton.png",
        stack_size = 1
    },
}

data:extend(recipes)