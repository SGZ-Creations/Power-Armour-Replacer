local recipes = {
    {
        type = "recipe",
        name = "b_mk1",
        enabled = false,
        energy_required = 25,
        ingredients = {
            {"small-electric-pole", 10},
            {"steel-plate", 20},
            {"electronic-circuit", 10},
            {"copper-cable", 50},
        },
        result = "b_mk1"
        
    },
    {
        type = "recipe",
        name = "b_mk2",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {"b_mk1", 1},
            {"electronic-circuit", 15},
            {"copper-plate", 35},
            {"steel-plate", 30},
        },
        result = "b_mk2"
    },
    {
        type = "recipe",
        name = "b_mk3",
        enabled = false,
        energy_required = 35,
        ingredients = {
            {"b_mk2", 1},
            {"electronic-circuit", 25},
            {"advanced-circuit", 40},
            {"battery", 30},
            {"steel-plate", 50},
        },
        result = "b_mk3"
    },
    {
        type = "recipe",
        name = "b_mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"b_mk3", 1},
            {"electronic-circuit", 50},
            {"advanced-circuit", 20},
            {"copper-cable", 150},
            {"steel-plate", 75},
            {"battery", 40},
        },
        result = "b_mk4"
    },
    {
        type = "recipe",
        name = "b_mk5",
        enabled = false,
        energy_required = 45,
        ingredients = {
            {"b_mk4", 1},
            {"advanced-circuit", 120},
            {"low-density-structure", 75},
            {"steel-plate", 125},
            {"battery", 60},
        },
        result = "b_mk5"
    },
    {
        type = "recipe",
        name = "b_mk6",
        enabled = false,
        energy_required = 50,
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk5", 1},
            {"advanced-circuit", 125},
            {"low-density-structure", 150},
            {"steel-plate", 140},
            {"plastic-bar", 135},
            {"battery", 70},
        },
        result = "b_mk6"
    },
    {
        type = "recipe",
        name = "b_mk7",
        enabled = false,
        energy_required = 55,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk6", 1},
            {"battery", 80},
            {"plastic-bar", 65},
            {"advanced-circuit", 40},
            {type="fluid", name="lubricant", amount=300},
        },
        result = "b_mk7"
    },
    {
        type = "recipe",
        name = "b_mk8",
        enabled = false,
        energy_required = 60,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk7", 1},
            {"battery", 90},
            {"rocket-control-unit", 65},
            {"processing-unit", 50},
            {type="fluid", name="water", amount=500},
        },
        result = "b_mk8"
    },
    {
        type = "recipe",
        name = "b_mk9",
        enabled = false,
        energy_required = 65,
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk8", 1},
            {"battery", 100},
            {"plastic-bar", 135},
            {"processing-unit", 50},
            {"rocket-control-unit", 95},
            {"low-density-structure", 175},
        },
        result = "b_mk9"
    },
    {
        type = "recipe",
        name = "b_mk10",
        enabled = false,
        energy_required = 70,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk9", 1},
            {"battery", 40},
            {"rocket-control-unit", 135},
            {"low-density-structure", 200},
            {type="fluid", name="sulfuric-acid", amount=150},
        },
        result = "b_mk10"
    },
}

local compat = require("compatibilities/mods-compat")
--Compatibility section
compat.update_ingredients(recipes[1], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 100},
            {"solder", 30},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["small-electric-pole"] = {"ruber", 40},
            {"lead-plate", 20},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed", "bobplates",},
        replacements = {
            {"silicon", 60},
            {"glass", 40},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["electronic-circuit"] = {"bronze-beam", 20},
            ["small-electric-pole"] = {"copper-frame-small", 30},
            ["steel-plate"] = {"bronze-pellet", 40},
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
compat.update_ingredients(recipes[2], {
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 100},
            {"solder", 60},
            {"tinned-copper-cable", 110},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            {"lead-plate", 35},
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
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["steel-plate"] = {"", 0},
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
compat.update_ingredients(recipes[3], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 50},
            {"solder", 85},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            {"lead-plate", 55},
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
            {"lithium-ion-battery", 20},
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
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            [""] = {"", 0},
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
compat.update_ingredients(recipes[4], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"insulated-cable", 120},
            ["copper-cable"] = {"solder", 110},
            {"insulated-cable", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bronze-alloy", 60},
            {"invar-alloy", 50},
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
            {"solid-white-phosphourus", 100},
        }
    },
})
compat.update_ingredients(recipes[5], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 80},
            {"electronic-circuit", 80},
            {"tinned-copper-cable", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["low-density-structure"] = {"brass-plate", 50},
            ["steel-plate"] = {"aluminium-plate", 100},
        }
    },
    --248K
    {
        dependencies = {"248k", "bobplates"},
        replacements = {
            {"lithium-ion-battery", 20},
        }
    },
    --Angles
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"insulated-cable", 210},
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
compat.update_ingredients(recipes[6], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["low-density-structure"] = {"titanium-plate", 100},
            ["steel-plate"] = {"aluminium-plate", 100},
            {"plastic-bar", 140},
        }
    },
    --248K
    {
        dependencies = {"248k", "bobplates"},
        replacements = {
            {"lithium-ion-battery", 30},
        }
    },
    --Angles
    {
        dependencies = {"angelssmelting"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
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
compat.update_ingredients(recipes[7], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
            {"lithium-ion-battery", 100},
        }
    },
    --248K
    {
        dependencies = {"248k",},
        replacements = {
            {"lithium-ion-battery", 100},
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
             {"lithium-ion-battery", 100},
        }
    },
    --Angles
    {
        dependencies = {"angelssmelting"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
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
compat.update_ingredients(recipes[8], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
            {"angels-wire-platinum", 300},
        }
    }
})
compat.update_ingredients(recipes[9], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
        }
    }
})
compat.update_ingredients(recipes[10], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
        }
    }
})
data:extend(recipes)