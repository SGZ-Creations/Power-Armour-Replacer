local recipes = {
    {
        type = "recipe",
        name = "par-exoskeleton-mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {"copper-plate", 100},
            {"electronic-circuit", 100},
            {"steel-plate", 100},
            {"copper-cable", 100},
            {"iron-gear-wheel", 100},
        },
        result = "par-exoskeleton-mk1"
    },
    {
        type = "recipe",
        name = "par-exoskeleton-mk2",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"par-exoskeleton-mk1", 1},
            {"battery", 120},
            {"iron-gear-wheel", 60},
            {"electronic-circuit", 120},
            {"steel-plate", 140},
            {"iron-stick", 70},
        },
        result = "par-exoskeleton-mk2"
    },
    {
        type = "recipe",
        name = "par-exoskeleton-mk3",
        enabled = false,
        energy_required = 15,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-exoskeleton-mk2", 1},
            {"battery", 165},
            {"advanced-circuit", 100},
            {"steel-plate", 150},
            {"iron-stick", 175},
            {type="fluid", name="lubricant", amount=450},
        },
        result = "par-exoskeleton-mk3"
    },
    {
        type = "recipe",
        name = "par-exoskeleton-mk4",
        enabled = false,
        energy_required = 20,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-exoskeleton-mk3", 1},
            {"battery", 205},
            {"plastic-bar", 190},
            {"steel-plate", 180},
            {"processing-unit", 100},
            {"low-density-structure", 120},
        },
        result = "par-exoskeleton-mk4"
    },
    {
        type = "recipe",
        name = "par-exoskeleton-mk5",
        enabled = false,
        energy_required = 25,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-exoskeleton-mk4", 1},
            {"battery", 250},
            {"steel-plate", 250},
            {"processing-unit", 100},
            {"rocket-control-unit", 150},
            {"low-density-structure", 150},
        },
        result = "par-exoskeleton-mk5"
    },
}
data:extend(recipes)