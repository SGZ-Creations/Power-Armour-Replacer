local util = require("compatibility.util")

util.ingredient_prereq(data.raw.recipe["par-battery-mk1"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 50},
            ["small-electric-pole"] = {"ruber", 50},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 50},
            ["small-electric-pole"] = {"ruber", 50},
            ["steel-plate"] = {"lead-plate", 50},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"solder", 50},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 60},
            {"glass", 40},
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
util.ingredient_prereq(data.raw.recipe["par-battery-mk2"], {
    {
        dependencies = {"bobelectronics", },
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 100},
            {"lead-plate", 35},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"solder", 60},
            {"tinned-copper-cable", 110},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 60},
            {"lead-plate", 35},
        }
    },
    {
        dependencies = {"Darkstar_utilities_fixed", "angelssmelting",},
        replacements = {
            ["silicon"] = {"angels-mono-silicon", 60},
            {"angels-mono-silicon", 60},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
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
util.ingredient_prereq(data.raw.recipe["par-battery-mk3"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            {"lead-plate", 55},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"solder", 85},
        }
    },
    --248K
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            {"lithium-ion-battery", 20},
        }
    },
    {
        dependencies = {"248k"},
        replacements = {
            --{"lithium-ion-battery", 20},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["steel-plate"] = {"steel-bearing", 85},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed", "bobplates",},
        replacements = {
            {"silicon", 60},
        }
    },
    {
        dependencies = {"Darkstar_utilities_fixed", "angelssmelting",},
        replacements = {
            ["silicon"] = {"angels-mono-silicon", 60},
            {"angels-mono-silicon", 60},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            --["advanced-circuit"] = {"electronic-circuit", 30},
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
util.ingredient_prereq(data.raw.recipe["par-battery-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 200},
            {"insulated-cable", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bronze-alloy", 60},
            {"invar-alloy", 50},
        }
    },{
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"solder", 110},
        }
    },
    --248K
    {
        dependencies = {"248k", "bobplates"},
        replacements = {
            {"lithium-ion-battery", 10},
        }
    },
    --Angles
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            {"lead-plate", 55},
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
util.ingredient_prereq(data.raw.recipe["par-battery-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 250},
            {"insulated-cable", 210},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["low-density-structure"] = {"brass-plate", 50},
            ["steel-plate"] = {"aluminium-plate", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"tinned-copper-cable", 200},
        }
    },
    --248K
    {
        dependencies = {"248k", "bobplates"},
        replacements = {
            {"lithium-ion-battery", 20},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed", "bobplates",},
        replacements = {
            {"silicon", 60},
        }
    },
    {
        dependencies = {"Darkstar_utilities_fixed", "angelssmelting",},
        replacements = {
            ["silicon"] = {"angels-mono-silicon", 60},
            {"angels-mono-silicon", 60},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphourus", 200},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-battery-mk6"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 300},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"aluminium-plate", 100},
            ["low-density-structure"] = {"titanium-plate", 100},
            {"lithium", 50},
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
            ["el_lithium_battery"] = {"lithium-ion-battery", 100},
        }
    },
    --Angles
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["tungsten-plate"] = {"angels-plate-chrome", 200},
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
util.ingredient_prereq(data.raw.recipe["par-battery-mk7"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"processing-unit", 350},
            ["lubricant"] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["armour-control-unit"] = {"low-density-structure", 50},
            ["battery"] = {"silver-zinc-battery", 100},
            ["plastic-bar"] = {"titanium-plate", 150},
            ["lubricant"] = {"", 0},
            {"lithium-ion-battery", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 100},
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
            ["el_lithium_battery"] = {"lithium-ion-battery", 100},
        }
    },
    --Angles
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["lubricant"] = {"", 0},
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
util.ingredient_prereq(data.raw.recipe["par-battery-mk8"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["water"] = {"processing-unit", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"silver-zinc-battery", 200},
            ["water"] = {"", 0},
            {"tungsten-plate", 200},
        }
    },{
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 200},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["water"] = {"", 0},
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
util.ingredient_prereq(data.raw.recipe["par-battery-mk9"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 450},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 450},
            ["battery"] = {"silver-zinc-battery", 300},
            ["plastic-bar"] = {"copper-tungsten-alloy", 250},
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
util.ingredient_prereq(data.raw.recipe["par-battery-mk10"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 500},
            ["battery"] = {"silver-zinc-battery", 400},
            ["armour-control-unit"] = {"nitinol-alloy", 100},
            {"tungsten-carbide",600},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"tungsten-carbide", 600},
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