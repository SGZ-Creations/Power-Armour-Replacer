local util = require("mods.util")
local DRR = data.raw.recipe
util.ingredient_prereq(DRR["par-laser-mk1"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 50},
            ["copper-plate"] = {"copper-cable", 110},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-steel-bearing", 50},
            {"bob-rubber", 100},
            {"bob-carbon", 100},
        }
    },
    {
        dependencies = {"bobplates", "bobelectronics"},
        replacements = {
            {"solder", 80},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-rubber"] = {"bob-steel-gear-wheel", 40},
            ["iron-plate"] = {"bob-glass", 20},
        }
    },
    {
        dependencies = {"bobplates", "Bio_Industries", "angelssmelting"},
        replacements = {
            ["bob-rubber"] = {"bob-rubber", 20},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-plate"] = {"iron-beam", 25},
            ["steel-plate"] = {"steel-beam", 25},
            ["electronic-circuit"] = {"automation-core", 5},
        }
    },
})
util.ingredient_prereq(DRR["par-laser-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 60},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["engine-unit"] = {"bob-lead-plate", 90},
            ["copper-plate"] = {"bob-glass", 45},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-tinned-copper-cable", 80},
            {"bob-insulated-cable", 80},
        }
    },
    --Bio-Industries--Angels
    {
        dependencies = {"Bio_Industries", "angelssmelting", "bobplates"},
        replacements = {
            ["bob-insulated-cable"] = {"bob-rubber", 50},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"iron-beam", 25},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["engine-unit"] = {"motor", 20},
        }
    },
})
util.ingredient_prereq(DRR["par-laser-mk3"], {
    --Bob's
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["battery"] = {"bob-insulated-cable", 120},
            {"electronic-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-invar-alloy", 60},
            ["plastic-bar"] = {"bob-brass-alloy", 60},
            {"electronic-circuit", 150},
            {"bob-glass", 130},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"heat-pipe", 5},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-plate"] = {"iron-beam", 30},
            ["electronic-circuit"] = {"automation-core", 30},
            ["battery"] = {"electronic-components", 30},
        }
    },
})
util.ingredient_prereq(DRR["par-laser-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 200},
            ["pipe"] = {"bob-nickel-plate", 250},
            ["iron-gear-wheel"] = {"bob-brass-alloy", 90},
            {"bob-carbon", 100},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"heat-pipe", 5},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"solder", 50},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-gold-plate"] = {"angels-wire-silver", 125},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphorus", 100},
        }
    },
    --248k
    {
        dependencies = {"248k"},
        replacements = {
            {"el_aluminum_item", 150},
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            ["el_aluminum_item"] = {"bob-aluminium-plate", 150},
            {"bob-lithium-ion-battery", 30},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-plate"] = {"iron-beam", 30},
            ["battery"] = {"electronic-components", 50},
        }
    },
})
util.ingredient_prereq(DRR["par-laser-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"advanced-circuit", 250},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"bob-ruby-5", 100},
            ["sulfur"] = {"bob-silicon-wafer", 125},
            {"advanced-circuit", 250},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["heat-pipe"] = {"heat-pipe-2", 10},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-gilded-copper-cable", 200},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 200},
            {"bob-invar-alloy", 80},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphorus", 100},
        }
    },
})

util.ingredient_prereq(DRR["par-laser-mk6"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 250},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            {"bob-gunmetal-alloy", 100},
            {"bob-sapphire-5", 100},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["heat-pipe"] = {"heat-pipe-2", 10},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-tinned-copper-cable", 120},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["engine-unit"] = {"angels-plate-platinum", 100},
            ["sulfur"] = {"angels-plate-manganese", 50},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphorus", 200},
        }
    },
})
util.ingredient_prereq(DRR["par-laser-mk7"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"bob-insulated-cable", 100},
            {"processing-unit", 350},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electric-engine-unit"] = {"bob-brass-alloy", 200},
            {"bob-cobalt-steel-gear-wheel", 40},
            {"bob-emerald-5", 100},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"heat-pipe-3", 15},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            {"heat-shield-tile", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-gilded-copper-cable", 100},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {type="fluid", name="liquid-dimethylmercury", amount=100},
        }
    },
})
util.ingredient_prereq(DRR["par-laser-mk8"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"bob-insulated-cable", 250},
            {"processing-unit", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"bob-titanium-plate", 250},
            ["copper-cable"] = {"bob-tungsten-plate", 250},
            {"bob-amethyst-5", 100},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"heat-pipe-3", 15},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            {"heat-shield-tile", 200},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-insulated-cable"] = {"angels-wire-platinum", 200},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {type="fluid", name="liquid-dimethylmercury", amount=200},
        }
    },
})
util.ingredient_prereq(DRR["par-laser-mk9"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 200},
            ["advanced-circuit"] = {"bob-rubber", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 200},
            ["advanced-circuit"] = {"bob-aluminium-plate", 200},
            ["steel-plate"] = {"bob-nitinol-bearing", 100},
            ["low-density-structure"] = {"bob-nitinol-gear-wheel", 100},
            ["sulfur"] = {"bob-topaz-5", 100},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"heat-pipe-4", 20},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            ["plastic-bar"] = {"heat-shield-tile", 300},
            {"heat-shield-tile", 300},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"bob-copper-tungsten-alloy", 200},
            ["bob-rubber"] = {"bob-rubber", 100},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 250},
            {"clowns-plate-depleted-uranium", 250},
            {type="fluid", name="liquid-dimethylmercury", amount=300},
        }
    },
})
util.ingredient_prereq(DRR["par-laser-mk10"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 200},
            ["advanced-circuit"] = {"bob-insulated-cable", 300}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 200},
            ["steel-plate"] = {"bob-cobalt-steel-alloy", 200},
            ["sulfur"] = {"bob-tungsten-carbide", 100},
            ["advanced-circuit"] = {"bob-nitinol-alloy", 100},
            {"bob-nitinol-alloy", 100},
            {"bob-diamond-5", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["bob-insulated-cable"] = {"bob-gilded-copper-cable", 100}
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"heat-pipe-4", 20},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            {"heat-shield-tile", 400},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-silver", 100},
            {"angels-wire-platinum", 100},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 250},
            {"clowns-plate-depleted-uranium", 250},
            {type="fluid", name="liquid-dimethylmercury", amount=400},
        }
    },
    {
        dependencies = {"extendedangels"},
        replacements = {
            {"titanium-concrete-brick", 100},
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