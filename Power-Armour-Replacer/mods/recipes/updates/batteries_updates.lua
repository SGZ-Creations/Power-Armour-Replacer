local util = require("mods.util")
local DRR = data.raw.recipe
util.ingredient_prereq(DRR["par-battery-mk1"], {
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
            ["electronic-circuit"] = {"automation-core", 6},
        }
    },
})
util.ingredient_prereq(DRR["par-battery-mk2"], {
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
            {"bob-solder", 60},
            {"bob-tinned-copper-cable", 110},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"automation-core", 10},
        }
    },
})
util.ingredient_prereq(DRR["par-battery-mk3"], {
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
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-solder", 85},
        }
    },
    --248K
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            {"bob-lithium-ion-battery", 20},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["steel-plate"] = {"bob-steel-bearing", 85},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"steel-beam", 25},
            ["electronic-circuit"] = {"automation-core", 16},
        }
    },
})
util.ingredient_prereq(DRR["par-battery-mk4"], {
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
    --248K
    {
        dependencies = {"248k", "bobplates"},
        replacements = {
            {"bob-lithium-ion-battery", 10},
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
})
util.ingredient_prereq(DRR["par-battery-mk5"], {
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
    --248K
    {
        dependencies = {"248k", "bobplates"},
        replacements = {
            {"bob-lithium-ion-battery", 20},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphourus", 200},
        }
    },
})
util.ingredient_prereq(DRR["par-battery-mk6"], {
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
            {"bob-lithium", 50},
        }
    },
    --248K
    {
        dependencies = {"248k"},
        replacements = {
            {"el_lithium_battery", 30},
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            ["el_lithium_battery"] = {"bob-lithium-ion-battery", 100},
        }
    },
    --Angles
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-bob-tungsten-plate"] = {"angels-plate-chrome", 200},
        }
    },
    --Clowens
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphourus", 300},
        }
    },
})
util.ingredient_prereq(DRR["par-battery-mk7"], {
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
            ["battery"] = {"bob-silver-zinc-battery", 100},
            ["plastic-bar"] = {"bob-titanium-plate", 150},
            ["lubricant"] = {"zero"},
            {"bob-lithium-ion-battery", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 100},
        }
    },
    --248K
    {
        dependencies = {"248k",},
        replacements = {
            {"el_lithium_battery", 100},
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            ["el_lithium_battery"] = {"bob-lithium-ion-battery", 100},
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
})
util.ingredient_prereq(DRR["par-battery-mk8"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["water"] = {"processing-unit", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"bob-silver-zinc-battery", 200},
            ["water"] = {"zero"},
            {"bob-tungsten-plate", 200},
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
            ["water"] = {"zero"},
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
})
util.ingredient_prereq(DRR["par-battery-mk9"], {
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
            ["battery"] = {"bob-silver-zinc-battery", 300},
            ["plastic-bar"] = {"bob-copper-tungsten-alloy", 250},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 250},
            {type="fluid", name="liquid-dimethylmercury", amount=200},
        }
    },
})
util.ingredient_prereq(DRR["par-battery-mk10"], {
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
            ["battery"] = {"bob-silver-zinc-battery", 400},
            ["armour-control-unit"] = {"bob-nitinol-alloy", 100},
            {"bob-tungsten-carbide",600},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"bob-tungsten-carbide", 600},
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
            ["sulfuric-acid"] = {"liquid-dimethylmercury", 300},
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