local recipes = {
    {
        type = "recipe",
        name = "par-fusion-reactor-mk1",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"electronic-circuit", 50},
            {"steel-plate", 100},
            {"copper-plate", 100},
            {"stone-brick", 50},
        },
        result = "par-fusion-reactor-mk1"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk2",
        enabled = false,
        energy_required = 45,
        ingredients = {
            {"par-fusion-reactor-mk1", 1},
            {"iron-plate", 95},
            {"copper-cable", 165},
            {"electronic-circuit", 60},
        },
        result = "par-fusion-reactor-mk2"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk3",
        enabled = false,
        energy_required = 50,
        ingredients = {
            {"par-fusion-reactor-mk2", 1},
            {"battery", 10},
            {"electronic-circuit", 120},
            {"solid-fuel", 50},
        },
        result = "par-fusion-reactor-mk3"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk4",
        enabled = false,
        energy_required = 55,
        ingredients = {
            {"par-fusion-reactor-mk3", 1},
            {"advanced-circuit", 20},
            {"copper-plate", 50},
            {"engine-unit", 40},
            {"steel-plate", 100},
        },
        result = "par-fusion-reactor-mk4"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk5",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {"par-fusion-reactor-mk4", 1},
            {"battery", 20},
            {"plastic-bar", 50},
            {"engine-unit", 50},
            {"advanced-circuit", 50},
        },
        result = "par-fusion-reactor-mk5"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk6",
        enabled = false,
        energy_required = 65,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-fusion-reactor-mk5", 1},
            {"plastic-bar", 100},
            {"processing-unit", 50},
            {"advanced-circuit", 80},
            {"uranium-fuel-cell", 100},
            {"electric-engine-unit", 65},
        },
        result = "par-fusion-reactor-mk6"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk7",
        enabled = false,
        energy_required = 70,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-fusion-reactor-mk6", 1},
            {"electric-engine-unit", 100},
            {"processing-unit", 50},
            {"advanced-circuit", 100},
            {"pipe", 80},
        },
        result = "par-fusion-reactor-mk7"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk8",
        enabled = false,
        energy_required = 75,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-fusion-reactor-mk7", 1},
            {"sulfur", 50},
            {"advanced-circuit", 100},
            {"processing-unit", 100},
            {"low-density-structure", 100},
        },
        result = "par-fusion-reactor-mk8"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk9",
        enabled = false,
        energy_required = 80,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-fusion-reactor-mk8", 1},
            {"nuclear-fuel", 55},
            {"processing-unit", 150},
            {"rocket-control-unit", 30},
            {"low-density-structure", 250},
            {type="fluid", name="petroleum-gas", amount=200}
        },
        result = "par-fusion-reactor-mk9"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk10",
        enabled = false,
        energy_required = 85,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-fusion-reactor-mk9", 1},
            {"battery", 100},
            {"processing-unit", 200},
            {"rocket-control-unit", 30},
            {"low-density-structure", 250},
        },
        result = "par-fusion-reactor-mk10"
    },
}
data:extend(recipes)