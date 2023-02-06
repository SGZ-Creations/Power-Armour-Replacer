local recipes = {
    {
        type = "recipe",
        name = "e_mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {"copper-plate", 120},
            {"electronic-circuit", 115},
            {"steel-plate", 120},
            {"copper-cable", 125},
            {"iron-gear-wheel", 120},
        },
        result = "e_mk1"
    },
    {
        type = "recipe",
        name = "e_mk2",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"e_mk1", 1},
            {"battery", 120},
            {"iron-gear-wheel", 60},
            {"electronic-circuit", 120},
            {"steel-plate", 140},
            {"iron-stick", 70},
        },
        result = "e_mk2"
    },
    {
        type = "recipe",
        name = "e_mk3",
        enabled = false,
        energy_required = 15,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"e_mk2", 1},
            {"battery", 165},
            {"advanced-circuit", 135},
            {"steel-plate", 170},
            {"iron-stick", 175},
            {type="fluid", name="lubricant", amount=450},
        },
        result = "e_mk3"
    },
    {
        type = "recipe",
        name = "e_mk4",
        enabled = false,
        energy_required = 20,
        hide_from_player_crafting = true,
        ingredients = {
            {"e_mk3", 1},
            {"battery", 205},
            {"plastic-bar", 190},
            {"steel-plate", 180},
            {"low-density-structure", 115},
        },
        result = "e_mk4"
    },
    {
        type = "recipe",
        name = "e_mk5",
        enabled = false,
        energy_required = 25,
        hide_from_player_crafting = true,
        ingredients = {
            {"e_mk4", 1},
            {"battery", 250},
            {"steel-plate", 250},
            {"processing-unit", 110},
            {"rocket-control-unit", 150},
            {"low-density-structure", 150},
        },
        result = "e_mk5"
    },
}
local compat = require("compatibilities/mods-compat")

compat.update_ingredients(recipes[1], {
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"solder", 50},
            ["steel-plate"] = {"tined-copper-cable", 110},
        }
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 140},

        }
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
    --SE-K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"steel-gear-wheel", 50},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"auromation-core", 20},
        }
    },
})
compat.update_ingredients(recipes[2], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-stick"] = {"invar-alloy", 150},
            ["steel-plate"] = {"cobalt-steel-bearing", 75},
            ["iron-gear-wheel"] = {"steel-bearing", 60},
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
--[[
    {
        dependencies = {"248k"},
        replacements = {
            {"", 55},
        }
    }
]]
    --SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 25},
            ["battery"] = {"motors", 25},
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
compat.update_ingredients(recipes[3], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 125},
            ["steel-plate"] = {"gilded-copper-cable", 200},
            ["iron-gear-wheel"] = {"invar-alloy", 155},
            ["lubricant"] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-stick"] = {"titanium-bearing", 75},
            {"titanium-plate", 125}
        }
    },
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"diamond", 6},
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
    -- SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["advanced-circuit"] = {"motors", 20},
            ["lubricant"] = {"", 0},
        }
    }, 
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"rare-metals", 20},
            ["lubricant"] = {"mineral-water", 100},
        }
    },
})
compat.update_ingredients(recipes[4], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"processing-unit", 120}
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            ["steel-plate"] = {"heat-shield-tile", 135},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"cobalt-steel-bearing", 120},
            ["battery"] = {"silver-zinc-battery", 150},
            {"tungsten-gear-wheel", 115},
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
    }
})
compat.update_ingredients(recipes[5], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 120},
            {"gilded-copper-cable", 90},
            {"insulated-cable", 660},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"copper-tungsten-alloy", 200},
            ["battery"] = {"tungsten-carbide", 200},
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
})
data:extend(recipes)