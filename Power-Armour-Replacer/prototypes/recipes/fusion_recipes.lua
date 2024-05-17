local recipes = {
    {
        type = "recipe",
        name = "par-fusion-reactor-mk1",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"electronic-circuit", 50},
            {"steel-plate", 100},
            {"copper-plate", 100},
            {"stone-brick", 50},
        },
        result = "par-fusion-reactor-mk1"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk2",
        enabled = false,
        energy_required = 45,
        ingredients = {
            {"par-fusion-reactor-mk1", 1},
            {"iron-plate", 95},
            {"copper-cable", 165},
            {"electronic-circuit", 60},
        },
        result = "par-fusion-reactor-mk2"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk3",
        enabled = false,
        energy_required = 50,
        ingredients = {
            {"par-fusion-reactor-mk2", 1},
            {"battery", 10},
            {"electronic-circuit", 120},
            {"solid-fuel", 50},
        },
        result = "par-fusion-reactor-mk3"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk4",
        enabled = false,
        energy_required = 55,
        ingredients = {
            {"par-fusion-reactor-mk3", 1},
            {"advanced-circuit", 20},
            {"copper-plate", 50},
            {"engine-unit", 40},
            {"steel-plate", 100},
        },
        result = "par-fusion-reactor-mk4"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk5",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {"par-fusion-reactor-mk4", 1},
            {"battery", 20},
            {"plastic-bar", 50},
            {"engine-unit", 50},
            {"advanced-circuit", 50},
        },
        result = "par-fusion-reactor-mk5"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk6",
        enabled = false,
        energy_required = 65,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-fusion-reactor-mk5", 1},
            {"plastic-bar", 100},
            {"processing-unit", 50},
            {"advanced-circuit", 80},
            {"uranium-fuel-cell", 100},
            {"electric-engine-unit", 65},
        },
        result = "par-fusion-reactor-mk6"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk7",
        enabled = false,
        energy_required = 70,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-fusion-reactor-mk6", 1},
            {"electric-engine-unit", 100},
            {"processing-unit", 50},
            {"advanced-circuit", 100},
            {"pipe", 80},
        },
        result = "par-fusion-reactor-mk7"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk8",
        enabled = false,
        energy_required = 75,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-fusion-reactor-mk7", 1},
            {"sulfur", 50},
            {"advanced-circuit", 100},
            {"processing-unit", 100},
            {"low-density-structure", 100},
        },
        result = "par-fusion-reactor-mk8"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk9",
        enabled = false,
        energy_required = 80,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-fusion-reactor-mk8", 1},
            {"nuclear-fuel", 55},
            {"processing-unit", 150},
            {"rocket-control-unit", 30},
            {"low-density-structure", 250},
            {type="fluid", name="petroleum-gas", amount=200}
        },
        result = "par-fusion-reactor-mk9"
    },
    {
        type = "recipe",
        name = "par-fusion-reactor-mk10",
        enabled = false,
        energy_required = 85,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-fusion-reactor-mk9", 1},
            {"battery", 100},
            {"processing-unit", 200},
            {"rocket-control-unit", 30},
            {"low-density-structure", 250},
        },
        result = "par-fusion-reactor-mk10"
    },
}

local util = require("compatibilities.util")

--Compatibility section
util.ingredient_prereq(recipes[1], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 50},
            {"insulated-cable", 50},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"steel-bearing", 75},
        }
    },
    {
        dependencies = {"bobplates", "bobelectronics",},
        replacements = {
            ["copper-plate"] = {"tinned-copper-cable", 55},
            {"solder", 40},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 115},
            {"glass", 35},
        }
    },
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            ["silicon"] = {"angels-mono-silicon", 50},
            {"glass", 35},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["electronic-circuit"] = {"copper-rotor", 20},
            ["steel-plate"] = {"glass", 40},
            ["copper-plate"] = {"copper-cable", 50},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"iron-beam", 40},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            --["electronic-circuit"] = {"automation-core", 4},
        }
    },
})
util.ingredient_prereq(recipes[2], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 100},
            {"rubber", 60},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 100},
            ["iron-plate"] = {"silver-plate", 20},
            {"glass", 30},
            {"rubber", 60},
        }
    },
    {
        dependencies = {"bobplates", "bobelectronics",},
        replacements = {
            ["copper-plate"] = {"tinned-copper-cable", 120},
            {"solder", 50},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 100},
            {"glass", 100},
            {"lead", 100},
        }
    },
    --Anegels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["silver-plate"] = {"lead-plate", 40},
        }
    },
    -- SeaBlock-
    {
        dependencies = {"SeaBlockMetaPack", "bobplates"},
        replacements = {
            ["rubber"] = {"bronze-alloy", 60},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["electronic-circuit"] = {"iron-frame-small", 30},
            ["iron-plate"] = {"", 0},
            ["copper-cable"] = {"bronze-plate-heavy", 50},
            {"rubber", 50},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"iron-beam", 40},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            --["electronic-circuit"] = {"automation-core", 10},
        }
    },
})
util.ingredient_prereq(recipes[3], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["solid-fuel"] = {"insulated-cable", 180},
            ["electronic-circuit"] = {"electronic-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 150},
            {"brass-alloy", 100},
            {"invar-alloy", 65},
            {"silver-plate", 70},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"solder", 50}
        }
    },
    --Anegels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["brass-alloy"] = {"angels-silver-wire", 120},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            {"motor", 20},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["solid-fuel"] = {"rare-metals", 35},
            ["electronic-circuit"] = {"automation-core", 30},
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
            ["steel-plate"] = {"invar-alloy", 70},
            ["engine-unit"] = {"silicon-wafer", 100},
            {"silver-plate", 60},
            {"nickel-plate", 80},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"solder", 90},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed", "bobplates"},
        replacements = {
            ["nickel-plate"] = {"gold-plate", 100}
        }
    },
    {
        dependencies = {"Darkstar_utilities_fixed", "bobplates"},
        replacements = {
            {"gold-plate", 100}
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-silver-wire", 135},
        }
    },
})
util.ingredient_prereq(recipes[5], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"insulated-cable", 100},
            ["advanced-circuit"] = {"advanced-circuit", 250},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["engine-unit"] = {"aluminium-plate", 100},
            ["advanced-circuit"] = {"advanced-circuit", 250},
            {"brass-alloy", 150},
            {"ceramic-bearing", 80},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 150},
            {"angels-silver-wire", 135},
            {"brass-alloy", 150},
        }
    },
})

util.ingredient_prereq(recipes[6],
{
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 300},
            ["processing-unit"] = {"insulated-cable", 100},
            ["uranium-fuel-cell"] = {"resin", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"lithium", 50},
            ["advanced-circuit"] = {"advanced-circuit", 300},
            ["uranium-fuel-cell"] = {"cobalt-steel-bearing", 250},
            ["electric-engine-unit"] = {"titanium-plate", 150},
            {"cobalt-steel-bearing", 250},
            {"zinc-plate", 150},
            {"lithium-ion-battery", 150},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-manganese", 100},
        }
    },
})
util.ingredient_prereq(recipes[7],
{
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"rubber", 300},
            ["processing-unit"] = {"processing-unit", 350},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["pipe"] = {"heat-pipe-3", 20},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 350},
            ["advanced-circuit"] = {"silver-plate", 200},
            ["electric-engine-unit"] = {"lithium-ion-battery", 175},
            ["pipe"] = {"cobalt-steel-bearing", 350},
            {"cobalt-steel-bearing", 350},
            {"silver-plate", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["heat-pipe-3"] = {"gilded-copper-cable", 50},
            {"gilded-copper-cable", 50},
        }
    },
    {
        dependencies = {"bobplates", "bobrevamp"},
        replacements = {
            {"rtg", 40},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-silver", 100},
            {"angels-wire-platinum", 100},
        }
    },
})
util.ingredient_prereq(recipes[8],
{
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"insulated-cable", 350},
            ["sulfur"] = {"processing-unit", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["sulfur"] = {"processing-unit", 400},
            ["advanced-circuit"] = {"titanium-plate", 200},
            ["insulated-cable"] = {"silicon-nitride", 100},
            {"titanium-plate", 200},
            {"tungsten-plate", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"solder", 100},
            {"tinned-copper-cable", 100},
        }
    },
    {
        dependencies = {"bobplates", "bobrevamp"},
        replacements = {
            {"rtg", 40},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["titanium-plate"] = {"reinforced-concrete-brick", 100},
        }
    },
})
util.ingredient_prereq(recipes[9],
{
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 450},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["nuclear-fuel"] = {"heat-pipe-4", 20},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 450},
            ["petroleum-gas"] = {"ammonia", 200},
            ["low-density-structure"] =  {"nitinol-alloy", 100},
            ["nuclear-fuel"] =  {"tungsten-carbide", 100},
            {"invar-alloy", 200},
            {"tungsten-carbide", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"solder", 100},
        }
    },
    {
        dependencies = {"bobplates", "bobrevamp"},
        replacements = {
            {"rtg", 40},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["ammonia"] = {"gas-monochloramine", 100},
            {"uranium-234", 20},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 100},
            {"clowns-plate-magnesium", 100},
            {"clowns-plate-depleted-uranium", 100},
        }
    },
})
util.ingredient_prereq(recipes[10],
{
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 500},
            ["battery"] = {"silver-zinc-battery", 200},
            {"copper-tungsten-alloy", 200},
            {"nitinol-bearing", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 200},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-platinum", 200},
            {"silver-oxite", 100},
            {"uranium-234", 20},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-depleted-uranium", 200},
            {"clowns-plate-magnesium", 200},
            {"clowns-plate-osmium", 200},
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