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
            --["electronic-circuit"] = {"automation-core", 6},
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
            --["electronic-circuit"] = {"automation-core", 10},
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
            ["steel-plate"] = {"kr-steel-beam", 25},
            --["electronic-circuit"] = {"automation-core", 16},
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
    --Clowens
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphourus", 300},
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
            ["battery"] = {"bob-silver-zinc-battery", 100},
            ["plastic-bar"] = {"bob-titanium-plate", 150},
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
PAR.ingredient_prereq(DRR["par-battery-mk8"], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"bob-silver-zinc-battery", 200},
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
            ["battery"] = {"bob-silver-zinc-battery", 300},
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
            ["battery"] = {"bob-silver-zinc-battery", 400},
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
            ["armour-control-unit"] = {"kr-matter-cube", 2},
        }
    },
})