local recipes = {
    {
        type = "recipe",
        name = "par-shield-mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {"iron-plate", 100},
            {"stone-brick", 100},
            {"copper-plate", 100},
            {"electronic-circuit", 100},
        },
        result = "par-shield-mk1"
    },
    {
        type = "recipe",
        name = "par-shield-mk2",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"par-shield-mk1", 1},
            {"electronic-circuit", 100},
            {"engine-unit", 20},
            {"steel-plate", 130},
            {"iron-plate", 130},
        },
        result = "par-shield-mk2"
    },
    {
        type = "recipe",
        name = "par-shield-mk3",
        enabled = false,
        energy_required = 15,
        ingredients = {
            {"par-shield-mk2", 1},
            {"electronic-circuit", 160},
            {"advanced-circuit", 45},
            {"copper-cable", 155},
        },
        result = "par-shield-mk3"
    },
    {
        type = "recipe",
        name = "par-shield-mk4",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"par-shield-mk3", 1},
            {"small-lamp", 90},
            {"plastic-bar", 50},
            {"advanced-circuit", 65},
        },
        result = "par-shield-mk4"
    },
    {
        type = "recipe",
        name = "par-shield-mk5",
        enabled = false,
        energy_required = 25,
        ingredients = {
            {"par-shield-mk4", 1},
            {"electric-engine-unit", 55},
            {"advanced-circuit", 90},
            {"steel-plate", 80},
            {"plastic-bar", 90},
        },
        result = "par-shield-mk5"
    },
    {
        type = "recipe",
        name = "par-shield-mk6",
        enabled = false,
        energy_required = 30,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-shield-mk5", 1},
            {"nuclear-fuel", 20},
            {"battery", 100},
            {"uranium-235", 80},
            {"processing-unit", 60},
        },
        result = "par-shield-mk6"
    },
    {
        type = "recipe",
        name = "par-shield-mk7",
        enabled = false,
        energy_required = 35,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-shield-mk6", 1},
            {"copper-plate", 165},
            {"uranium-238", 120},
            {"processing-unit", 70},
            {"low-density-structure", 105},
            {"solid-fuel", 250},
        },
        result = "par-shield-mk7"
    },
    {
        type = "recipe",
        name = "par-shield-mk8",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-shield-mk7", 1},
            {"uranium-235", 120},
            {"plastic-bar", 124},
            {"processing-unit", 85},
            {type="fluid", name="lubricant", amount=350},
        },
        result = "par-shield-mk8"
    },
    {
        type = "recipe",
        name = "par-shield-mk9",
        enabled = false,
        energy_required = 45,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-shield-mk8", 1},
            {"battery", 100},
            {"uranium-235", 55},
            {"processing-unit", 95},
            {"low-density-structure", 180},
            {type="fluid", name="petroleum-gas", amount=350},
        },
        result = "par-shield-mk9"
    },
    {
        type = "recipe",
        name = "par-shield-mk10",
        enabled = false,
        energy_required = 50,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-shield-mk9", 1},
            {"rocket-control-unit", 75},
            {"processing-unit", 110},
            {"low-density-structure", 155},
            {type="fluid", name="sulfuric-acid", amount=350},
        },
        result = "par-shield-mk10"
    },
}
data:extend(recipes)