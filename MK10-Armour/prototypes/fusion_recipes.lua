local recipes = {
    {
        type = "recipe",
        name = "f_mk1",
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
        energy_required = 60,
        hide_from_player_crafting = true,
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
        energy_required = 80,
        hide_from_player_crafting = true,
        ingredients = {
            {"f_mk8", 1},
            {"processing-unit", 65},
            {"nuclear-fuel", 25},
            {type="fluid", name="petroleum-gas,", amount=200}
        },
        result = "f_mk9"
    },
    {
        type = "recipe",
        name = "f_mk10",
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

local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

local function string_random(length)
    if length > 0 then
        return string_random(length - 1) .. charset:sub(math.random(1, 62), 1)
    else
        return ""
    end
end

local i = 1
while i < 11 do

    data:extend({ {
        type = "item",
        name = "f_mk" .. tostring(i),
        icon = "__base__/graphics/icons/fusion-reactor-equipment.png",
        icon_size = 64,
        stack_size = 200,
        order = "[Fusion Reactor]" .. tostring(i - 1) .. string_random(25),
        subgroup = "equipment",
        placed_as_equipment_result = "f_mk" .. tostring(i),
    } })

    i = i + 1
end

data:extend(recipes)