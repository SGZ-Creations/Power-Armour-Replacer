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
            {"rocket-control-unit", 175},
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
            {"rocket-control-unit", 200},
            {"low-density-structure", 200},
            {type="fluid", name="lubricant", amount=350},
        },
        result = "par-solar-panel-mk10"
    },
}

local util = require("compatibilities.util")

--Compatibility section
util.ingredient_prereq(recipes[1], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-plate"] = {"glass", 50},
            ["iron-stick"] = {"lead-plate", 60},
            ["electronic-circuit"] = {"electronic-circuit", 50},
            {"rubber", 30},
            {"carbon", 75},
            {"stone-bricks", 50},
        }
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 50},
            ["copper-plate"] = {"tinned-copper-cable", 90}
        }
    },
    --Darkstar
    {
        dependencies = {"bobplates", "Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 25},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["electronic-circuit"] = {"bronze-beam", 20},
            ["iron-stick"] = {"tin-rod", 20},
            ["iron-plate"] = {"copper-pellet", 40},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 40},
        }
    },
})
util.ingredient_prereq(recipes[2], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["copper-plate"] = {"solder", 110},
            ["electronic-circuit"] = {"electronic-circuit", 60},
            {"carbon", 125},
            {"silver-plate", 135},
            {"rubber", 50},
            {"glass", 50},
        },
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 60},
        },
    },
    --Darkstar
    {
        dependencies = {"bobplates", "Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 50},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["silver-plate"] = {"", 0},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["electronic-circuit"] = {"bronze-plate-heavy", 20},
            ["copper-plates"] = {"tin-ingot", 50},
            ["steel-plate"] = {"copper-pellet", 40},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 20},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-plates"] = {"rare-metals", 30},
            ["steel-plate"] = {"steel-beam", 50},
        }
    },
})
util.ingredient_prereq(recipes[3], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["copper-plate"] = {"tinned-copper-cable", 50},
            ["battery"] = {"insulated-cable", 140},
            {"electronic-circuit", 70},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"steel-bearing", 30},
            {"electronic-circuit", 70},
            {"silicon-wafer", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            --{"", 0},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            --{"", 100},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"steel-beam", 55},
        }
    },
})
util.ingredient_prereq(recipes[4], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"solder", 110},
            ["electronic-circuit"] = {"electronic-circuit", 70},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"silicon-nitride", 50},
            ["engine-unit"] = {"nickel-plate", 80},
            ["advanced-circuit"] = {"bronze-alloy", 60},
            ["electronic-circuit"] = {"electronic-circuit", 70},
            {"silicon-wafer", 200},
            {"bronze-alloy", 60},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-silver", 100},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["engine-unit"] = {"electric-motor", 30},
        }
    },
})
util.ingredient_prereq(recipes[5], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 90},
            ["sulfur"] = {"gilded-copper-cable", 130},
            {"insulated-cable", 125},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 90},
            ["steel-plate"] = {"brass-alloy", 70},
            ["sulfur"] = {"lead-plate", 40},
            ["battery"] = {"silicon-wafer", 300},
            {"aluminium-plate", 60},
            {"lead-plate", 40},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["silicon-wafer"] = {"angels-mono-silcon", 300},
            ["steel-plate"] = {"angels-plate-chrome", 50},
        }
    },
})
util.ingredient_prereq(recipes[6], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 110},
            {"gilded-copper-cable", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 110},
            ["electric-engine-unit"] = {"cobalt-steel-alloy", 100},
            ["engine-unit"] = {"silicon-nitride", 200},
            ["iron-stick"] = {"titanium-plate", 200},
            {"silicon-wafer", 400},
            {"lithium", 50},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            --[""] = {"", 0},
        }
    },
})
util.ingredient_prereq(recipes[7], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 120},
            --[""] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 120},
            ["electric-engine-unit"] = {"cobalt-steel-alloy", 100},
            {"lithium-ion-battery", 50},
            {"silicon-wafer", 500},
            {"silicon-nitride", 400},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            --[""] = {"", 0},
            --[""] = {"", 0},
        }
    },
})
util.ingredient_prereq(recipes[8], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["copper-cable"] = {"tinned-copper-cable", 300},
            {"insulated-cable", 150},
            {"processing-unit", 130},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"silver-zinc-battery", 100},
            {"processing-unit", 130},
            {"invar-plate", 350},
            {"gunmetal-alloy", 350},
            {"aluminium-plate", 350},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"solder", 150},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            --[""] = {"", 0},
            --[""] = {"", 0},
        }
    },
})
util.ingredient_prereq(recipes[9], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 140},
            ["lubricant"] = {"ferric-chloride-solution", 200},
            {"insulated-cable", 250},
            --[""] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 140},
            ["lubricant"] = {"ferric-chloride-solution", 200},
            {"tungsten-carbide", 250},
            {"tungsten-plate", 500},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 250},
            {"solder", 250},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            --[""] = {"", 0},
            --[""] = {"", 0},
        }
    },
})
util.ingredient_prereq(recipes[10], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["lubricant"] = {"ferric-chloride-solution", 200},
            ["processing-unit"] = {"advanced-processing-unit", 150},
            {"insulated-cable", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 150},
            ["lubricant"] = {"ferric-chloride-solution", 200},
            {"nitinol-alloy", 500},
            {"copper-tungsten-alloy", 500},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 500},
            {"solder", 500},
        }
    },
    --Angles
    {
        dependencies = {"angelssmelting"},
        replacements = {
            --[""] = {"", 0},
            --[""] = {"", 0},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["rocket-control-unit"] = {"matter-cube", 2},
        }
    },
})

data:extend(recipes)