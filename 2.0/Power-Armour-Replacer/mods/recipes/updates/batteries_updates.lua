local PAR = require("mods.util")
local RECIPES = data.raw.recipe
PAR.ingredient_prereq(RECIPES["par-battery-mk1"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 25},
            ["small-electric-pole"] = {"bob-rubber", 25},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 25},
            ["small-electric-pole"] = {"bob-rubber", 25},
            ["steel-plate"] = {"bob-lead-plate", 25},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-solder", 25},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["small-electric-pole"] = {"wood", 5250},
        }
    },
    --Pyanodon
    {
        dependencies = {"pyalienlife"},
        replacements = {
        }
    },
    {
        dependencies = {"pyalternativeenergy"},
        replacements = {
            ["copper-cable"] = {"battery-mk00", 25},
        }
    },
    {
        dependencies = {"pyrawores",},
        replacements = {
            ["steel-plate"] = {"aluminium-plate", 25},
            ["stone-brick"] = {"solder", 25},
            ["wood"] = {"lead-plate", 25},
        }
    },
    {
        dependencies = {"pyhightech",},
        replacements = {
            ["electronic-circuit"] = {"graphite", 25},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-cable"] = {"kr-automation-core", 25},
			["steel-plate"] = {"kr-steel-beam", 25},
            ["stone-brick"] = {"kr-glass", 25},
            {"kr-iron-beam", 25},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-battery-mk2"], {
    {
        dependencies = {"bobelectronics", },
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 50},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 50},
            {"bob-lead-plate", 50},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-plate"] = {"bob-solder", 50},
            {"bob-tinned-copper-cable", 50},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["kr-automation-core"] = {"kr-automation-core", 50},
            ["copper-cable"] = {"electronic-circuit", 50},
			["steel-plate"] = {"kr-steel-beam", 50},
            {"kr-iron-beam", 50},
            {"kr-glass", 50},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-battery-mk3"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 75},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            {"bob-lead-plate", 75},
            ["steel-plate"] = {"bob-steel-bearing", 75},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-solder", 75},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
			["steel-plate"] = {"kr-steel-beam", 75},
            ["stone-brick"] = {"kr-glass", 75},
            {"kr-automation-core", 75},
            {"kr-rare-metals", 75},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-battery-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 100},
            {"bob-insulated-cable", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-bronze-alloy", 100},
            {"bob-invar-alloy", 100},
        }
    },{
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-solder", 100},
        }
    },
    --Angles
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            {"bob-lead-plate", 100},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphorus", 100},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
			["steel-plate"] = {"kr-steel-beam", 100},
            ["stone-brick"] = {"kr-glass", 100},
            {"kr-automation-core", 100},
            {"kr-rare-metals", 100},
            {"kr-iron-beam", 100},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-battery-mk5"], {
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
            ["low-density-structure"] = {"bob-brass-alloy", 125},
            ["steel-plate"] = {"bob-aluminium-plate", 125},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-tinned-copper-cable", 125},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphourus", 125},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["battery"] = {"kr-lithium-sulfur-battery", 125},
            ["copper-cable"] = {"kr-automation-core", 125},
			["steel-plate"] = {"kr-steel-beam", 125},
            {"kr-imersium-beam", 125},
            {"kr-rare-metals", 125},
            {"kr-ai-core", 125},
            {"kr-glass", 125},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-battery-mk6"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["low-density-structure"] = {"bob-titanium-plate", 150},
            ["steel-plate"] = {"bob-aluminium-plate", 150},
            {"lithium-plate", 150},
        }
    },
    --Clowens
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphourus", 150},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["battery"] = {"kr-lithium-sulfur-battery", 150},
			{"kr-imersium-beam", 150},
            {"kr-matter-cube", 150},
            {"kr-ai-core", 150},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-battery-mk7"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"processing-unit", 200},
            ["lubricant"] = {"zero"},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["armour-control-unit"] = {"low-density-structure", 200},
            ["plastic-bar"] = {"bob-titanium-plate", 200},
            ["battery"] = {"bob-battery-3", 200},
            {"bob-battery-2", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 200},
        }
    },
    --Angles
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["lubricant"] = {"zero"},
            {"angels-plate-platinum", 200},
            {"angels-plate-chrome", 200},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphourus", 200},
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
            {"kr-ai-core", 200},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-battery-mk8"], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"bob-battery-3", 300},
        }
    },{
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 300},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-platinum", 300},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-magnesium", 300},
            {type="fluid", name="liquid-dimethylmercury", amount=300},
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
            {"kr-ai-core", 300},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-battery-mk9"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 400},
            ["plastic-bar"] = {"bob-copper-tungsten-alloy", 400},
            ["battery"] = {"bob-battery-3", 400},
        }
    },
    --Angels
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            {type="fluid", name="angels-gas-monochloramine", amount=400},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 250},
            {type="fluid", name="liquid-dimethylmercury", amount=400},
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
            {"kr-ai-core", 400},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-battery-mk10"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            ["armour-control-unit"] = {"bob-nitinol-alloy", 500},
            ["battery"] = {"bob-battery-3", 500},
        }
    },
    --Angels
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            {type="fluid", name="angels-gas-monochloramine", amount=500},
            ["angels-liquid-sulfuric-acid"] = {"zero"},
        }
    },
    {
        dependencies = {"extendedangels"},
        replacements = {
            {"titanium-concrete-brick", 500},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 250},
            {"clowns-plate-magnesium", 200},
            ["angels-gas-monochloramine"] = {type="fluid", name="liquid-dimethylmercury", amount=500}
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
            {"kr-ai-core", 500},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
        }
    },
})