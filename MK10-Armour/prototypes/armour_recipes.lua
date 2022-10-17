local recipes = {
    {
        type = "recipe",
        name = "a_mk1",
        energy_required = 62.0,
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
        energy_required = 64.0,
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
        energy_required = 66.0,
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
        energy_required = 68.0,
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
        hidden_from_player_crafting = true,
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
        energy_required = 72.0,
        hidden_from_player_crafting = true,
        ingredients = {
            {"a_mk5", 1},
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
        energy_required = 74.0,
        hidden_from_player_crafting = true,
        ingredients = {
            {"a_mk6", 1},
            {"nuclear-fuel", 20},
            {"beacon", 10},
            {"nuclear-reactor", 25},
            {"concrete", 10},
        },
        result = "a_mk7",
    },
    {
        type = "recipe",
        name = "a_mk8",
        energy_required = 76.0,
        hidden_from_player_crafting = true,
        ingredients = {
            {"a_mk7", 1},
            {"nuclear-reactor", 25},
            {"concrete", 20},
            {"assembling-machine-3", 10},
            {"stone-brick", 5},
        },
        result = "a_mk8",
    },
    {
        type = "recipe",
        name = "a_mk9",
        energy_required = 78.0,
        hidden_from_player_crafting = true,
        ingredients = {
            {"a_mk8", 1},
            {"nuclear-reactor", 25},
            {"refined-concrete", 10},
            {"centrifuge", 15},
            {"rocket-silo", 2},
        },
        result = "a_mk9",
    },
    {
        type = "recipe",
        name = "a_mk10",
        energy_required = 80.0,
        hidden_from_player_crafting = true,
        ingredients = {
            {"a_mk9", 1},
            {"nuclear-reactor", 25},
            {"refined-concrete", 10},
            {"centrifuge", 15},
            {"satellite", 10},
        },
        result = "a_mk10",
    },
}

local items = {
    {
        type = "armor",
        icon_size = 256,
        name = "a_mk1",
        icon = "__base__.graphics.power-armor.png",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 256,
        name = "a_mk2",
        icon = "__base__/graphics/icons/power-armor-mk2.png.png",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 256,
        name = "a_mk3",
        icon = "__base__/graphics/icons/power-armor-mk2.png.png",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 256,
        name = "a_mk4",
        icon = "__base__/graphics/icons/power-armor-mk2.png.png",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 256,
        name = "a_mk5",
        icon = "__base__/graphics/icons/power-armor-mk2.png.png",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 256,
        name = "a_mk6",
        icon = "__base__/graphics/icons/power-armor-mk2.png.png",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 256,
        name = "a_mk7",
        icon = "__base__/graphics/icons/power-armor-mk2.png.png",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 256,
        name = "a_mk8",
        icon = "__base__/graphics/icons/power-armor-mk2.png.png",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 256,
        name = "a_mk9",
        icon = "__base__/graphics/icons/power-armor-mk2.png.png",
        stack_size = 1
    },
    {
        type = "armor",
        icon_size = 256,
        name = "a_mk10",
        icon = "__base__/graphics/icons/power-armor-mk2.png.png",
        stack_size = 1,
    },
}

data:extend(items)
data:extend(recipes)
