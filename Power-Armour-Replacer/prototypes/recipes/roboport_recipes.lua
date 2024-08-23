local recipes = {
    {
        type = "recipe",
        name = "par-roboport-mk1",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"wood", 200},
            {"iron-chest", 5},
            {"electronic-circuit", 75},
            {"copper-cable", 150},
            {"small-lamp", 10},
        },
        result = "par-roboport-mk1"
    },
    {
        type = "recipe",
        name = "par-roboport-mk2",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"par-roboport-mk1", 1},
            {"electronic-circuit", 100},
            {"iron-gear-wheel", 125},
            {"copper-cable", 175},
        },
        result = "par-roboport-mk2"
    },
    {
        type = "recipe",
        name = "par-roboport-mk3",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {"par-roboport-mk2", 1},
            {"electronic-circuit", 125},
            {"engine-unit", 80},
            {"iron-plate", 100},
        },
        result = "par-roboport-mk3"
    },
    {
        type = "recipe",
        name = "par-roboport-mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"par-roboport-mk3", 1},
            {"electronic-circuit", 130},
            {"engine-unit", 140},
            {"steel-plate", 160},
            {"iron-gear-wheel", 170},
        },
        result = "par-roboport-mk4"
    },
    {
        type = "recipe",
        name = "par-roboport-mk5",
        enabled = false,
        energy_required = 50,
        ingredients = {
            {"par-roboport-mk4", 1},
            {"steel-chest", 30},
            {"flying-robot-frame", 65},
            {"battery", 45},
        },
        result = "par-roboport-mk5"
    },
    {
        type = "recipe",
        name = "par-roboport-mk6",
        enabled = false,
        energy_required = 60,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-roboport-mk5", 1},
            {"processing-unit", 50},
            {"electric-engine-unit", 120},
            {"steel-plate", 230},
            {type="fluid", name="lubricant", amount=300},
        },
        result = "par-roboport-mk6"
    },
    {
        type = "recipe",
        name = "par-roboport-mk7",
        enabled = false,
        energy_required = 70,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-roboport-mk6", 1},
            {"processing-unit", 120},
            {"uranium-235", 50},
            {"iron-stick", 270},
            {"low-density-structure", 60},
        },
        result = "par-roboport-mk7"
    },
    {
        type = "recipe",
        name = "par-roboport-mk8",
        enabled = false,
        energy_required = 80,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-roboport-mk7", 1},
            {"low-density-structure", 130},
            {"steel-plate", 270},
            {"copper-cable", 320},
            {"uranium-235", 160},
        },
        result = "par-roboport-mk8"
    },
    {
        type = "recipe",
        name = "par-roboport-mk9",
        enabled = false,
        energy_required = 90,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-roboport-mk8", 1},
            {"rocket-control-unit", 80},
            {"low-density-structure", 150},
            {"advanced-circuit", 160},
            {type="fluid", name="lubricant", amount=600},
        },
        result = "par-roboport-mk9"
    },
    {
        type = "recipe",
        name = "par-roboport-mk10",
        enabled = false,
        energy_required = 100,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-roboport-mk9", 1},
            {"low-density-structure", 196},
            {"rocket-control-unit", 164},
            {"processing-unit", 171},
        },
        result = "par-roboport-mk10"
    },
}
data:extend(recipes)