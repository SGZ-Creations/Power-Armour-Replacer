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

local util = require("compatibilities.util")

--Compatibility section
util.ingredient_prereq(recipes[1], {

    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 50},
            ["stone-brick"] = {"rubber", 90},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 50},
            ["stone-brick"] = {"rubber", 90},
            {"carbon", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["iron-plate"] = {"tinned-copper-cable", 65},
            ["copper-plate"] = {"solder", 80},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting",},
        replacements = {
            ["rubber"] = {"iron-gear-wheel", 40},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 115},
            {"glass", 70},
        }
    },
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            ["silicon"] = {"angels-mono-silicon", 90},
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
            ["electronic-circuit"] = {"basic-circuit-board", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 100},
            ["steel-plate"] = {"steel-bearing", 50},
            ["iron-plate"] = {"tin-plate", 55},
            ["engine-unit"] = {"silver-plate", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting",},
        replacements = {
            ["silver-plate"] = {"steel-gear-wheel", 80},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates",},
        replacements = {
            ["silver-plate"] = {"steel-gear-wheel", 80},
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
            ["electronic-circuit"] = {"electronic-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 150},
            ["advanced-circuit"] = {"invar-alloy", 45},
            {"invar-alloy", 45},
            {"rubber", 65},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["battery"] = {"tinned-copper-cable", 50},
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
            ["small-lamp"] = {"insulated-cable", 145},
            ["advanced-circuit"] = {"electronic-circuit", 200},
            ["plastic-bar"] = {"resin", 250},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 200},
            ["small-lamp"] = {"silicon-wafer", 125},
            ["battery"] = {"silver-plate", 100},
            ["plastic-bar"] = {"brass-alloy", 100},
            ["resin"] = {"brass-alloy", 100},
            ["steel-plate"] = {"silicon", 165},
            {"silicon-wafer", 125},
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
            ["advanced-circuit"] = {"advanced-circuit", 250},
            {"insulated-cable", 175},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electric-engine-unit"] = {"nickel-plate", 150},
            ["advanced-circuit"] = {"advanced-circuit", 250},
            ["steel-plate"] = {"glass", 100},
            {"silver-plate", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 150},
            {"tinned-copper-cable", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["silver-plate"] = {"angels-wire-silver", 105},
            ["electric-engine-unit"] = {"engine-unit", 100},
            {"angels-plate-chrome", 50},
            {"engine-unit", 100},
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
            ["processing-unit"] = {"advanced-circuit", 300},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 300},
            ["uranium-235"] = {"cobalt-steel-bearing", 100},
            ["nuclear-fuel"] = {"titanium-plate", 100},
            ["battery"] = {"lithium", 120},
            {"aluminium-plate", 200},
            {"ceramic-bearing", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 100},
            {"solder", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting", "bobelectronics", "bobplates"},
        replacements = {
            ["solder"] = {"angels-wire-silver", 100},
        }
    },
})
util.ingredient_prereq(recipes[7], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 350},
            ["solid-fuel"] = {"resin", 155},
            ["uranium-238"] = {"insulated-cable", 130},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 350},
            ["solid-fuel"] = {"titanium-gear-wheel", 220},
            ["uranium-238"] = {"lithium-ion-battery", 145},
            ["resin"] = {"tungsten-plate", 200},
            {"titanium-gear-wheel", 220},
            {"lithium-ion-battery", 145},
            {"silicon-nitride", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["uranium-238"] = {"solder", 240},
            ["insulated-cable"] = {"solder", 240},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["solder"] = {"angles-plate-platinum", 150},
            ["copper-plate"] = {"tungsten-plate", 30},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"leaded-glass", 50},
        }
    },
    --Pyanodon
    {
        dependencies = {"pycoalprocessing", "pyhightech", "pyrawores",},
        replacements = {
            ["solid-fuel"] = {"re-magnet", 25},
        }
    },
})
util.ingredient_prereq(recipes[8], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 400},
            ["uranium-235"] = {"resin", 200},
            ["lubricant"] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 400},
            ["uranium-235"] = {"tungsten-plate", 360},
            ["lubricant"] = {"", 0},
            {"gunmetal-alloy", 100},
            {"tungsten-plate", 360},
            {"cobalt-steel-alloy", 290},
            {"silicon-nitride", 400},
        }
    },
    {
        dependencies = {"bobrevamp", "angelssmelting"},
        replacements = {
            {"heat-shield-tile", 200},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["plastic-bar"] = {"low-density-structure", 125},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            ["resin"] = {"clowns-plate-osmium", 200},
            {"clowns-plate-osmium", 200},
            {"clowns-plate-magnesium", 150},
        }
    },
})
util.ingredient_prereq(recipes[9], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 450},
            ["uranium-235"] = {"insulated-cable", 200},
            ["petroleum-gas"] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 450},
            ["battery"] = {"silver-zinc-battery", 280},
            ["uranium-235"] = {"copper-tungsten-alloy", 300},
            ["petroleum-gas"] = {"", 0},
            {"tungsten-carbide", 325},
            {"nitinol-bearing", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["insulated-cable"] = {"solder", 250},
            {"gilded-copper-cable", 365},
        }
    },
    --Angels
    {
        dependencies = {"bobrevamp", "angelssmelting"},
        replacements = {
            {"heat-shield-tile", 300},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["gilder-copper-cable"] = {"agnels-wire-platinum", 230},
            {"angels-wire-silver", 300},
            {"angels-plate-chrome", 350},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-depleted-uranium", 500},
            {"clowns-plate-osmium", 200},
            {"clowns-plate-magnesium", 150},
        }
    },
})
util.ingredient_prereq(recipes[10], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 500},
            ["sulfuric-acid"] = {"", 0},
            {"rubber", 395},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 500},
            ["sulfuric-acid"] = {"", 0},
            {"silver-zinc-battery", 280},
            {"tungsten-carbide", 325},
            {"nitinol-gear-wheel", 450},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["rubber"] = {"gilded-copper-cable", 465},
            {"tinnded-copper-cable", 360},
            {"solder", 455},
        }
    },
    {
        dependencies = {"bobrevamp", "angelssmelting"},
        replacements = {
            {"heat-shield-tile", 400},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["solder"] = {"angels-platnium-wire", 300},
            ["gilded-copper-cable"] = {"angels-silver-wire", 450},
            {"angels-plate-chrome", 500},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-depleted-uranium", 500},
            {"clowns-plate-osmium", 200},
            {"clowns-plate-magnesium", 150},
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