local PAR = require("mods.util")
local DRR = data.raw.recipe
PAR.ingredient_prereq(DRR["par-shield-mk1"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 50},
            ["stone-brick"] = {"bob-rubber", 90},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 50},
            ["stone-brick"] = {"bob-rubber", 90},
            {"bob-carbon", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["iron-plate"] = {"bob-tinned-copper-cable", 65},
            ["copper-plate"] = {"bob-solder", 80},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting",},
        replacements = {
            ["bob-rubber"] = {"iron-gear-wheel", 40},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            --["electronic-circuit"] = {"automation-core", 15},
        }
    },
})
PAR.ingredient_prereq(DRR["par-shield-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 100},
            ["steel-plate"] = {"bob-steel-bearing", 50},
            ["iron-plate"] = {"bob-tin-plate", 55},
            ["engine-unit"] = {"bob-silver-plate", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting",},
        replacements = {
            ["bob-silver-plate"] = {"bob-steel-gear-wheel", 80},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates",},
        replacements = {
            ["bob-silver-plate"] = {"bob-steel-gear-wheel", 80},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["engine-unit"] = {"kr-rare-metals", 40},
            ["steel-plate"] = {"kr-steel-gear-wheel", 40},
            ["iron-plate"] = {"kr-iron-beam", 40},
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
PAR.ingredient_prereq(DRR["par-shield-mk3"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"bob-insulated-cable", 110},
            ["electronic-circuit"] = {"electronic-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 150},
            ["advanced-circuit"] = {"bob-invar-alloy", 45},
            {"bob-invar-alloy", 45},
            {"bob-rubber", 65},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["battery"] = {"bob-tinned-copper-cable", 50},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["copper-cable"] = {"bob-bronze-alloy", 75},
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
            ["copper-cable"] = {"kr-rare-metals", 60},
            ["electronic-circuit"] = {"kr-automation-core", 40},
            ["advanced-circuit"] = {"kr-electronic-components", 30},
        }
    },
})
PAR.ingredient_prereq(DRR["par-shield-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["small-lamp"] = {"bob-insulated-cable", 145},
            ["advanced-circuit"] = {"electronic-circuit", 200},
            ["plastic-bar"] = {"bob-resin", 250},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 200},
            ["small-lamp"] = {"bob-silicon-wafer", 125},
            ["battery"] = {"bob-silver-plate", 100},
            ["plastic-bar"] = {"bob-brass-alloy", 100},
            ["bob-resin"] = {"bob-brass-alloy", 100},
            ["steel-plate"] = {"bob-silicon-plate", 165},
            {"bob-silicon-wafer", 125},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-silver-plate"] = {"angels-wire-silver", 55},
        }
    },
    --248K
    {
        dependencies = {"248k", "bobplates"},
        replacements = {
            {"bob-lithium-ion-battery", 35},
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            {"bob-aluminium-plate", 100},
            --["el_aluminum_item"] = {"bob-aluminium-plate", 35},
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
            --["small-lamp"] = {"silicon-plate", 65},
            ["advanced-circuit"] = {"kr-electronic-components", 30},
        }
    },
})
PAR.ingredient_prereq(DRR["par-shield-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 250},
            {"bob-insulated-cable", 175},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electric-engine-unit"] = {"bob-nickel-plate", 150},
            ["advanced-circuit"] = {"advanced-circuit", 250},
            ["steel-plate"] = {"bob-glass", 100},
            {"bob-silver-plate", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 150},
            {"bob-tinned-copper-cable", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-silver-plate"] = {"angels-wire-silver", 105},
            ["electric-engine-unit"] = {"engine-unit", 100},
            {"angels-plate-chrome", 50},
            {"bob-lithium-ion-battery", 100},
        }
    },
})
PAR.ingredient_prereq(DRR["par-shield-mk6"], {
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
            ["uranium-235"] = {"bob-cobalt-steel-bearing", 100},
            ["nuclear-fuel"] = {"bob-titanium-plate", 100},
            ["battery"] = {"bob-lithium", 120},
            {"bob-aluminium-plate", 200},
            {"bob-ceramic-bearing", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 100},
            {"bob-solder", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting", "bobelectronics", "bobplates"},
        replacements = {
            ["bob-solder"] = {"angels-wire-silver", 100},
        }
    },
})
PAR.ingredient_prereq(DRR["par-shield-mk7"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 350},
            ["solid-fuel"] = {"bob-resin", 155},
            ["uranium-238"] = {"bob-insulated-cable", 130},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 350},
            ["solid-fuel"] = {"bob-titanium-gear-wheel", 220},
            ["uranium-238"] = {"bob-lithium-ion-battery", 145},
            {"bob-titanium-gear-wheel", 220},
            {"bob-lithium-ion-battery", 145},
            {"bob-silicon-nitride", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["uranium-238"] = {"bob-solder", 240},
            ["bob-insulated-cable"] = {"bob-solder", 240},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-solder"] = {"angles-plate-platinum", 150},
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
PAR.ingredient_prereq(DRR["par-shield-mk8"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 400},
            ["uranium-235"] = {"bob-resin", 200},
            ["lubricant"] = {"zero"},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 400},
            ["lubricant"] = {"zero"},
            {"bob-gunmetal-alloy", 100},
            {"bob-cobalt-steel-alloy", 290},
            {"bob-silicon-nitride", 400},
        }
    },
    {
        dependencies = {"bobrevamp", "angelssmelting"},
        replacements = {
            {"bob-heat-shield-tile", 200},
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
            ["bob-resin"] = {"clowns-plate-osmium", 200},
            {"clowns-plate-osmium", 200},
            {"clowns-plate-magnesium", 150},
        }
    },
})
PAR.ingredient_prereq(DRR["par-shield-mk9"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 450},
            ["uranium-235"] = {"bob-insulated-cable", 200},
            ["petroleum-gas"] = {"zero"},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 450},
            ["battery"] = {"bob-silver-zinc-battery", 280},
            ["uranium-235"] = {"bob-copper-tungsten-alloy", 300},
            ["petroleum-gas"] = {"zero"},
            {"bob-nitinol-bearing", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["bob-insulated-cable"] = {"bob-solder", 250},
            {"bob-gilded-copper-cable", 365},
        }
    },
    --Angels
    {
        dependencies = {"bobrevamp", "angelssmelting"},
        replacements = {
            {"bob-heat-shield-tile", 300},
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
            {"clowns-plate-depleted-uranium", 350},
            {"clowns-plate-osmium", 200},
            {"clowns-plate-magnesium", 150},
        }
    },
})
PAR.ingredient_prereq(DRR["par-shield-mk10"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            ["sulfuric-acid"] = {"zero"},
            {"bob-rubber", 395},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            ["sulfuric-acid"] = {"zero"},
            {"bob-silver-zinc-battery", 280},
            {"bob-nitinol-gear-wheel", 450},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["bob-rubber"] = {"bob-gilded-copper-cable", 465},
            {"bob-tinned-copper-cable", 360},
            {"bob-solder", 455},
        }
    },
    {
        dependencies = {"bobrevamp", "angelssmelting"},
        replacements = {
            {"bob-heat-shield-tile", 400},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-gilded-copper-cable"] = {"angels-wire-silver", 450},
            ["bob-solder"] = {"angels-wire-platnium", 300},
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
            ["armour-control-unit"] = {"kr-matter-cube", 2},
        }
    },
})