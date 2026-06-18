local PAR = require("mods.util")
local DRR = data.raw.recipe
PAR.ingredient_prereq(DRR["par-solar-panel-mk1"], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-plate"] = {"bob-glass", 50},
            ["iron-stick"] = {"bob-lead-plate", 60},
            ["electronic-circuit"] = {"electronic-circuit", 50},
            {"bob-rubber", 30},
            {"stone-brick", 50},
        }
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 50},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-plate"] = {"bob-tinned-copper-cable", 90}
        }
    },
    --Angels
    {
        dependencies = {"bobplates", "angelssmelting"},
        replacements = {
            ["bob-glass"] = {"bob-solder", 100},
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
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["copper-plate"] = {"kr-automation-core", 25},
            ["steel-plate"] = {"kr-steel-beam", 25},
            ["iron-plate"] = {"kr-iron-beam", 25},
            {"kr-glass", 25},
        }
    },
})
PAR.ingredient_prereq(DRR["par-solar-panel-mk2"], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 60},
            {"bob-silver-plate", 135},
            {"bob-rubber", 50},
            {"bob-glass", 50},
        },
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 60},
        },
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-plate"] = {"bob-solder", 110},
        },
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-silver-plate"] = {"bob-bronze-alloy"},
            ["bob-rubber"] = {"angels-solid-carbon"},
            ["bob-glass"] = {"bob-tinned-copper-cable"},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-plate"] = {"kr-automation-core", 50},
            ["steel-plate"] = {"kr-steel-beam", 50},
            {"kr-iron-beam", 50},
            {"kr-glass", 50},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["copper-plate"] = {"kr-automation-core", 50},
            ["steel-plate"] = {"kr-steel-beam", 50},
            {"kr-iron-beam", 50},
            {"kr-glass", 50},
        }
    },
})
PAR.ingredient_prereq(DRR["par-solar-panel-mk3"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"electronic-circuit", 70},
            ["battery"] = {"bob-insulated-cable", 140},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-steel-bearing", 30},
            {"electronic-circuit", 70},
            {"bob-silicon-wafer", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-plate"] = {"bob-tinned-copper-cable", 50},
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
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["copper-plate"] = {"kr-automation-core", 75},
            ["steel-plate"] = {"kr-steel-beam", 75},
            {"kr-silicon", 75},
            {"kr-glass", 75},
        }
    },
})
PAR.ingredient_prereq(DRR["par-solar-panel-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 70},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"bob-silicon-nitride", 50},
            ["engine-unit"] = {"bob-nickel-plate", 80},
            ["advanced-circuit"] = {"bob-bronze-alloy", 60},
            ["electronic-circuit"] = {"electronic-circuit", 70},
            {"bob-silicon-wafer", 200},
            {"bob-bronze-alloy", 60},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["advanced-circuit"] = {"bob-solder", 110},
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
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["copper-plate"] = {"kr-automation-core", 100},
            ["steel-plate"] = {"kr-steel-beam", 100},
            {"kr-rare-metals", 100},
            {"kr-silicon", 100},
            {"kr-glass", 100},
        }
    },
})
PAR.ingredient_prereq(DRR["par-solar-panel-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 90},
            {"bob-insulated-cable", 125},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 90},
            ["steel-plate"] = {"bob-brass-alloy", 70},
            ["sulfur"] = {"bob-lead-plate", 40},
            ["battery"] = {"bob-silicon-wafer", 300},
            {"bob-silicon-nitride", 65},
            {"bob-aluminium-plate", 60},
            {"bob-lead-plate", 50},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["sulfur"] = {"bob-gilded-copper-cable", 130},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-silicon-wafer"] = {"angels-mono-silicon", 300},
            ["steel-plate"] = {"angels-plate-chrome", 50},
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
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-imersium-beam", 125},
            {"kr-rare-metals", 125},
            {"kr-silicon", 125},
            {"kr-ai-core", 125},
            {"kr-glass", 125},
        }
    },
})
PAR.ingredient_prereq(DRR["par-solar-panel-mk6"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 110},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 110},
            ["electric-engine-unit"] = {"bob-cobalt-steel-alloy", 100},
            ["engine-unit"] = {"bob-silicon-nitride", 200},
            ["iron-stick"] = {"bob-titanium-plate", 200},
            {"bob-silicon-wafer", 400},
            {"lithium-plate", 50},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 130},
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
    --K2SO
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-imersium-beam", 150},
            {"kr-matter-cube", 150},
            {"kr-rare-metals", 150},
            {"kr-silicon", 150},
            {"kr-ai-core", 150},
        }
    },
})
PAR.ingredient_prereq(DRR["par-solar-panel-mk7"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 120},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 120},
            ["electric-engine-unit"] = {"bob-cobalt-steel-alloy", 100},
            {"bob-battery-2", 50},
            {"bob-silicon-wafer", 500},
            {"bob-silicon-nitride", 400},
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
    --K2SO
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["low-density-structure"] = {"kr-energy-control-unit", 200},
            {"kr-matter-cube", 200},
            {"kr-rare-metals", 200},
            {"kr-silicon", 200},
            {"kr-ai-core", 200},
        }
    },
})
PAR.ingredient_prereq(DRR["par-solar-panel-mk8"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"bob-insulated-cable", 150},
            {"processing-unit", 130},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"bob-battery-3", 100},
            {"processing-unit", 130},
            {"bob-invar-alloy", 350},
            {"bob-silver-plate", 350},
            {"bob-aluminium-plate", 350},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-tinned-copper-cable", 300},
            {"bob-solder", 150},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-silver-plate"] = {"angels-wire-platinum"},
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
    --K2SO
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["low-density-structure"] = {"kr-energy-control-unit", 300},
            ["plastic-bar"] = {"kr-imersium-beam", 300},
            {"kr-matter-cube", 300},
            {"kr-rare-metals", 300},
            {"kr-silicon", 300},
            {"kr-ai-core", 300},
        }
    },
})
PAR.ingredient_prereq(DRR["par-solar-panel-mk9"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 140},
            ["lubricant"] = {"bob-ferric-chloride-solution", 300},
            {"bob-insulated-cable", 250},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 140},
            ["lubricant"] = {"bob-ferric-chloride-solution", 300},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 250},
            {"bob-solder", 250},
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
    --K2SO
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["low-density-structure"] = {"kr-energy-control-unit", 400},
            {"kr-imersium-beam", 400},
            {"kr-matter-cube", 400},
            {"kr-rare-metals", 400},
            {"kr-silicon", 400},
            {"kr-ai-core", 400},
        }
    },
})
PAR.ingredient_prereq(DRR["par-solar-panel-mk10"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["lubricant"] = {"bob-ferric-chloride-solution", 600},
            ["processing-unit"] = {"bob-advanced-processing-unit", 150},
            {"bob-insulated-cable", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 150},
            ["lubricant"] = {"bob-ferric-chloride-solution", 600},
            {"bob-nitinol-alloy", 500},
            {"bob-copper-tungsten-alloy", 500},
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
    --K2SO
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["low-density-structure"] = {"kr-energy-control-unit", 500},
            {"kr-imersium-beam", 500},
            {"kr-matter-cube", 500},
            {"kr-rare-metals", 500},
            {"kr-silicon", 500},
            {"kr-ai-core", 500},
        }
    },
})