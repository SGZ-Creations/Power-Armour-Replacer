local recipes = {
    {
        type = "recipe",
        name = "r_mk1",
        energy_required = 10,
        ingredients = {
            {"iron-chest", 5},
            {"electronic-circuit", 75},
            {"copper-cable", 150},
            {"small-lamp", 2},
        },
        result = "r_mk1"
    },
    {
        type = "recipe",
        name = "r_mk2",
        energy_required = 20,
        ingredients = {
            {"r_mk1", 1},
            {"electronic-circuit", 100},
            {"iron-gear-wheel", 125},
            {type="fluid", name="steam", amount=250},
        },
        result = "r_mk2"
    },
    {
        type = "recipe",
        name = "r_mk3",
        energy_required = 30,
        ingredients = {
            {"r_mk2", 1},
            {"electronic-circuit", 125},
            {"engine-unit", 80},
            {"", },
        },
        result = "r_mk3"
    },
    {
        type = "recipe",
        name = "r_mk4",
        energy_required = 40,
        ingredients = {
            {"r_mk3", 1},
        },
        result = "r_mk4"
    },
    {
        type = "recipe",
        name = "r_mk5",
        energy_required = 50,
        ingredients = {
            {"r_mk4", 1},
        },
        result = "r_mk5"
    },
    {
        type = "recipe",
        name = "r_mk6",
        energy_required = 60,
        hide_from_player_crafting = true,
        ingredients = {
            {"r_mk5", 1},
        },
        result = "r_mk6"
    },
    {
        type = "recipe",
        name = "r_mk7",
        energy_required = 70,
        hide_from_player_crafting = true,
        ingredients = {
            {"r_mk6", 1},
        },
        result = "r_mk7"
    },
    {
        type = "recipe",
        name = "r_mk8",
        energy_required = 80,
        hide_from_player_crafting = true,
        ingredients = {
            {"r_mk7", 1},
        },
        result = "r_mk8"
    },
    {
        type = "recipe",
        name = "r_mk9",
        energy_required = 90,
        hide_from_player_crafting = true,
        ingredients = {
            {"r_mk8", 1},
        },
        result = "r_mk9"
    },
    {
        type = "recipe",
        name = "r_mk10",
        energy_required = 100,
        hide_from_player_crafting = true,
        ingredients = {
            {"r_mk9", 1},
        },
        result = "r_mk10"
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

local item = {
    {
        type = "item",
        name = "a_mk1",
        icon = "__base__.graphics.Personal_roboport.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "a_mk2",
        icon = "__base__.graphics.Personal_roboport_MK2.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "a_mk3",
        icon = "__base__.graphics.Personal_roboport_MK2.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "a_mk4",
        icon = "__base__.graphics.Personal_roboport_MK2.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "a_mk5",
        icon = "__base__.graphics.Personal_roboport_MK2.png",
        stack_size = 1
    }, 
}