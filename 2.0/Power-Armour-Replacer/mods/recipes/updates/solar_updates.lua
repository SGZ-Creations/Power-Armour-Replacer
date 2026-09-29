local PAR = require("mods.util")
local RECIPES = data.raw.recipe
PAR.ingredient_prereq(RECIPES["par-solar-panel-mk1"], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-plate"] = {"bob-glass", 25},
            ["iron-stick"] = {"bob-lead-plate", 25},
            ["electronic-circuit"] = {"electronic-circuit", 25},
            {"bob-rubber", 25},
            {"stone-brick", 25},
        }
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 25},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-plate"] = {"bob-tinned-copper-cable", 25}
        }
    },
    --Angels
    {
        dependencies = {"bobplates", "angelssmelting"},
        replacements = {
            ["bob-glass"] = {"bob-solder", 25},
            ["bob-rubber"] = {"angels-solid-carbon", 25},
        }
    },
    --angelbob-spaceage-rebalance
    {
        dependencies = {"angelbob-spaceage-rebalance"},
        replacements = {
            ["bob-solder"] = {"zero"},
        }
    },
    --Pyanodon
    {
        dependencies = {"pyalienlife",},
        replacements = {
            ["copper-cable"] = {"latex", 25},
            ["wood"] = {"plastic-bar", 25},
        }
    },
    {
        dependencies = {"pypetroleumhandling",},
        replacements = {
            ["iron-stick"] = {"small-parts-01", 25},
        }
    },
    {
        dependencies = {"pyrawores",},
        replacements = {
            ["steel-plate"] = {"zinc-plate", 25},
            ["stone-brick"] = {"solder", 25},
            ["copper-plate"] = {"tinned-cable", 25},
        }
    },
    {
        dependencies = {"pyhightech",},
        replacements = {
            ["electronic-circuit"] = {"formica", 25},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-plate"] = {"kr-automation-core", 25},
            ["steel-plate"] = {"kr-steel-beam", 25},
            ["iron-plate"] = {"kr-iron-beam", 25},
            {"kr-glass", 25},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-solar-panel-mk2"], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 50},
            {"bob-silver-plate", 50},
            {"bob-rubber", 50},
            {"bob-glass", 50},
        },
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 50},
        },
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-plate"] = {"bob-solder", 50},
        },
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-glass"] = {"bob-tinned-copper-cable", 50},
            ["bob-silver-plate"] = {"bob-bronze-alloy", 50},
            ["bob-rubber"] = {"angels-solid-carbon", 50},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["kr-automation-core"] = {"kr-automation-core", 50},
            ["copper-plate"] = {"electronic-circuit", 50},
            ["steel-plate"] = {"kr-steel-beam", 50},
            {"kr-iron-beam", 50},
            {"kr-glass", 50},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-solar-panel-mk3"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"electronic-circuit", 75},
            ["battery"] = {"bob-insulated-cable", 75},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-steel-bearing", 75},
            {"electronic-circuit", 75},
            {"bob-silicon-wafer", 75},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-plate"] = {"bob-tinned-copper-cable", 75},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-plate"] = {"kr-automation-core", 75},
            ["steel-plate"] = {"kr-steel-beam", 75},
            {"kr-silicon", 75},
            {"kr-glass", 75},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-solar-panel-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"bob-silicon-nitride", 100},
            ["engine-unit"] = {"bob-nickel-plate", 100},
            ["advanced-circuit"] = {"bob-bronze-alloy", 100},
            ["electronic-circuit"] = {"electronic-circuit", 100},
            {"bob-silicon-wafer", 100},
            {"bob-bronze-alloy", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["advanced-circuit"] = {"bob-solder", 100},
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
            ["engine-unit"] = {"electric-motor", 100},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-plate"] = {"kr-automation-core", 100},
            ["steel-plate"] = {"kr-steel-beam", 100},
            {"kr-rare-metals", 100},
            {"kr-silicon", 100},
            {"kr-glass", 100},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-solar-panel-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 125},
            {"bob-insulated-cable", 125},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 125},
            ["steel-plate"] = {"bob-brass-alloy", 125},
            ["sulfur"] = {"bob-lead-plate", 125},
            ["battery"] = {"bob-silicon-wafer", 125},
            {"bob-silicon-nitride", 125},
            {"bob-aluminium-plate", 60},
            {"bob-lead-plate", 125},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["sulfur"] = {"bob-gilded-copper-cable", 125},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-silicon-wafer"] = {"angels-mono-silicon", 125},
            ["steel-plate"] = {"angels-plate-chrome", 125},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-imersium-beam", 125},
            {"kr-rare-metals", 125},
            {"kr-silicon", 125},
            {"kr-ai-core", 125},
            {"kr-glass", 125},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-solar-panel-mk6"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 150},
            ["electric-engine-unit"] = {"bob-cobalt-steel-alloy", 150},
            ["engine-unit"] = {"bob-silicon-nitride", 150},
            ["iron-stick"] = {"bob-titanium-plate", 150},
            {"bob-silicon-wafer", 150},
            {"lithium-plate", 150},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 150},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-imersium-beam", 150},
            {"kr-matter-cube", 150},
            {"kr-rare-metals", 150},
            {"kr-silicon", 150},
            {"kr-ai-core", 150},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-solar-panel-mk7"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 200},
            ["electric-engine-unit"] = {"bob-cobalt-steel-alloy", 200},
            {"bob-battery-2", 200},
            {"bob-silicon-wafer", 200},
            {"bob-silicon-nitride", 200},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-energy-control-unit", 200},
            {"kr-imersium-beam", 200},
            {"kr-matter-cube", 200},
            {"kr-rare-metals", 200},
            {"kr-silicon", 200},
            {"kr-ai-core", 200},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-solar-panel-mk8"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"bob-insulated-cable", 300},
            {"processing-unit", 300},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"bob-battery-3", 300},
            {"processing-unit", 300},
            {"bob-invar-alloy", 300},
            {"bob-silver-plate", 300},
            {"bob-aluminium-plate", 300},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-tinned-copper-cable", 300},
            {"bob-solder", 300},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-silver-plate"] = {"angels-wire-platinum", 300},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-energy-control-unit", 300},
            {"kr-imersium-beam", 300},
            {"kr-matter-cube", 300},
            {"kr-rare-metals", 300},
            {"kr-silicon", 300},
            {"kr-ai-core", 300},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-solar-panel-mk9"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 400},
            ["lubricant"] = {"bob-ferric-chloride-solution", 400},
            {"bob-insulated-cable", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 400},
            ["lubricant"] = {"bob-ferric-chloride-solution", 400},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 400},
            {"bob-solder", 400},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-energy-control-unit", 400},
            {"kr-imersium-beam", 400},
            {"kr-matter-cube", 400},
            {"kr-rare-metals", 400},
            {"kr-silicon", 400},
            {"kr-ai-core", 400},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-solar-panel-mk10"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["lubricant"] = {"bob-ferric-chloride-solution", 500},
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            {"bob-insulated-cable", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            ["lubricant"] = {"bob-ferric-chloride-solution", 500},
            {"bob-copper-tungsten-alloy", 500},
            {"bob-nitinol-alloy", 500},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 500},
            {"bob-solder", 500},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-energy-control-unit", 500},
            {"kr-imersium-beam", 500},
            {"kr-matter-cube", 500},
            {"kr-rare-metals", 500},
            {"kr-silicon", 500},
            {"kr-ai-core", 500},
        }
    },
})