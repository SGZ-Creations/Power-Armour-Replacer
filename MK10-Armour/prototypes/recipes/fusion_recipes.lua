local recipes = {
    {
        type = "recipe",
        name = "f_mk1",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"electronic-circuit", 10},
            {"steel-plate", 40},
            {"copper-plate", 50},
        },
        result = "f_mk1"
    },
    {
        type = "recipe",
        name = "f_mk2",
        enabled = false,
        energy_required = 45,
        ingredients = {
            {"f_mk1", 1},
            {"iron-plate", 95},
            {"electronic-circuit", 20},
        },
        result = "f_mk2"
    },
    {
        type = "recipe",
        name = "f_mk3",
        enabled = false,
        energy_required = 50,
        ingredients = {
            {"f_mk2", 1},
            {"b_mk1", 3},
            {"electronic-circuit", 30},
            {"solid-fuel", 50},
        },
        result = "f_mk3"
    },
    {
        type = "recipe",
        name = "f_mk4",
        enabled = false,
        energy_required = 55,
        ingredients = {
            {"f_mk3", 1},
            {"advanced-circuit", 25},
            {"engine-unit", 20 },
        },
        result = "f_mk4"
    },
    {
        type = "recipe",
        name = "f_mk5",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {"f_mk4", 1},
            {"b_mk3", 5},
            {"advanced-circuit", 45},
            {"engine-unit", 40},
        },
        result = "f_mk5"
    },
    {
        type = "recipe",
        name = "f_mk6",
        enabled = false,
        energy_required = 65,
        hide_from_player_crafting = true,
        ingredients = {
            {"f_mk5", 1},
            {"advanced-circuit", 50},
            {"engine-unit", 60},
            {"uranium-fuel-cell", 150},
        },
        result = "f_mk6"
    },
    {
        type = "recipe",
        name = "f_mk7",
        enabled = false,
        energy_required = 70,
        hide_from_player_crafting = true,
        ingredients = {
            {"f_mk6", 1},
            {"electric-engine-unit", 40},
            {"advanced-circuit", 75},
            {"pipe", 80},
        },
        result = "f_mk7"
    },
    {
        type = "recipe",
        name = "f_mk8",
        enabled = false,
        energy_required = 75,
        hide_from_player_crafting = true,
        ingredients = {
            {"f_mk7", 1},
            {"a_mk2", 2},
            {"substation", 10},
        },
        result = "f_mk8"
    },
    {
        type = "recipe",
        name = "f_mk9",
        enabled = false,
        energy_required = 80,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"f_mk8", 1},
            {"processing-unit", 65},
            {"nuclear-fuel", 25},
            {type="fluid", name="petroleum-gas", amount=200}
        },
        result = "f_mk9"
    },
    {
        type = "recipe",
        name = "f_mk10",
        enabled = false,
        energy_required = 85,
        hide_from_player_crafting = true,
        ingredients = {
            {"f_mk9", 1},
            {"s_mk5", 5},
            {"low-density-structure", 50},
            {"processing-unit", 95},
        },
        result = "f_mk10"
    },
}
local compat = require("compatibilities/mods-compat")
--[[
compat.update_ingredients(recipes[2], {
    {
        dependencies =  {"some mod"},
        replacements = {
            ["shit"] = {"2 shit", 10},
            ["poop"] = {"2 poop", 10},
            {"dildo", 10}
        }
    },
    {
        dependencies = {""},
        replacement = {
            ["nope"] = {"maybe", 10}
        }
    },
    {
        dependencies = {"no don't"},
        replacement = {
            "item done repete"
        }
    }
})
]]
data:extend(recipes)