local recipes = {
    {
        type = "recipe",
        name = "par-laser-mk1",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"electronic-circuit", 100},
            {"steel-plate", 100},
            {"iron-plate", 100},
            {"copper-plate", 100},
        },
        result = "par-laser-mk1"
    },
    {
        type = "recipe",
        name = "par-laser-mk2",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"par-laser-mk1", 1},
            {"electronic-circuit", 100},
            {"engine-unit", 15},
            {"copper-plate", 150},
        },
        result = "par-laser-mk2"
    },
    {
        type = "recipe",
        name = "par-laser-mk3",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"par-laser-mk2", 1},
            {"electronic-circuit", 100},
            {"battery", 45},
            {"steel-plate", 50},
            {"plastic-bar", 55},
        },
        result = "par-laser-mk3"
    },
    {
        type = "recipe",
        name = "par-laser-mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"par-laser-mk3", 1},
            {"pipe", 50},
            {"advanced-circuit", 100},
            {"iron-gear-wheel", 85},
        },
        result = "par-laser-mk4"
    },
    {
        type = "recipe",
        name = "par-laser-mk5",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"par-laser-mk4", 1},
            {"heat-pipe", 50},
            {"copper-cable", 200},
            {"plastic-bar", 120},
            {"sulfur", 80},
        },
        result = "par-laser-mk5"
    },
    {
        type = "recipe",
        name = "par-laser-mk6",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-laser-mk5", 1},
            {"heat-pipe", 150},
            {"sulfur", 150},
            {"processing-unit", 50},
            {"battery", 125},
            {"engine-unit", 100},
        },
        result = "par-laser-mk6"
    },
    {
        type = "recipe",
        name = "par-laser-mk7",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-laser-mk6", 1},
            {"low-density-structure", 60},
            {"advanced-circuit", 100},
            {"processing-unit", 100},
            {"electric-engine-unit", 70},
            {"copper-cable", 115},
        },
        result = "par-laser-mk7"
    },
    {
        type = "recipe",
        name = "par-laser-mk8",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-laser-mk7", 1},
            {"low-density-structure", 130},
            {"plastic-bar", 200},
            {"copper-cable", 300},
            {"processing-unit", 100},
            {"advanced-circuit", 100},
        },
        result = "par-laser-mk8"
    },
    {
        type = "recipe",
        name = "par-laser-mk9",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-laser-mk8", 1},
            {"rocket-control-unit", 60},
            {"low-density-structure", 180},
            {"processing-unit", 100},
            {"advanced-circuit", 100},
            {"sulfur", 150},
            {"plastic-bar", 300},
        },
        result = "par-laser-mk9"
    },
    {
        type = "recipe",
        name = "par-laser-mk10",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-laser-mk9", 1},
            {"rocket-control-unit", 100},
            {"low-density-structure", 200},
            {"processing-unit", 100},
            {"advanced-circuit", 100},
            {"steel-plate", 300},
            {"sulfur", 150},
        },
        result = "par-laser-mk10"
    },
}
data:extend(recipes)