local recipes = {
    {
        type = "recipe",
        name = "par-solar-panel-mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {"iron-plate", 10},
            {"copper-plate", 65},
            {"iron-stick", 35},
            {"electronic-circuit", 20},
        },
        result = "par-solar-panel-mk1"
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk2",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"par-solar-panel-mk1", 1},
            {"copper-plate", 70},
            {"steel-plate", 50},
            {"electronic-circuit", 30},
        },
        result = "par-solar-panel-mk2"
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk3",
        enabled = false,
        energy_required = 15,
        ingredients = {
            {"par-solar-panel-mk2", 1},
            {"battery", 30},
            {"steel-plate", 75},
            {"copper-plate", 40},
        },
        result = "par-solar-panel-mk3"
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk4",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"par-solar-panel-mk3", 1},
            {"electronic-circuit", 135},
            {"advanced-circuit", 100},
            {"engine-unit", 120},
            {"battery", 150},
        },
        result = "par-solar-panel-mk4"
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk5",
        enabled = false,
        energy_required = 25,
        ingredients = {
            {"par-solar-panel-mk4", 1},
            {"battery", 190},
            {"advanced-circuit", 110},
            {"sulfur", 123},
            {"steel-plate", 115},
        },
        result = "par-solar-panel-mk5"
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk6",
        enabled = false,
        energy_required = 30,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-solar-panel-mk5", 1},
            {"processing-unit", 60},
            {"engine-unit", 140},
            {"electric-engine-unit", 80},
            {"iron-stick", 300},
        },
        result = "par-solar-panel-mk6"
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk7",
        enabled = false,
        energy_required = 35,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-solar-panel-mk6", 1},
            {"plastic-bar", 140},
            {"processing-unit", 70},
            {"electric-engine-unit", 120},
            {"low-density-structure", 175},
        },
        result = "par-solar-panel-mk7"
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk8",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-solar-panel-mk7", 1},
            {"copper-cable", 300},
            {"battery", 200},
            {"plastic-bar", 170},
            {"low-density-structure", 175},
        },
        result = "par-solar-panel-mk8"
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk9",
        enabled = false,
        energy_required = 45,
        hide_from_player_crafting = true,
        category="crafting-with-fluid",
        ingredients = {
            {"par-solar-panel-mk8", 1},
            {"processing-unit", 123},
            {"armour-control-unit", 175},
            {"low-density-structure", 175},
            {type="fluid", name="lubricant", amount=250},
        },
        result = "par-solar-panel-mk9"
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk10",
        enabled = false,
        energy_required = 50,
        hide_from_player_crafting = true,
        category="crafting-with-fluid",
        ingredients = {
            {"par-solar-panel-mk9", 1},
            {"processing-unit", 144},
            {"armour-control-unit", 200},
            {"low-density-structure", 200},
            {type="fluid", name="lubricant", amount=350},
        },
        result = "par-solar-panel-mk10"
    },
}
data:extend(recipes)