local recipes = {
    {
        type = "recipe",
        name = "l_mk1",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"electronic-circuit", 100},
            {"steel-plate", 130},
            {"iron-plate", 135},
            {"copper-plate", 100},
        },
        result = "l_mk1"
    },
    {
        type = "recipe",
        name = "l_mk2",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"l_mk1", 1},
            {"electronic-circuit", 115},
            {"engine-unit", 45},
            {"copper-plate", 150},
        },
        result = "l_mk2"
    },
    {
        type = "recipe",
        name = "l_mk3",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"l_mk2", 1},
            {"electronic-circuit", 120},
            {"iron-plate", 125},
            {"battery", 45},
            {"green-wire", 55},
            {"red-wire", 55},
        },
        result = "l_mk3"
    },
    {
        type = "recipe",
        name = "l_mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"l_mk3", 1},
            {"pipe", 55},
            {"electronic-circuit", 135},
            {"iron-gear-wheel", 85},
        },
        result = "l_mk4"
    },
    {
        type = "recipe",
        name = "l_mk5",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"l_mk4", 1},
            {"heat-pipe", 50},
            {"copper-cable", 230},
            {"plastic-bar", 150},
            {"sulfur", 80},
        },
        result = "l_mk5"
    },
    {
        type = "recipe",
        name = "l_mk6",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"l_mk5", 1},
            {"heat-pipe", 150},
            {"sulfur", 160},
            {"advanced-circuit", 90},
            {"battery", 125},
            {"engine-unit", 100},
        },
        result = "l_mk6"
    },
    {
        type = "recipe",
        name = "l_mk7",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"l_mk6", 1},
            {"low-density-structure", 60},
            {"advanced-circuit", 160},
            {"electric-engine-unit", 70},
            {"copper-cable", 115},
        },
        result = "l_mk7"
    },
    {
        type = "recipe",
        name = "l_mk8",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"l_mk7", 1},
            {"low-density-structure", 130},
            {"plastic-bar", 230},
            {"copper-cable", 310},
            {"processing-unit", 65},
        },
        result = "l_mk8"
    },
    {
        type = "recipe",
        name = "l_mk9",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"l_mk8", 1},
            {"rocket-control-unit", 60},
            {"low-density-structure", 180},
            {"processing-unit", 100},
            {"plastic-bar", 280},
        },
        result = "l_mk9"
    },
    {
        type = "recipe",
        name = "l_mk10",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"l_mk9", 1},
            {"rocket-control-unit", 111},
            {"low-density-structure", 222},
            {"processing-unit", 145},
            {"steel-plate", 333},
        },  
        result = "l_mk10"
    },
}
local compat = require("compatibilities/mods-compat")
--Compatibility section
compat.update_ingredients(recipes[1], {
    {
        dependencies = {"bobplates", "bobelectronics"},
        replacements = {
            {"solder", 80},
        }
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 70},
            ["copper-plate"] = {"copper-cable", 110},

        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"steel-bearing", 50},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["iron-plate"] = {"glass", 20},
        }
    },
    {
        dependencies = {"Bio_Industries", "angelssmelting"},
        replacements = {
            {"rubber", 20},
        }
    },
    --Darkstar--Angels
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            {"angels-mono-silicon", 20},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["electronic-circuit"] = {"bronze-window", 20},
            ["copper-plate"] = {"copper-cable", 40},
            ["iron-plate"] = {"copper-pellet", 80},
            ["steel-plate"] = {"tin-gear-wheel", 20},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-plate"] = {"iron-beam", 25},
            ["steel-plate"] = {"steel-beam", 25},
            ["electronic-circuit"] = {"automation-core", 5},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
        }
    },
})
compat.update_ingredients(recipes[2], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 90},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["engine-unit"] = {"lead-plate", 90},
            ["copper-plate"] = {"glass", 45},
            {"tinned-copper-cable", 80},
        }
    },
    --Bio-Industries--Angels
    {
        dependencies = {"Bio_Industries", "angelssmelting"},
        replacements = {
            {"rubber", 40},
        }
    },
    --Darkstar--Angels
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            {"angels-mono-silicon", 40},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["electronic-circuit"] = {"bronze-window", 20},
            ["engine-unit"] = {"copper-motor", 20},
            ["copper-plate"] = {"copper-beam", 50},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"iron-beam", 25},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            --["electronic-circuit"] = {"automation-core", 10},
            ["engine-unit"] = {"motor", 20},
        }
    },
})
compat.update_ingredients(recipes[3], {
    -- Misc mod
    {
        dependencies = {"WireShortcuts"},
        replacements = {
            ["red-wire"] = {"iron-gear-wheel", 60},
            ["green-wire"] = {"steel-plate", 50},
        }
    },
    --Bob's
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["battery"] = {"insulated-cable", 120},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"nickel-plate", 200},
            ["iron-gear-wheel"] = {"brass-gear-wheel", 30},
            {"glass", 130},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["iron-plate"] = {"heat-pipe", 10},
        }
    },
    --SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-plate"] = {"iron-beam", 30},
            ["electronic-circuit"] = {"automation-core", 30},
            ["battery"] = {"electronic-components", 30},
        }
    },
})
compat.update_ingredients(recipes[4], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"solder", 50},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["pipe"] = {"nickel-plate", 250},
            ["iron-gear-wheel"] = {"brass-gear-wheel", 40},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"heat-pipe", 20},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphorus", 100},
        }
    },
    --248k
    {
        dependencies = {"248k"},
        replacements = {
            {"el_aluminum_item", 150},
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            ["el_aluminum_item"] = {"aluminium-plate", 150},
            {"lithium-ion-battery", 30},
        }
    },
--[[
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"", 0},
        }
    },
    ]]
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-plate"] = {"iron-beam", 30},
            ["battery"] = {"electronic-components", 50},
        }
    },
})
compat.update_ingredients(recipes[5], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["copper-cable"] = {"gilded-copper-cable", 200},
            {"advanced-circuit", 100},
            {"electronic-circuit", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"ruby-5", 100},
            ["sulfur"] = {"silicon-wafer", 125},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["heat-pipe"] = {"heat-pipe-2", 30},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 200},
            {"invar-alloy", 80},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphorus", 100},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"laser-core", 5},
        }
    },
})

compat.update_ingredients(recipes[6], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"tinned-copper-cable", 120},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["engine-unit"] = {"angels-plate-platinum", 100},
            {"gunmetal-alloy", 100},
            {"sapphire-5", 100},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["heat-pipe"] = {"heat-pipe-2", 40},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["sulfur"] = {"angels-plate-manganese", 50},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"solid-white-phosphorus", 200},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"laser-core", 5},
        }
    },
})
compat.update_ingredients(recipes[7], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["copper-cable"] = {"gilded-copper-cable", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electric-engine-unit"] = {"gunmetal-alloy", 200},
            {"emerald-5", 100},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            --{type="fluid", name="liquid-dimethylmercury", amount=100},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"laser-core", 5},
        }
    },
})
compat.update_ingredients(recipes[8], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["copper-cable"] = {"insulated-cable", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"titanium-plate", 250},
            {"tungsten-plate", 250},
            {"amethyst-5", 100},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            {"heat-shield-tile", 200},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
           ["insulated-cable"] = {"angels-wire-platinum", 200},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            --{type="fluid", name="liquid-dimethylmercury", amount=200},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"laser-core", 10},
        }
    },
})
compat.update_ingredients(recipes[9], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"advanced-processing-unit", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"nitinol-bearing", 50},
            ["low-density-structure"] = {"nitinol-gear-wheel", 50},
            {"topaz-5", 100},
        }
    },
    
    {
        dependencies = {"bobrevamp"},
        replacements = {
            ["plastic-bar"] = {"heat-shield-tile", 300},
            {"heat-shield-tile", 300},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"rubber", 100},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 250},
            {"clowns-plate-depleted-uranium", 250},
            --{type="fluid", name="liquid-dimethylmercury", amount=300},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"laser-core", 10},
        }
    },
})
compat.update_ingredients(recipes[10], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"cobalt-steel-plate", 200},
            {"tungsten-carbide", 100},
            {"diamond-5", 100},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            {"heat-shield-tile", 400},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"copper-tungsten-alloy", 200},
            {"angels-wire-silver", 100},
            {"angels-wire-platinum", 100},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 250},
            {"clowns-plate-depleted-uranium", 250},
            --{type="fluid", name="liquid-dimethylmercury", amount=400},
        }
    },
    {
        dependencies = {"extendedangels"},
        replacements = {
            {"titanium-concrete-brick", 100},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"laser-core", 10},
        }
    },
})
data:extend(recipes)