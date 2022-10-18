local recipes = {
    {
        type = "recipe",
        name = "a_mk1",
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
        energy_required = 60.0,
        ingredients = {
            {"a_mk1", 1},
            {"battery", 100},
            {"engine-unit", 50},
            {"steel-plate", 150},
            {"advanced-circuit", 100},
        },
        result = "a_mk2",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "a_mk3",
        energy_required = 60.0,
        ingredients = {
            {"a_mk2", 1},
            {"solid-fuel", 50},
            {"steel-plate", 175},
            {"engine-unit", 100},
            {"advanced-circuit", 150},
        },
        result = "a_mk3",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "a_mk4",
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
        energy_required = 70.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk5", 1},
            --{"p-s_mk3", 5},
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
        energy_required = 70.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk7", 1},
            {"f_mk5", 10},
            {"submachine-gun", 15},
            {"nuclear-reactor", 25},
            {"assembling-machine-3", 10},
        },
        result = "a_mk8",
    },
    {
        type = "recipe",
        name = "a_mk9",
        energy_required = 70.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk8", 1},
            {"s_mk5", 5},
            {"centrifuge", 15},
            {"rocket-control-unit", 10},
            {"nuclear-reactor", 25},
        },
        result = "a_mk9",
    },
    {
        type = "recipe",
        name = "a_mk10",
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
--[[
local items = {
    {
        type = "armor",
        icon_size = 256,
        name = "a_mk1",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 256,
        name = "a_mk2",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 64,
        name = "a_mk3",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 64,
        name = "a_mk4",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 64,
        name = "a_mk5",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 64,
        name = "a_mk6",
        icon = "__MK10-Armour__/texture/items/power-armor-mk6.png",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 64,
        name = "a_mk7",
        icon = "__MK10-Armour__/texture/items/power-armor-mk7.png",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 64,
        name = "a_mk8",
        icon = "__MK10-Armour__/texture/items/power-armor-mk8.png",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 64,
        name = "a_mk9",
        icon = "__MK10-Armour__/texture/items/power-armor-mk9.png",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 64,
        name = "a_mk10",
        icon = "__MK10-Armour__/texture/items/power-armor-mk10.png",
        stack_size = 1,
    },
}

data:extend(items)
]]--
data:extend(recipes)
