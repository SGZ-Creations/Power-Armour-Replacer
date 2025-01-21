local util = require("mods.util")
util.ingredient_prereq(data.raw.recipe["par-laser-mk1"], {
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
            {"bob-bob-rubber", 100},
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
        dependencies = {"Bio_Industries", "angelssmelting"},
        replacements = {
            {"bob-rubber", 20},
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
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-laser-mk2"], {
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
            {"tinned-copper-cable", 80},
            {"insulated-cable", 80},
        }
    },
    --Bio-Industries--Angels
    {
        dependencies = {"Bio_Industries", "angelssmelting", "bobplates"},
        replacements = {
            ["insulated-cable"] = {"bob-rubber", 50},
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
            --["electronic-circuit"] = {"automation-core", 10},
            ["engine-unit"] = {"motor", 20},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-laser-mk3"], {
    --Bob's
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["battery"] = {"insulated-cable", 120},
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
    --SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-plate"] = {"iron-beam", 30},
            ["electronic-circuit"] = {"automation-core", 30},
            ["battery"] = {"electronic-components", 30},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-laser-mk4"], {
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
util.ingredient_prereq(data.raw.recipe["par-laser-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"advanced-circuit", 250},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"ruby-5", 100},
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
            ["copper-cable"] = {"gilded-copper-cable", 200},
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

util.ingredient_prereq(data.raw.recipe["par-laser-mk6"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 250},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["engine-unit"] = {"angels-plate-platinum", 100},
            {"bob-gunmetal-alloy", 100},
            {"sapphire-5", 100},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["heat-pipe"] = {"heat-pipe-2", 40},
        }
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"tinned-copper-cable", 120},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
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
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"laser-core", 5},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-laser-mk7"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"insulated-cable", 100},
            {"processing-unit", 350},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electric-engine-unit"] = {"bob-gunmetal-alloy", 200},
            {"cobalt-bob-steel-gear-wheel", 40},
            {"emerald-5", 100},
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
            ["copper-cable"] = {"gilded-copper-cable", 100},
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
util.ingredient_prereq(data.raw.recipe["par-laser-mk8"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"insulated-cable", 250},
            {"processing-unit", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"bob-titanium-plate", 250},
            ["copper-cable"] = {"bob-tungsten-plate", 250},
            {"amethyst-5", 100},
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
            ["insulated-cable"] = {"angels-wire-platinum", 200},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {type="fluid", name="liquid-dimethylmercury", amount=200},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-laser-mk9"], {
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
            ["sulfur"] = {"topaz-5", 100},
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
            {"bob-rubber", 100},
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
util.ingredient_prereq(data.raw.recipe["par-laser-mk10"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 200},
            ["advanced-circuit"] = {"insulated-cable", 300}
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
            {"diamond-5", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["insulated-cable"] = {"gilded-copper-cable", 100}
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