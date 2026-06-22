local PAR = require("mods.util")
local DRR = data.raw.recipe
PAR.ingredient_prereq(DRR["par-battery-mk1"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 50},
            ["small-electric-pole"] = {"bob-rubber", 50},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 50},
            ["small-electric-pole"] = {"bob-rubber", 50},
            ["steel-plate"] = {"bob-lead-plate", 50},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-solder", 50},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["small-electric-pole"] = {"wood", 50},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-cable"] = {"kr-automation-core", 25},
			["steel-plate"] = {"kr-iron-beam", 25},
            ["stone-brick"] = {"kr-glass", 25},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["copper-cable"] = {"kr-automation-core", 25},
			["steel-plate"] = {"kr-steel-beam", 25},
            ["stone-brick"] = {"kr-glass", 25},
        }
    },
})
PAR.ingredient_prereq(DRR["par-battery-mk2"], {
    {
        dependencies = {"bobelectronics", },
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 100},
            {"bob-lead-plate", 35},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-plate"] = {"bob-solder", 60},
            {"bob-tinned-copper-cable", 110},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-cable"] = {"kr-automation-core", 50},
			["steel-plate"] = {"kr-iron-beam", 50},
            {"kr-glass", 50},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["copper-cable"] = {"kr-automation-core", 50},
			["steel-plate"] = {"kr-steel-beam", 50},
            {"kr-glass", 50},
        }
    },
})
PAR.ingredient_prereq(DRR["par-battery-mk3"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            {"bob-lead-plate", 55},
            ["steel-plate"] = {"bob-steel-bearing", 85},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-solder", 85},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-cable"] = {"kr-automation-core", 75},
			["steel-plate"] = {"kr-steel-beam", 75},
            ["stone-brick"] = {"kr-glass", 75},
            {"kr-rare-metals", 75},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["copper-cable"] = {"kr-automation-core", 75},
			["steel-plate"] = {"kr-steel-beam", 75},
            ["stone-brick"] = {"kr-glass", 75},
            {"kr-rare-metals", 75},
        }
    },
})
PAR.ingredient_prereq(DRR["par-battery-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 200},
            {"bob-insulated-cable", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-bronze-alloy", 60},
            {"bob-invar-alloy", 50},
        }
    },{
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-solder", 110},
        }
    },
    --Angles
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            {"bob-lead-plate", 55},
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
            ["copper-cable"] = {"kr-automation-core", 100},
			["steel-plate"] = {"kr-iron-beam", 100},
            ["stone-brick"] = {"kr-glass", 100},
            {"kr-rare-metals", 100},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["copper-cable"] = {"kr-automation-core", 100},
			["steel-plate"] = {"kr-steel-beam", 100},
            ["stone-brick"] = {"kr-glass", 100},
            {"kr-rare-metals", 100},
        }
    },
})
PAR.ingredient_prereq(DRR["par-battery-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 250},
            {"bob-insulated-cable", 210},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["low-density-structure"] = {"bob-brass-alloy", 50},
            ["steel-plate"] = {"bob-aluminium-plate", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-tinned-copper-cable", 200},
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
            ["battery"] = {"kr-lithium-sulfur-battery", 125},
            ["copper-cable"] = {"kr-automation-core", 125},
			["steel-plate"] = {"kr-steel-beam", 125},
            {"kr-imersium-beam", 125},
            {"kr-rare-metals", 125},
            {"kr-ai-core", 125},
            {"kr-glass", 125},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
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
PAR.ingredient_prereq(DRR["par-battery-mk6"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 300},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-aluminium-plate", 100},
            ["low-density-structure"] = {"bob-titanium-plate", 100},
            {"lithium-plate", 50},
        }
    },
    --Clowens
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphourus", 300},
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
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["battery"] = {"kr-lithium-sulfur-battery", 150},
			{"kr-imersium-beam", 150},
            {"kr-matter-cube", 150},
            {"kr-ai-core", 150},
        }
    },
})
PAR.ingredient_prereq(DRR["par-battery-mk7"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"processing-unit", 350},
            ["lubricant"] = {"zero"},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["armour-control-unit"] = {"low-density-structure", 50},
            ["battery"] = {"bob-battery-3", 100},
            ["plastic-bar"] = {"bob-titanium-plate", 150},
            {"bob-battery-2", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 100},
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
            {"solid-white-phosphourus", 400},
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
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-energy-control-unit", 200},
			{"kr-imersium-beam", 200},
            {"kr-matter-cube", 200},
            {"kr-rare-metals", 200},
            {"kr-ai-core", 200},
        }
    },
})
PAR.ingredient_prereq(DRR["par-battery-mk8"], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"bob-battery-3", 200},
        }
    },{
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 200},
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
            {"clowns-plate-magnesium", 200},
            {type="fluid", name="liquid-dimethylmercury", amount=100},
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
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-energy-control-unit", 300},
			{"kr-imersium-beam", 300},
            {"kr-matter-cube", 300},
            {"kr-rare-metals", 300},
            {"kr-ai-core", 300},
        }
    },
})
PAR.ingredient_prereq(DRR["par-battery-mk9"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 450},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 450},
            ["battery"] = {"bob-battery-3", 300},
            ["plastic-bar"] = {"bob-copper-tungsten-alloy", 250},
        }
    },
    --Angels
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            {type="fluid", name="angels-gas-monochloramine", amount=100},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 250},
            {type="fluid", name="liquid-dimethylmercury", amount=200},
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
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-energy-control-unit", 400},
			{"kr-imersium-beam", 400},
            {"kr-matter-cube", 400},
            {"kr-rare-metals", 400},
            {"kr-ai-core", 400},
        }
    },
})
PAR.ingredient_prereq(DRR["par-battery-mk10"], {
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
            ["battery"] = {"bob-battery-3", 400},
            ["armour-control-unit"] = {"bob-nitinol-alloy", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            ["angels-liquid-sulfuric-acid"] = {"zero"},
            {type="fluid", name="angels-gas-monochloramine", amount=100},
        }
    },
    {
        dependencies = {"extendedangels"},
        replacements = {
            {"titanium-concrete-brick", 100},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 250},
            {"clowns-plate-magnesium", 200},
            ["angels-gas-monochloramine"] = {type="fluid", name="liquid-dimethylmercury", amount=300}
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
            {"kr-energy-control-unit", 500},
			{"kr-imersium-beam", 500},
            {"kr-matter-cube", 500},
            {"kr-rare-metals", 500},
            {"kr-ai-core", 500},
        }
    },
})