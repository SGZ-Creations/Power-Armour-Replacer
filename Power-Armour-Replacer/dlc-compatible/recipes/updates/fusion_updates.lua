local util = require("dlc-compatible.util")
util.ingredient_prereq(data.raw.recipe["par-fusion-reactor-mk1"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 50},
            {"insulated-cable", 50},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"steel-bearing", 75},
        }
    },
    {
        dependencies = {"bobplates", "bobelectronics",},
        replacements = {
            ["copper-plate"] = {"tinned-copper-cable", 55},
            {"solder", 40},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 115},
            {"glass", 35},
        }
    },
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            ["silicon"] = {"angels-mono-silicon", 50},
            {"glass", 35},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"iron-beam", 40},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            --["electronic-circuit"] = {"automation-core", 4},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-fusion-reactor-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 100},
            {"rubber", 60},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 100},
            ["iron-plate"] = {"silver-plate", 20},
            {"glass", 30},
            {"rubber", 60},
        }
    },
    {
        dependencies = {"bobplates", "bobelectronics",},
        replacements = {
            ["copper-cable"] = {"tinned-copper-cable", 120},
            {"solder", 50},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["silver-plate"] = {"lead-plate", 40},
        }
    },
	--Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 100},
            {"glass", 100},
            {"lead", 100},
        }
    },
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            ["silicon"] = {"angels-mono-silicon", 50},
        }
    },
    -- SeaBlock-
    {
        dependencies = {"SeaBlockMetaPack", "bobplates"},
        replacements = {
            ["rubber"] = {"bronze-alloy", 60},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"iron-beam", 40},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            --["electronic-circuit"] = {"automation-core", 10},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-fusion-reactor-mk3"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["solid-fuel"] = {"insulated-cable", 180},
            ["electronic-circuit"] = {"electronic-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 150},
            {"brass-alloy", 100},
            {"invar-alloy", 65},
            {"silver-plate", 70},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"solder", 50}
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["silver-plate"] = {"angels-wire-silver", 120},
            ["brass-alloy"] = {"clay-brick", 150},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            {"motor", 20},
        }
    },
    --Pyanodon
    {
        dependencies = {"pycoalprocessing",},
        replacements = {
            ["solid-fuel"] = {"chromium", 45},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["solid-fuel"] = {"rare-metals", 35},
            ["electronic-circuit"] = {"automation-core", 30},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-fusion-reactor-mk4"], {
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
            ["steel-plate"] = {"invar-alloy", 70},
            ["engine-unit"] = {"silicon-wafer", 100},
            {"silver-plate", 60},
            {"nickel-plate", 80},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-plate"] = {"tinned-copper-cable", 150},
            {"solder", 90},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed", "bobplates"},
        replacements = {
            ["nickel-plate"] = {"leaded-glass", 300},
        }
    },
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"gold-plate", 200},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-silver", 135},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-fusion-reactor-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"insulated-cable", 100},
            ["advanced-circuit"] = {"advanced-circuit", 250},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["engine-unit"] = {"aluminium-plate", 100},
            ["advanced-circuit"] = {"advanced-circuit", 250},
            {"brass-alloy", 150},
            {"ceramic-bearing", 80},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 150},
            {"angels-wire-silver", 135},
            {"brass-alloy", 150},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"diamond", 5},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["par-fusion-reactor-mk6"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 300},
            ["processing-unit"] = {"insulated-cable", 100},
            ["uranium-fuel-cell"] = {"resin", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"lithium", 50},
            ["advanced-circuit"] = {"advanced-circuit", 300},
            ["uranium-fuel-cell"] = {"cobalt-steel-bearing", 250},
            ["electric-engine-unit"] = {"titanium-plate", 150},
            {"cobalt-steel-bearing", 250},
            {"zinc-plate", 150},
            {"lithium-ion-battery", 150},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-manganese", 100},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-fusion-reactor-mk7"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"rubber", 300},
            ["processing-unit"] = {"processing-unit", 350},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["pipe"] = {"heat-pipe-3", 20},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 350},
            ["advanced-circuit"] = {"silver-plate", 200},
            ["electric-engine-unit"] = {"lithium-ion-battery", 175},
            ["pipe"] = {"cobalt-steel-bearing", 350},
            {"cobalt-steel-bearing", 350},
            {"silver-plate", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["heat-pipe-3"] = {"gilded-copper-cable", 50},
            {"gilded-copper-cable", 50},
        }
    },
    {
        dependencies = {"bobplates", "bobrevamp"},
        replacements = {
            {"rtg", 40},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-silver", 100},
            {"angels-wire-platinum", 100},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-fusion-reactor-mk8"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"insulated-cable", 350},
            ["sulfur"] = {"processing-unit", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["sulfur"] = {"processing-unit", 400},
            ["advanced-circuit"] = {"titanium-plate", 200},
            ["insulated-cable"] = {"silicon-nitride", 100},
            {"titanium-plate", 200},
            {"tungsten-plate", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"solder", 100},
            {"tinned-copper-cable", 100},
        }
    },
    {
        dependencies = {"bobplates", "bobrevamp"},
        replacements = {
            {"rtg", 40},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["titanium-plate"] = {"reinforced-concrete-brick", 100},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-fusion-reactor-mk9"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 450},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["nuclear-fuel"] = {"heat-pipe-4", 20},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 450},
            ["petroleum-gas"] = {"ammonia", 200},
            ["low-density-structure"] =  {"nitinol-alloy", 100},
            ["nuclear-fuel"] =  {"tungsten-carbide", 100},
            {"invar-alloy", 200},
            {"tungsten-carbide", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"solder", 100},
        }
    },
    {
        dependencies = {"bobplates", "bobrevamp"},
        replacements = {
            {"rtg", 40},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["ammonia"] = {"gas-monochloramine", 100},
            {"uranium-234", 20},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 100},
            {"clowns-plate-magnesium", 100},
            {"clowns-plate-depleted-uranium", 100},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-fusion-reactor-mk10"], {
    --248K
    {
        dependencies = {"248k"},
        replacements = {
            {"fi_materials_titan", 350},
            {"fu_materials_KFK", 100},
            {"gr_materials_circuit", 100},
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            ["fi_materials_titan"] = {"titanium-plate", 350},
        }
    },
    --Bobs
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 500},
            ["battery"] = {"silver-zinc-battery", 200},
            {"copper-tungsten-alloy", 200},
            {"nitinol-bearing", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 200},
        }
    },
    {
        dependencies = {"bobplates", "bobrevamp"},
        replacements = {
            {"rtg", 80},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-platinum", 200},
            {"silver-oxite", 100},
            {"uranium-234", 20},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-depleted-uranium", 200},
            {"clowns-plate-magnesium", 200},
            {"clowns-plate-osmium", 200},
        }
    },
    --SEK2
    {
        dependencies = {"space-exploration"},
        replacements = {
			["armour-control-unit"] = {"se-quantum-processor", 2},
            ["low-density-structure"] = {"se-nanomaterial", 50},
            ["processing-unit"] = {"se-naquium-processor", 2},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["armour-control-unit"] = {"matter-cube", 2},
            ["battery"] = {"ai-core", 10},
        }
    },
})