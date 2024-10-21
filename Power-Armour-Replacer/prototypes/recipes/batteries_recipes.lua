local recipes = {
    {
        type = "recipe",
        name = "par-battery-mk1",
        enabled = false,
        energy_required = 25,
        ingredients = {
            {"small-electric-pole", 10},
            {"steel-plate", 20},
            {"electronic-circuit", 10},
            {"copper-cable", 50},
        },
        result = "par-battery-mk1"
    },
    {
        type = "recipe",
        name = "par-battery-mk2",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {"par-battery-mk1", 1},
            {"electronic-circuit", 15},
            {"copper-plate", 35},
            {"steel-plate", 30},
        },
        result = "par-battery-mk2"
    },
    {
        type = "recipe",
        name = "par-battery-mk3",
        enabled = false,
        energy_required = 35,
        ingredients = {
            {"par-battery-mk2", 1},
            {"electronic-circuit", 25},
            {"advanced-circuit", 40},
            {"battery", 30},
            {"steel-plate", 50},
        },
        result = "par-battery-mk3"
    },
    {
        type = "recipe",
        name = "par-battery-mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"par-battery-mk3", 1},
            {"electronic-circuit", 50},
            {"advanced-circuit", 20},
            {"copper-cable", 150},
            {"steel-plate", 75},
            {"battery", 40},
        },
        result = "par-battery-mk4"
    },
    {
        type = "recipe",
        name = "par-battery-mk5",
        enabled = false,
        energy_required = 45,
        ingredients = {
            {"par-battery-mk4", 1},
            {"advanced-circuit", 120},
            {"low-density-structure", 75},
            {"steel-plate", 125},
            {"battery", 60},
        },
        result = "par-battery-mk5"
    },
    {
        type = "recipe",
        name = "par-battery-mk6",
        enabled = false,
        energy_required = 50,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-battery-mk5", 1},
            {"advanced-circuit", 125},
            {"low-density-structure", 150},
            {"steel-plate", 140},
            {"plastic-bar", 135},
            {"battery", 70},
        },
        result = "par-battery-mk6"
    },
    {
        type = "recipe",
        name = "par-battery-mk7",
        enabled = false,
        energy_required = 55,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"par-battery-mk6", 1},
            {"battery", 80},
            {"plastic-bar", 65},
            {"advanced-circuit", 40},
            {type="fluid", name="lubricant", amount=300},
        },
        result = "par-battery-mk7"
    },
    {
        type = "recipe",
        name = "par-battery-mk8",
        enabled = false,
        energy_required = 60,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"par-battery-mk7", 1},
            {"battery", 90},
            {"armour-control-unit", 65},
            {"processing-unit", 50},
            {type="fluid", name="water", amount=500},
        },
        result = "par-battery-mk8"
    },
    {
        type = "recipe",
        name = "par-battery-mk9",
        enabled = false,
        energy_required = 65,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-battery-mk8", 1},
            {"battery", 100},
            {"plastic-bar", 135},
            {"processing-unit", 50},
            {"armour-control-unit", 95},
            {"low-density-structure", 175},
        },
        result = "par-battery-mk9"
    },
    {
        type = "recipe",
        name = "par-battery-mk10",
        enabled = false,
        energy_required = 70,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"par-battery-mk9", 1},
            {"battery", 140},
            {"processing-unit", 50},
            {"armour-control-unit", 135},
            {"low-density-structure", 200},
            {type="fluid", name="sulfuric-acid", amount=150},
        },
        result = "par-battery-mk10"
    },
}
data:extend(recipes)