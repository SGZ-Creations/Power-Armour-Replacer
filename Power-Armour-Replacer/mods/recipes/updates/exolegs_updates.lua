local PAR = require("mods.util")
local DRR = data.raw.recipe

PAR.ingredient_prereq(DRR["par-exoskeleton-mk1"], {
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
            ["steel-plate"] = {"bob-steel-gear-wheel", 50},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-solder", 50},
            {"bob-tinned-copper-cable", 100},
        }
    },
    --SE-K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-gear-wheel"] = {"kr-steel-gear-wheel", 100},
            ["iron-stick"] = {"kr-steel-beam", 100},
            {"kr-automation-core", 100},
            {"kr-silicon", 100},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["iron-gear-wheel"] = {"kr-steel-gear-wheel", 100},
            ["iron-stick"] = {"kr-steel-beam", 100},
            {"kr-automation-core", 100},
            {"kr-silicon", 100},
        }
    },
})
PAR.ingredient_prereq(DRR["par-exoskeleton-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-stick"] = {"bob-invar-alloy", 150},
            ["steel-plate"] = {"bob-cobalt-steel-gear-wheel", 95},
            ["iron-gear-wheel"] = {"bob-steel-bearing", 60},
            ["electronic-circuit"] = {"electronic-circuit", 200},
        }
    },
    -- Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-invar-alloy"] = {"bob-bronze-alloy", 130},
            ["bob-cobalt-steel-bearing"] = {"bob-brass-gear-wheel", 70},
        },
    },
    --248K
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            ["battery"] = {"bob-aluminium-plate", 55},
        }
    },
    --SE-K2-SO
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["battery"] = {"motor", 200},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-gear-wheel"] = {"kr-steel-gear-wheel", 200},
            ["iron-stick"] = {"kr-steel-beam", 200},
            {"kr-automation-core", 200},
            {"kr-rare-metals", 200},
            {"kr-silicon", 200},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["iron-gear-wheel"] = {"kr-steel-gear-wheel", 200},
            ["iron-stick"] = {"kr-steel-beam", 200},
            {"kr-automation-core", 200},
            {"kr-rare-metals", 200},
            {"kr-silicon", 200},
        }
    },
})
PAR.ingredient_prereq(DRR["par-exoskeleton-mk3"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"advanced-circuit", 300},
            ["lubricant"] = {"zero"},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-stick"] = {"bob-titanium-bearing", 75},
            ["battery"] = {"bob-lithium-ion-battery", 90},
            ["iron-gear-wheel"] = {"bob-invar-alloy", 155},
            {"bob-titanium-plate", 125},
            {"advanced-circuit", 300},
            ["lubricant"] = {"zero"},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-gilded-copper-cable", 200},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 200},
        }
    },
    -- 248K
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            ["battery"] = {"bob-lithium-ion-battery", 55},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {type="fluid", name="kr-mineral-water", amount=300},
            ["battery"] = {"kr-lithium-sulfur-battery", 300},
            ["steel-plate"] = {"kr-imersium-beam", 300},
            {"kr-automation-core", 300},
            {"kr-rare-metals", 300},
            {"kr-silicon", 300},
            ["lubricant"] = {"zero"},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["battery"] = {"kr-lithium-sulfur-battery", 300},
			["steel-plate"] = {"kr-imersium-beam", 300},
            {"kr-automation-core", 300},
            {"kr-rare-metals", 300},
            {"kr-silicon", 300},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["advanced-circuit"] = {"motor", 300},
            {"low-density-structure", 300},
            ["lubricant"] = {"zero"},
        }
    },
})
PAR.ingredient_prereq(DRR["par-exoskeleton-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"processing-unit", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"bob-cobalt-steel-bearing", 120},
            ["battery"] = {"bob-silver-zinc-battery", 150},
            {"processing-unit", 400},
            {"bob-tungsten-gear-wheel", 115},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            ["steel-plate"] = {"bob-heat-shield-tile", 135},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 300},
            {"clowns-plate-magnesium", 300},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 300},
        }
    },
    --SEK2
	{
        dependencies = {"Krastorio2", "space-exploration"},
        replacements = {
            ["processing-unit"] = {"se-lattice-pressure-vessel", 100},
			["battery"] = {"kr-lithium-sulfur-battery", 350},
            ["plastic-bar"] = {"se-dynamic-emitter", 400},
            ["steel-plate"] = {"kr-imersium-beam", 400},
            ["low-density-structure"] = {"zero"},
            {"electric-motor", 400},
            {"kr-matter-cube", 400},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-energy-control-unit", 400},
			{"kr-imersium-beam", 400},
            {"kr-matter-cube", 400},
            {"kr-ai-core", 400},
        }
    },
})
PAR.ingredient_prereq(DRR["par-exoskeleton-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            {"bob-insulated-cable", 660},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            ["steel-plate"] = {"bob-copper-tungsten-alloy", 200},
            ["bob-insulated-cable"] = {"bob-nitinol-bearing", 200},
            {"bob-nitinol-bearing", 200},
        }
    },
    {
        dependencies = {"bobplates", "bobelectronics"},
        replacements = {
            {"bob-gilded-copper-cable", 90},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 500},
            {"clowns-plate-depleted-uranium", 500},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 500},
        }
    },
    --SEK2
	{
        dependencies = {"Krastorio2", "space-exploration"},
        replacements = {
			["armour-control-unit"] = {"se-quantum-processor", 500},
			["low-density-structure"] = {"se-heavy-bearing", 500},
			["processing-unit"] = {"se-naquium-processor", 500},
			["battery"] = {"kr-lithium-sulfur-battery", 500},
			["steel-plate"] = {"kr-imersium-beam", 500},
            {"se-nanomaterial", 500},
            {"kr-matter-cube", 500},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-energy-control-unit", 500},
			{"kr-imersium-beam", 500},
            {"kr-matter-cube", 500},
            {"kr-ai-core", 500},
        }
    },
})