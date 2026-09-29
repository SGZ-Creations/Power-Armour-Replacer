local PAR = require("mods.util")
local RECIPES = data.raw.recipe

PAR.ingredient_prereq(RECIPES["par-roboport-mk1"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["wood"] = {"bob-resin", 25},
            ["small-lamp"] = {"bob-rubber", 25},
            ["copper-cable"] = {"bob-insulated-cable", 25},
            ["electronic-circuit"] = {"bob-basic-circuit-board", 25},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 25},
            ["iron-chest"] = {"bob-steel-gear-wheel", 25},
            ["wood"] = {"bob-resin", 25},
            {"stone-brick", 25},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["iron-chest"] = {"bob-solder", 25},
            ["copper-cable"] = {"bob-tinned-copper-cable", 25},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["bob-insulated-cable"] = {"angels-solid-carbon", 25},
        }
    },
    {
        dependencies = {"angelspetrochem", "bobplates",},
        replacements = {
            ["bob-rubber"] = {"bob-tin-plate", 25},
            ["bob-resin"] = {"wood", 25},
        }
    },
    {
        dependencies = {"angelspetrochem", "bobplates", "SeaBlockMetaPack"},
        replacements = {
            ["bob-rubber"] = {"bob-tin-plate", 25},
            ["bob-resin"] = {"wood", 25},
        }
    },
    --Pyanodon
    {
        dependencies = {"pyalienlife",},
        replacements = {
            ["steel-plate"] = {"plastic-bar", 25},
        }
    },
    {
        dependencies = {"pyalternativeenergy",},
        replacements = {
            ["electronic-circuit"] = {"battery-mk00", 25},
        }
    },
    {
        dependencies = {"pyrawores",},
        replacements = {
            ["copper-cable"] = {"tinned-cable", 25},
            ["wood"] = {"titanium-plate", 25},
            {"lead-plate", 25},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"kr-steel-beam", 25},
            ["iron-stick"] = {"kr-iron-beam", 25},
            ["stone-brick"] = {"kr-sand", 25},
            {"kr-automation-core", 25},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-roboport-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 50},
            {"bob-insulated-cable", 50},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 50},
            ["iron-gear-wheel"] = {"bob-steel-bearing", 50},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-tinned-copper-cable", 50},
        }
    },
    --Angels
    {
        dependencies = {"bobplates", "angelssmelting"},
        replacements = {
            ["bob-insulated-cable"] = {"angels-solid-carbon", 50},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["kr-automation-core"] = {"kr-automation-core", 50},
            ["steel-plate"] = {"kr-steel-beam", 50},
            ["iron-stick"] = {"kr-iron-beam", 50},
            ["stone-brick"] = {"kr-sand", 50},
            {"electronic-circuit", 50},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-roboport-mk3"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 75},
            {"bob-rubber", 75},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 75},
            {"bob-bronze-alloy", 75},
            {"bob-rubber", 75},
        }
    },
    {
        dependencies = {"boblogistics"},-- Exclusive amount here due to crafting cost of the intemdiant itself
        replacements = {
            {"bob-roboport-chargepad-1", 2},
            {"bob-roboport-antenna-1", 2},
            {"bob-roboport-door-1", 2},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-plate"] = {"kr-rare-metals", 75},
            ["steel-plate"] = {"kr-steel-beam", 75},
            ["iron-stick"] = {"kr-iron-beam", 75},
            ["stone-brick"] = {"kr-sand", 75},
            {"kr-electronic-components", 75},
            {"kr-automation-core", 75},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-roboport-mk4"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 100},
            {"bob-rubber", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 100},
            ["iron-gear-wheel"] = {"bob-bronze-alloy", 100},
            ["steel-plate"] = {"bob-nickel", 100},
            {"bob-rubber", 100},
        }
    },
    {
        dependencies = {"boblogistics"},-- Exclusive amount here due to crafting cost of the intemdiant itself
        replacements = {
            {"bob-roboport-chargepad-1", 5},
            {"bob-roboport-antenna-1", 5},
            {"bob-roboport-door-1", 5},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-plate"] = {"kr-rare-metals", 100},
            ["steel-plate"] = {"kr-steel-beam", 100},
            {"kr-electronic-components", 100},
            {"kr-automation-core", 100},
            {"kr-iron-beam", 100},
            {"kr-silicon", 100},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-roboport-mk5"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["steel-chest"] = {"advanced-circuit", 125},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-chest"] = {"advanced-circuit", 125},
            ["bob-insulated-cable"] = {"bob-aluminium-plate", 125},
        }
    },
    {
        dependencies = {"boblogistics"},-- Exclusive amount here due to crafting cost of the intemdiant itself
        replacements = {
            {"bob-roboport-chargepad-2", 5},
            {"bob-roboport-antenna-2", 5},
            {"bob-roboport-door-2", 5},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"kr-imersium-beam", 125},
            {"kr-lithium-sulfur-battery", 125},
            {"kr-rare-metals", 125},
            {"kr-silicon", 125},
            {"kr-ai-core", 125},
        }
    },
})

PAR.ingredient_prereq(RECIPES["par-roboport-mk6"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 150},
            ["steel-plate"] = {"bob-invar-alloy", 150},
            {"bob-silicon-nitride", 150},
        }
    },
    {
        dependencies = {"boblogistics"},-- Exclusive amount here due to crafting cost of the intemdiant itself
        replacements = {
            {"bob-roboport-chargepad-2", 5},
            {"bob-roboport-antenna-2", 5},
            {"bob-roboport-door-2", 5},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["battery"] = {"kr-lithium-sulfur-battery", 150},
            {"kr-imersium-beam", 150},
            {"kr-rare-metals", 150},
            {"kr-matter-cube", 150},
            {"kr-silicon", 150},
            {"kr-ai-core", 150},
        }
    },
})

PAR.ingredient_prereq(RECIPES["par-roboport-mk7"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["uranium-235"] = {"bob-insulated-cable", 200},
            {"processing-unit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["bob-insulated-cable"] = {"bob-titanium-plate", 200},
            ["uranium-235"] = {"bob-titanium-plate", 200},
            {"processing-unit", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["iron-stick"] = {"bob-solder-alloy", 200},
            {"bob-gilded-copper-cable", 200},
        }
    },
    {
        dependencies = {"boblogistics"},-- Exclusive amount here due to crafting cost of the intemdiant itself
        replacements = {
            {"bob-roboport-chargepad-3", 10},
            {"bob-roboport-antenna-3", 10},
            {"bob-roboport-door-3", 10},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-lithium-sulfur-battery", 200},
            {"kr-energy-control-unit", 200},
            {"kr-imersium-beam", 200},
            {"kr-rare-metals", 200},
            {"kr-silicon", 200},
            {"kr-ai-core", 200},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-roboport-mk8"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["uranium-235"] = {"bob-rubber", 300},
            {"processing-unit", 300},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-silver-plate", 300},
            {"processing-unit", 300},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-gilded-copper-cable", 300},
        }
    },
    {
        dependencies = {"boblogistics"},-- Exclusive amount here due to crafting cost of the intemdiant itself
        replacements = {
            {"bob-roboport-chargepad-3", 15},
            {"bob-roboport-antenna-3", 15},
            {"bob-roboport-door-3", 15},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-lithium-sulfur-battery", 300},
            {"kr-energy-control-unit", 300},
            {"kr-imersium-beam", 300},
            {"kr-rare-metals", 300},
            {"kr-silicon", 300},
            {"kr-ai-core", 300},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-roboport-mk9"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["advanced-circuit"] = {"bob-advanced-processing-unit", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"bob-advanced-processing-unit", 400},
            {"bob-copper-tungsten-alloy", 400},
            {"bob-silicon-wafer", 400},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-solder", 400},
            {"bob-tinned-copper-cable", 400},
        }
    },
    {
        dependencies = {"boblogistics"},-- Exclusive amount here due to crafting cost of the intemdiant itself
        replacements = {
            {"bob-roboport-chargepad-4", 20},
            {"bob-roboport-antenna-4", 20},
            {"bob-roboport-door-4", 20},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-lithium-sulfur-battery", 400},
            {"kr-energy-control-unit", 400},
            {"kr-imersium-beam", 400},
            {"kr-rare-metals", 400},
            {"kr-silicon", 400},
            {"kr-ai-core", 400},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-roboport-mk10"], {
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
            {"bob-battery-3", 500},
            {"bob-nitinol-alloy", 500},
        }
    },
    {
        dependencies = {"boblogistics"},-- Exclusive amount here due to crafting cost of the intemdiant itself
        replacements = {
            {"bob-roboport-chargepad-4", 20},
            {"bob-roboport-antenna-4", 20},
            {"bob-roboport-door-4", 20},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-lithium-sulfur-battery", 500},
            {"kr-energy-control-unit", 500},
            {"kr-imersium-beam", 500},
            {"kr-rare-metals", 500},
            {"kr-silicon", 500},
            {"kr-ai-core", 500},
        }
    },
})