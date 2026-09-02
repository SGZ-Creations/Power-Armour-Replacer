local PAR = require("mods.util")
local RECIPES = data.raw.recipe

PAR.ingredient_prereq(RECIPES["par-exoskeleton-mk1"], {
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
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-exoskeleton-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-stick"] = {"bob-invar-alloy", 200},
            ["steel-plate"] = {"bob-cobalt-steel-gear-wheel", 200},
            ["iron-gear-wheel"] = {"bob-steel-bearing", 200},
            ["electronic-circuit"] = {"electronic-circuit", 200},
        }
    },
    -- Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-invar-alloy"] = {"bob-bronze-alloy", 200},
            ["bob-cobalt-steel-bearing"] = {"bob-brass-gear-wheel", 200},
        },
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["battery"] = {"motor", 200},
        }
    },
    --K2
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
    --K2SO
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-exoskeleton-mk3"], {
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
            ["iron-stick"] = {"bob-titanium-bearing", 300},
            ["iron-gear-wheel"] = {"bob-invar-alloy", 300},
            ["battery"] = {"bob-battery-2", 300},
            {"bob-titanium-plate", 300},
            {"advanced-circuit", 300},
            ["lubricant"] = {"zero"},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-gilded-copper-cable", 300},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 300},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["advanced-circuit"] = {"motor", 300},
            ["lubricant"] = {"zero"},
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
        }
    },
    --K2SO
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-exoskeleton-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"processing-unit", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"bob-cobalt-steel-bearing", 400},
            ["battery"] = {"bob-battery-3", 400},
            {"processing-unit", 400},
            {"bob-tungsten-gear-wheel", 400},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            ["steel-plate"] = {"bob-heat-shield-tile", 400},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 400},
            {"clowns-plate-magnesium", 400},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 4300},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["processing-unit"] = {"se-lattice-pressure-vessel", 400},
            ["plastic-bar"] = {"se-dynamic-emitter", 400},
            {"electric-motor", 400},
        }
    },
    --K2
	{
        dependencies = {"Krastorio2", },
        replacements = {
			["battery"] = {"kr-energy-control-unit", 400},
            ["steel-plate"] = {"kr-imersium-beam", 400},
            {"kr-matter-cube", 400},
            {"kr-ai-core", 400},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-exoskeleton-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            {"bob-insulated-cable", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            ["steel-plate"] = {"bob-copper-tungsten-alloy", 500},
            ["bob-insulated-cable"] = {"bob-nitinol-bearing", 500},
            {"bob-nitinol-bearing", 500},
        }
    },
    {
        dependencies = {"bobplates", "bobelectronics"},
        replacements = {
            {"bob-gilded-copper-cable", 500},
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
    }
    ,--SE
	{
        dependencies = { "space-exploration"},
        replacements = {
			["armour-control-unit"] = {"se-quantum-processor", 500},
			["low-density-structure"] = {"se-heavy-bearing", 500},
			["processing-unit"] = {"se-naquium-processor", 500},
            {"se-nanomaterial", 500},
        }
    },
    --K2
	{
        dependencies = {"Krastorio2", },
        replacements = {
			["battery"] = {"kr-lithium-sulfur-battery", 500},
			["steel-plate"] = {"kr-imersium-beam", 500},
            {"kr-energy-control-unit", 500},
            {"kr-matter-cube", 500},
            {"kr-ai-core", 500},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
        }
    },
})