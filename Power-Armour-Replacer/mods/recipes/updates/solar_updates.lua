local util = require("mods.util")
util.ingredient_prereq(data.raw.recipe["par-solar-panel-mk1"], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-plate"] = {"bob-glass", 50},
            ["iron-stick"] = {"bob-lead-plate", 60},
            ["electronic-circuit"] = {"electronic-circuit", 50},
            {"bob-rubber", 30},
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
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 40},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-solar-panel-mk2"], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["copper-plate"] = {"solder", 110},
            ["electronic-circuit"] = {"electronic-circuit", 60},
            {"carbon", 125},
            {"bob-silver-plate", 135},
            {"bob-rubber", 50},
            {"bob-glass", 50},
        },
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 60},
        },
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-silver-plate"] = {"", 0},
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
util.ingredient_prereq(data.raw.recipe["par-solar-panel-mk3"], {
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
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"steel-beam", 55},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-solar-panel-mk4"], {
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
            ["engine-unit"] = {"bob-nickel-plate", 80},
            ["advanced-circuit"] = {"bob-bronze-alloy", 60},
            ["electronic-circuit"] = {"electronic-circuit", 70},
            {"silicon-wafer", 200},
            {"bob-bronze-alloy", 60},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-gold-plate"] = {"angels-wire-silver", 100},
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
util.ingredient_prereq(data.raw.recipe["par-solar-panel-mk5"], {
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
            ["steel-plate"] = {"bob-brass-alloy", 70},
            ["sulfur"] = {"bob-lead-plate", 40},
            ["battery"] = {"silicon-wafer", 300},
            {"silicon-nitride", 65},
            {"bob-aluminium-plate", 60},
            {"bob-lead-plate", 50},
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
util.ingredient_prereq(data.raw.recipe["par-solar-panel-mk6"], {
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
            ["iron-stick"] = {"bob-titanium-plate", 200},
            {"silicon-wafer", 400},
            {"bob-lithium", 50},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            --[""] = {"", 0},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-solar-panel-mk7"], {
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
util.ingredient_prereq(data.raw.recipe["par-solar-panel-mk8"], {
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
            {"bob-gunmetal-alloy", 350},
            {"bob-aluminium-plate", 350},
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
util.ingredient_prereq(data.raw.recipe["par-solar-panel-mk9"], {
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
            {"bob-tungsten-carbide", 250},
            {"bob-tungsten-plate", 500},
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
util.ingredient_prereq(data.raw.recipe["par-solar-panel-mk10"], {
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
            {"bob-copper-tungsten-alloy", 500},
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
            ["armour-control-unit"] = {"matter-cube", 2},
        }
    },
})