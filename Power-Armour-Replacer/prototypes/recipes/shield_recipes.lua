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

local util = require("compatibilities.util")

--Compatibility section
util.ingredient_prereq(recipes[1], {

    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 60},
            ["copper-plate"] = {"solder", 60},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["stone-brick"] = {"rubber", 90},
            ["iron-plate"] = {"tinned-copper-cable", 65}
        }
    },
    --Darkstar
    {
        dependencies = {"bobplates", "Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 115},
            {"glass", 70},
        }
    },
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            ["silicon"] = {"angels-mono-silicon", 90},
            {"glass", 70},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"automation-core", 15},
        }
    },
})
util.ingredient_prereq(recipes[2], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 75},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"steel-bearing", 50},
            ["iron-plate"] = {"tin-plate", 55},
            ["engine-unit"] = {"silver-plate", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting",},
        replacements = {
            ["silver-plate"] = {"seteel-gear-wheel", 80},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates",},
        replacements = {
            ["silver-plate"] = {"seteel-gear-wheel", 80},
        }
    },
    --Darkstar
    {
        dependencies = {"bobplates", "Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 115},
            {"glass", 55},
        }
    },
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            ["silicon"] = {"angels-mono-silicon", 50},
            {"glass", 55},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["engine-unit"] = {"rare-metals", 40},
            ["steel-plate"] = {"steel-gear-wheel", 40},
            ["iron-plate"] = {"iron-beam", 40},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 20},
        }
    },
})
util.ingredient_prereq(recipes[3], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"insulated-cable", 110},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"tinned-copper-cable", 50},
            {"rubber", 35},
            {"invar-alloy", 45},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"leaded-glass", 95},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["copper-cable"] = {"bronze-alloy", 75},
        }
    },
    --SE--K2
    {
        dependencies = {"space-exploration"},
        replacements = {
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-cable"] = {"rare-metals", 60},
            ["electronic-circuit"] = {"automation-core", 40},
            ["advanced-circuit"] = {"electronic-components", 30},
        }
    },
})
util.ingredient_prereq(recipes[4], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["small-lamp"] = {"insulated-cable", 140},
            ["advanced-circuit"] = {"insulated-cable", 140},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"silver-plate", 100},
            ["plastic-bar"] = {"brass-alloy", 100},
            ["steel-plate"] = {"silicon-nitride", 60},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"leaded-glass", 50},
            {"lithium-plate", 50},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["silver-plate"] = {"angels-wire-silver", 55},
        }
    },
    --248K
    {
        dependencies = {"248k", "bobplates"},
        replacements = {
            {"lithium-ion-battery", 35},
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            {"aluminium-plate", 100},
            --["el-aluminium-item"] = {"aluminium-plate", 35},
        }
    },
    --SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["plastic-bar"] = {"electronic-circuit", 50},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["small-lamp"] = {"silicon", 65},
            ["advanced-circuit"] = {"electronic-components", 30},
        }
    },
})
util.ingredient_prereq(recipes[5], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"insulated-cable", 175},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"glass", 100},
            {"nickel-plate", 150},
            {"silver-plate", 200},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["electric-engine-unit"] = {"engine-unit", 60},
            {"angels-plate-chrome", 50},
        }
    },
    --SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            --[""] = {"", 0},
            --[""] = {"", 0},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            --[""] = {"", 0},
        }
    },
})
util.ingredient_prereq(recipes[6], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"gilded-copper-cable", 100},
            {"solder", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            {"advanced-circuit", 100},
            ["uranium-235"] = {"cobalt-steel-bearing", 100},
            ["nuclear-fuel"] = {"titanium", 100},
            ["battery"] = {"lithium", 50},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-silver", 100},
        }
    },
})
util.ingredient_prereq(recipes[7], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            --[""] = {"", 0}, 
            --[""] = {"", 0},
        }-- TODO:Complete Tier 7 to 10 Shields for bobs mods
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            --[""] = {"", 0},
            ["par-shield-mk6"] = {"par-shield-mk7", 1},
            {"lithium", 50},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["par-shield-mk6"] = {"par-shield-mk7", 1},
            --[""] = {"", 0},
        }
    },
})
util.ingredient_prereq(recipes[8], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            --[""] = {"", 0},
            --[""] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            --[""] = {"", 0},
            --[""] = {"", 0},
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
util.ingredient_prereq(recipes[9], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            --[""] = {"", 0},
            --[""] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            --[""] = {"", 0},
            --[""] = {"", 0},
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
util.ingredient_prereq(recipes[10], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            --[""] = {"", 0},
            --[""] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            --[""] = {"", 0},
            --[""] = {"", 0},
        }
    },
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