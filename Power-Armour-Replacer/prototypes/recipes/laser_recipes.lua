local recipes = {
    {
        type = "recipe",
        name = "par-laser-mk1",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"electronic-circuit", 100},
            {"steel-plate", 100},
            {"iron-plate", 100},
            {"copper-plate", 100},
        },
        result = "par-laser-mk1"
    },
    {
        type = "recipe",
        name = "par-laser-mk2",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"par-laser-mk1", 1},
            {"electronic-circuit", 100},
            {"engine-unit", 15},
            {"copper-plate", 150},
        },
        result = "par-laser-mk2"
    },
    {
        type = "recipe",
        name = "par-laser-mk3",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"par-laser-mk2", 1},
            {"electronic-circuit", 100},
            {"battery", 45},
            {"steel-plate", 50},
            {"plastic-bar", 55},
        },
        result = "par-laser-mk3"
    },
    {
        type = "recipe",
        name = "par-laser-mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"par-laser-mk3", 1},
            {"pipe", 50},
            {"advanced-circuit", 100},
            {"iron-gear-wheel", 85},
        },
        result = "par-laser-mk4"
    },
    {
        type = "recipe",
        name = "par-laser-mk5",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"par-laser-mk4", 1},
            {"heat-pipe", 50},
            {"copper-cable", 200},
            {"plastic-bar", 120},
            {"sulfur", 80},
        },
        result = "par-laser-mk5"
    },
    {
        type = "recipe",
        name = "par-laser-mk6",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-laser-mk5", 1},
            {"heat-pipe", 150},
            {"sulfur", 150},
            {"processing-unit", 50},
            {"battery", 125},
            {"engine-unit", 100},
        },
        result = "par-laser-mk6"
    },
    {
        type = "recipe",
        name = "par-laser-mk7",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-laser-mk6", 1},
            {"low-density-structure", 60},
            {"advanced-circuit", 100},
            {"processing-unit", 100},
            {"electric-engine-unit", 70},
            {"copper-cable", 115},
        },
        result = "par-laser-mk7"
    },
    {
        type = "recipe",
        name = "par-laser-mk8",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-laser-mk7", 1},
            {"low-density-structure", 130},
            {"plastic-bar", 200},
            {"copper-cable", 300},
            {"processing-unit", 100},
            {"advanced-circuit", 100},
        },
        result = "par-laser-mk8"
    },
    {
        type = "recipe",
        name = "par-laser-mk9",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-laser-mk8", 1},
            {"rocket-control-unit", 60},
            {"low-density-structure", 180},
            {"processing-unit", 100},
            {"advanced-circuit", 100},
            {"sulfur", 150},
            {"plastic-bar", 300},
        },
        result = "par-laser-mk9"
    },
    {
        type = "recipe",
        name = "par-laser-mk10",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-laser-mk9", 1},
            {"rocket-control-unit", 100},
            {"low-density-structure", 200},
            {"processing-unit", 100},
            {"advanced-circuit", 100},
            {"steel-plate", 300},
            {"sulfur", 150},
        },
        result = "par-laser-mk10"
    },
}

local util = require("compatibilities.util")

--Compatibility section
util.ingredient_prereq(recipes[1], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 50},
            ["copper-plate"] = {"copper-cable", 110},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"steel-bearing", 50},
            {"rubber", 100},
            {"carbon", 100},
        }
    },
    {
        dependencies = {"bobplates", "bobelectronics"},
        replacements = {
            {"solder", 80},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["rubber"] = {"steel-gear-wheel", 40},
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
            --["electronic-circuit"] = {"", 0},
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
util.ingredient_prereq(recipes[2], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 60},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["engine-unit"] = {"lead-plate", 90},
            ["copper-plate"] = {"glass", 45},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"tinned-copper-cable", 80},
            {"insulated-cable", 80},
        }
    },
    --Bio-Industries--Angels
    {
        dependencies = {"Bio_Industries", "angelssmelting"},
        replacements = {
            ["insulated-cable"] = {"rubber", 50},
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
            ["electronic-circuit"] = {"", 0},
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
util.ingredient_prereq(recipes[3], {
    --Bob's
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["battery"] = {"insulated-cable", 120},
            {"electronic-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"invar-alloy", 60},
            ["plastic-bar"] = {"brass-alloy", 60},
            {"electronic-circuit", 150},
            {"glass", 130},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"heat-pipe", 5},
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
util.ingredient_prereq(recipes[4], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 200},
            ["pipe"] = {"nickel-plate", 250},
            ["iron-gear-wheel"] = {"brass-alloy", 90},
            {"carbon", 100},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"heat-pipe", 5},
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
        dependencies = {"Darkstar_utilities_fixed", "bobplates"},
        replacements = {
            ["nickel-plate"] = {"gold-plate", 75},
        }
    },
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"gold-plate", 75},
        }
    },
    --Clowns
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
util.ingredient_prereq(recipes[5], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"advanced-circuit", 250},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"ruby-5", 100},
            ["sulfur"] = {"silicon-wafer", 125},
            {"advanced-circuit", 250},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["heat-pipe"] = {"heat-pipe-2", 10},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"gilded-copper-cable", 200},
        }
    },
    --Angels
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

util.ingredient_prereq(recipes[6], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 250},
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
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"tinned-copper-cable", 120},
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
util.ingredient_prereq(recipes[7], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"insulated-cable", 100},
            {"processing-unit", 350},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electric-engine-unit"] = {"gunmetal-alloy", 200},
            {"cobalt-steel-gear-wheel", 40},
            {"emerald-5", 100},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            {"heat-shield-tile", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"gilded-copper-cable", 100},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {type="fluid", name="liquid-dimethylmercury", amount=100},
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
util.ingredient_prereq(recipes[8], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"insulated-cable", 250},
            {"processing-unit", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"titanium-plate", 250},
            ["copper-cable"] = {"tungsten-plate", 250},
            {"amethyst-5", 100},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            {"heat-shield-tile", 200},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["insulated-cable"] = {"angels-wire-platinum", 200},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {type="fluid", name="liquid-dimethylmercury", amount=200},
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
util.ingredient_prereq(recipes[9], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 200},
            ["advanced-circuit"] = {"rubber", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 200},
            ["advanced-circuit"] = {"aluminium-plate", 200},
            ["steel-plate"] = {"nitinol-bearing", 100},
            ["low-density-structure"] = {"nitinol-gear-wheel", 100},
            ["sulfur"] = {"topaz-5", 100},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            ["plastic-bar"] = {"heat-shield-tile", 300},
            {"heat-shield-tile", 300},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"copper-tungsten-alloy", 200},
            {"rubber", 100},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 250},
            {"clowns-plate-depleted-uranium", 250},
            {type="fluid", name="liquid-dimethylmercury", amount=300},
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
util.ingredient_prereq(recipes[10], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 200},
            ["advanced-circuit"] = {"insulated-cable", 300}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 200},
            ["steel-plate"] = {"cobalt-steel-alloy", 200},
            ["sulfur"] = {"tungsten-carbide", 100},
            ["advanced-circuit"] = {"nitinol-alloy", 100},
            {"nitinol-alloy", 100},
            {"diamond-5", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["insulated-cable"] = {"gilded-copper-cable", 100}
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            {"heat-shield-tile", 400},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-silver", 100},
            {"angels-wire-platinum", 100},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 250},
            {"clowns-plate-depleted-uranium", 250},
            {type="fluid", name="liquid-dimethylmercury", amount=400},
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
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["rocket-control-unit"] = {"matter-cube", 2},
        }
    },
})
data:extend(recipes)