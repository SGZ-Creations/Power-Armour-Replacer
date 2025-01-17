local util = require("compatibility.util")

util.ingredient_prereq(data.raw.recipe["par-exoskeleton-mk1"], {
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
            ["iron-gear-wheel"] = {"carbon", 80},
            {"steel-gear-wheel", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"solder", 50},
            {"tinned-copper-cable", 100},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 115},
        }
    },
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            ["silicon"] = {"angels-mono-silicon", 90},
        }
    },
    --SE-K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"steel-gear-wheel", 50},
            ["electronic-circuit"] = {"automation-core", 20},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-exoskeleton-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-stick"] = {"invar-alloy", 150},
            ["steel-plate"] = {"cobalt-steel-bearing", 75},
            ["iron-gear-wheel"] = {"steel-bearing", 60},
            ["electronic-circuit"] = {"electronic-circuit", 200},
        }
    },
    -- Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["invar-alloy"] = {"bronze-alloy", 130},
            ["cobalt-steel-bearing"] = {"brass-gear-wheel", 70},
        },
    },
    --Darkstar
    {
        dependencies = {"bobplates", "Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 115},
        }
    },
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            ["silicon"] = {"angels-mono-silicon", 90},
        }
    },
    --248K
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            ["battery"] = {"aluminium-plate", 55},
        }
    },
    --SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 25},
            ["battery"] = {"motor", 25},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"rare-metals", 20},
            ["steel-plate"] = {"steel-beam", 45},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-exoskeleton-mk3"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"advanced-circuit", 300},
            ["lubricant"] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-stick"] = {"titanium-bearing", 75},
            ["battery"] = {"lithium-ion-battery", 90},
            ["iron-gear-wheel"] = {"invar-alloy", 155},
            ["lubricant"] = {"", 0},
            {"advanced-circuit", 300},
            {"titanium-plate", 125},
        }
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["steel-plate"] = {"gilded-copper-cable", 200},
        }
    },
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"diamond", 4},
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
            ["battery"] = {"lithium-ion-battery", 55},
        }
    },
    --SEK2
    {
        dependencies = {"Krastorio2", "space-exploration"},
        replacements = {
            ["lubricant"] = {"mineral-water", 100},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"rare-metals", 20},
            ["lubricant"] = {"mineral-water", 100},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["advanced-circuit"] = {"motor", 20},
            ["lubricant"] = {"", 0},
            {"low-density-structure", 60},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-exoskeleton-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"processing-unit", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"cobalt-steel-bearing", 120},
            ["battery"] = {"silver-zinc-battery", 150},
            {"processing-unit", 400},
            {"tungsten-gear-wheel", 115},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            ["steel-plate"] = {"heat-shield-tile", 135},
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
			["battery"] = {"lithium-sulfur-battery", 350},
            ["plastic-bar"] = {"se-dynamic-emitter", 20},
            ["steel-plate"] = {"imersium-beam", 200},
            ["processing-unit"] = {"se-lattice-pressure-vessel", 10},
            ["low-density-structure"] = {"", 0},
            {"electric-motor", 30},
            {"matter-cube", 3},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-exoskeleton-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 500},
            {"insulated-cable", 660},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 500},
            ["steel-plate"] = {"copper-tungsten-alloy", 200},
            ["battery"] = {"tungsten-carbide", 200},
            ["insulated-cable"] = {"nitinol-bearing", 200},
            {"nitinol-bearing", 200},
        }
    },
    {
        dependencies = {"bobplates", "bobelectronics"},
        replacements = {
            {"gilded-copper-cable", 90},
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
			["battery"] = {"lithium-sulfur-battery", 500},
			["steel-plate"] = {"imersium-beam", 200},
			["armour-control-unit"] = {"se-quantum-processor", 5},
			["low-density-structure"] = {"se-heavy-bearing", 500},
			["processing-unit"] = {"se-naquium-processor", 5},
            {"se-nanomaterial", 500},
            {"matter-cube", 6},
        }
    },
})