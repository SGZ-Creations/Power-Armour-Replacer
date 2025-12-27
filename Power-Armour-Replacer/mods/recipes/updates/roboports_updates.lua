local PAR = require("mods.util")
---@Class RecipePrototype
local Recipe = data.raw.recipe

PAR.ingredient_prereq(Recipe["par-roboport-mk1"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["wood"] = {"bob-resin", 100},
            ["small-lamp"] = {"bob-rubber", 150},
            ["electronic-circuit"] = {"bob-basic-circuit-board", 100},
            ["copper-cable"] = {"bob-insulated-cable", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 100},
            ["iron-chest"] = {"bob-steel-gear-wheel", 100},
            ["wood"] = {"bob-resin", 150},
            {"stone-brick", 50},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["iron-chest"] = {"bob-solder", 150},
            ["copper-cable"] = {"bob-tinned-copper-cable", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["bob-insulated-cable"] = {"angels-solid-carbon", 100},
        }
    },
    {
        dependencies = {"angelspetrochem", "bobplates",},
        replacements = {
            ["bob-rubber"] = {"bob-tin-plate", 100},
            ["bob-resin"] = {"wood", 200},
        }
    },
    {
        dependencies = {"angelspetrochem", "bobplates", "SeaBlockMetaPack"},
        replacements = {
            ["bob-rubber"] = {"bob-tin-plate", 50},
            ["bob-resin"] = {"wood", 200},
        }
    },
    --SE-K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-chest"] = {"kr-iron-beam", 10},
            ["copper-cable"] = {"kr-glass", 25},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 20},
            ["small-lamp"] = {"motor", 10},
        }
    },
})
PAR.ingredient_prereq(Recipe["par-roboport-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 200},
            {"bob-insulated-cable", 180},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 200},
            ["iron-gear-wheel"] = {"bob-steel-bearing", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-tinned-copper-cable", 175},
        }
    },
    --Angels
    {
        dependencies = {"bobplates", "angelssmelting"},
        replacements = {
            ["bob-insulated-cable"] = {"angels-solid-carbon", 100},
        }
    },
    --SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 30},
            ["copper-cable"] = {"motor", 10},
        }
    },
})
PAR.ingredient_prereq(Recipe["par-roboport-mk3"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 150},
            {"bob-rubber", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 150},
            {"bob-rubber", 150},
            {"bob-bronze-alloy", 150},
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["electronic-circuit"] = {"bob-roboport-antenna-1", 1},
            ["engine-unit"] = {"bob-roboport-chargepad-1", 1},
            ["iron-plate"] = {"bob-roboport-door-1", 1},
            {"bob-roboport-door-1", 1},
        }
    },
})
PAR.ingredient_prereq(Recipe["par-roboport-mk4"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 200},
            {"bob-rubber", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 200},
            ["iron-gear-wheel"] = {"bob-bronze-alloy", 200},
            ["steel-plate"] = {"bob-brass-alloy", 200},
            {"bob-rubber", 200},
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["electronic-circuit"] = {"bob-roboport-antenna-1", 1},
            ["engine-unit"] = {"bob-roboport-chargepad-1", 1},
            {"bob-roboport-door-1", 1},
            {"bob-roboport-door-1", 1},
        }
    },
})
PAR.ingredient_prereq(Recipe["par-roboport-mk5"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["steel-chest"] = {"advanced-circuit", 250}, --2
            ["flying-robot-frame"] = {"bob-insulated-cable", 250}, --1
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-chest"] = {"advanced-circuit", 250}, --2
            ["bob-insulated-cable"] = {"bob-aluminium-plate", 200}, --1
            ["flying-robot-frame"] = {"bob-aluminium-plate", 200}, --1
            {"bob-ceramic-bearing", 200}, --3
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["steel-chest"] = {"bob-roboport-antenna-2", 5}, --2
            ["advanced-circuit"] = {"bob-roboport-antenna-2", 5}, --2
            ["flying-robot-frame"] = {"bob-roboport-door-2", 5}, --1
            ["bob-insulated-cable"] = {"bob-roboport-door-2", 200}, --1
            ["bob-aluminium-plate"] = {"bob-roboport-door-2", 5}, --1
            ["bob-ceramic-bearing"] = {"bob-roboport-chargepad-2", 5}, --3
            {"bob-roboport-chargepad-2", 5}, --3
        }
    },
})

PAR.ingredient_prereq(Recipe["par-roboport-mk6"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 300},
            ["lubricant"] = {"zero"},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 300},
            ["steel-plate"] = {"bob-invar-alloy", 300},
            {"bob-silicon-nitride", 300},
            ["lubricant"] = {"zero"},
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["electric-engine-unit"] = {"bob-roboport-chargepad-2", 10},
            ["advanced-circuit"] = {"bob-roboport-antenna-2", 10},
            ["processing-unit"] = {"bob-roboport-antenna-2", 10},
            ["steel-plate"] = {"bob-roboport-door-2", 10},
            ["bob-invar-alloy"] = {"bob-roboport-door-2", 10},
            ["bob-silicon-nitride"] = {"zero"},
            ["lubricant"] = {"zero"},
        }
    },
})

PAR.ingredient_prereq(Recipe["par-roboport-mk7"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["uranium-235"] = {"bob-insulated-cable", 350}, --3
            {"processing-unit", 350}, --2
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["uranium-235"] = {"bob-titanium-plate", 350}, --3
            ["bob-insulated-cable"] = {"bob-titanium-plate", 350}, --3
            {"processing-unit", 350}, --2
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["iron-stick"] = {"bob-solder-alloy", 100},--1
            {"bob-gilded-copper-cable", 350},--0
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["processing-unit"] = {"bob-roboport-antenna-3", 5}, --2
            ["uranium-235"] = {"bob-roboport-chargepad-3", 5}, --3
            ["bob-titanium-plate"] = {"bob-roboport-chargepad-3", 5}, --3
            ["bob-insulated-cable"] = {"bob-roboport-chargepad-3", 5}, --3
            ["iron-stick"] = {"bob-roboport-door-3", 5}, --1
            ["bob-solder-alloy"] = {"bob-roboport-door-3", 5}, --1
            ["low-density-structure"] = {"zero"}, --0
            ["bob-gilded-copper-cable"] = {"zero"},--0
        }
    },
    {
        dependencies = {"boblogistics", "space-age"},
        replacements = {
            ["bob-gilded-copper-cable"] = {"zero"},--0
        }
    },
})
PAR.ingredient_prereq(Recipe["par-roboport-mk8"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["uranium-235"] = {"bob-rubber", 400}, --0
            {"processing-unit", 400}, --0
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-silver-plate", 400}, --3
            {"processing-unit", 400}, --0
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-gilded-copper-cable", 400}, --1
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["low-density-structure"] = {"bob-roboport-antenna-3", 10}, --2
            ["steel-plate"] = {"bob-roboport-chargepad-3", 10}, --3
            ["bob-silver-plate"] = {"bob-roboport-chargepad-3", 10}, --3
            ["copper-cable"] = {"bob-roboport-door-3", 10}, --1
            ["bob-gilded-copper-cable"] = {"bob-roboport-door-3", 10}, --1
            ["processing-unit"] = {"zero"}, --0
            ["uranium-235"] = {"zero"}, --0
            ["bob-rubber"] = {"zero"}, --0
        }
    },
    {
        dependencies = {"boblogistics", "space-age"},
        replacements = {
            ["processing-unit"] = {"zero"}, --0
        }
    },
})
PAR.ingredient_prereq(Recipe["par-roboport-mk9"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["advanced-circuit"] = {"bob-advanced-processing-unit", 450},
            ["lubricant"] = {"zero"},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"bob-advanced-processing-unit", 450},
            ["lubricant"] = {"zero"},
            {"bob-copper-tungsten-alloy", 450},
            {"bob-silicon-wafer", 450},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-solder", 300},
            {"bob-tinned-copper-cable", 300},
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["armour-control-unit"] = {"bob-roboport-antenna-4", 5},
            ["low-density-structure"] = {"bob-roboport-chargepad-4", 5},
            ["advanced-circuit"] = {"bob-roboport-door-4", 5},
            ["bob-advanced-processing-unit"] = {"bob-roboport-door-4", 5},
        }
    },
})
PAR.ingredient_prereq(Recipe["par-roboport-mk10"], {
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
            {"bob-silver-zinc-battery", 500},
            {"bob-nitinol-alloy", 500},
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            {"bob-roboport-antenna-4", 1},
            {"bob-roboport-chargepad-4", 1},
            {"bob-roboport-door-4", 1},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-matter-cube", 2},
        }
    },
})