local recipes = {
    {
        type = "recipe",
        name = "f_mk1",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"electronic-circuit", 44},
            {"steel-plate", 140},
            {"copper-plate", 150},
            {"stone-bricks", 20},
        },
        result = "f_mk1"
    },
    {
        type = "recipe",
        name = "f_mk2",
        enabled = false,
        energy_required = 45,
        ingredients = {
            {"f_mk1", 1},
            {"iron-plate", 95},
            {"copper-cable", 165},
            {"electronic-circuit", 60},
        },
        result = "f_mk2"
    },
    {
        type = "recipe",
        name = "f_mk3",
        enabled = false,
        energy_required = 50,
        ingredients = {
            {"f_mk2", 1},
            {"b_mk1", 3},
            {"electronic-circuit", 120},
            {"solid-fuel", 50},
        },
        result = "f_mk3"
    },
    {
        type = "recipe",
        name = "f_mk4",
        enabled = false,
        energy_required = 55,
        ingredients = {
            {"f_mk3", 1},
            {"advanced-circuit", 40},
            {"engine-unit", 40},
            {"steel-plate", 110},
        },
        result = "f_mk4"
    },
    {
        type = "recipe",
        name = "f_mk5",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {"f_mk4", 1},
            {"b_mk3", 5},
            {"advanced-circuit", 80},
            {"engine-unit", 50},
        },
        result = "f_mk5"
    },
    {
        type = "recipe",
        name = "f_mk6",
        enabled = false,
        energy_required = 65,
        hide_from_player_crafting = true,
        ingredients = {
            {"f_mk5", 1},
            {"advanced-circuit", 182},
            {"electric-engine-unit", 64},
            {"uranium-fuel-cell", 150},
            {"plastic-bar", 132},
        },
        result = "f_mk6"
    },
    {
        type = "recipe",
        name = "f_mk7",
        enabled = false,
        energy_required = 70,
        hide_from_player_crafting = true,
        ingredients = {
            {"f_mk6", 1},
            {"electric-engine-unit", 97},
            {"advanced-circuit", 75},
            {"pipe", 80},
        },
        result = "f_mk7"
    },
    {
        type = "recipe",
        name = "f_mk8",
        enabled = false,
        energy_required = 75,
        hide_from_player_crafting = true,
        ingredients = {
            {"f_mk7", 1},
            {"p-s_mk7", 4},
            {"advanced-circuit", 75},
            {"processing-unit", 105},
            {"low-density-structure", 100},
        },
        result = "f_mk8"
    },
    {
        type = "recipe",
        name = "f_mk9",
        enabled = false,
        energy_required = 80,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"f_mk8", 1},
            {"processing-unit", 165},
            {"nuclear-fuel", 55},
            {type="fluid", name="petroleum-gas", amount=200}
        },
        result = "f_mk9"
    },
    {
        type = "recipe",
        name = "f_mk10",
        enabled = false,
        energy_required = 85,
        hide_from_player_crafting = true,
        ingredients = {
            {"f_mk9", 1},
            {"s_mk5", 5},
            {"p-s_mk7", 6},
            {"processing-unit", 195},
            {"low-density-structure", 250},
        },
        result = "f_mk10"
    },
}
local compat = require("compatibilities/mods-compat")
--Compatibility section
compat.update_ingredients(recipes[1], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 75},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"steel-bearing", 75},
            ["copper-plate"] = {"tinned-copper-cable", 55},
            {"solder", 40},
            {"rubber", 40},
        }
    },
    --Darkstar
    {
        dependencies = {"bobplates", "Darkstar_utilities_fixed"},
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
compat.update_ingredients(recipes[2], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 100},
            ["copper-cable"] = {"tinned-copper-cable", 120},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-plate"] = {"silver-plate", 20},
            {"rubber", 60},
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
            ["iron-plate"] = {"iron-window", 30},
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
compat.update_ingredients(recipes[3], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["solid-fuel"] = {"insulated-cable", 180},
            {"solder", 50}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["b_mk1"] = {"brass-alloy", 100},
            {"invar-alloy", 65},
            {"silver-plate", 70},
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
            ["b_mk1"] = {"motor", 20},
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
compat.update_ingredients(recipes[4], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 55},
            {"solder", 90},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"invar-alloy", 70},
            {"silver-plate", 60},
            {"nickel-plate", 80},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-silver-wire", 135},
        }
    },
})
compat.update_ingredients(recipes[5], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"insulated-cable", 100},
            {"gilded-copper-cable", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["b_mk3"] = {"brass-alloy", 150},
            {"ceramic-bearing", 80},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["b_mk3"] = {"angels-plate-chrome", 150},
            {"angels-silver-wire", 135},
            {"brass-alloy", 150},
        }
    },
})

compat.update_ingredients(recipes[6], {
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
            {"cobalt-steel-bearing", 50},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-manganese", 100},
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
            ["f_mk6"] = {"f_mk7", 1},
            [""] = {"", 0},
            {"cobalt-steel-bearing", 50},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["f_mk6"] = {"f_mk7", 1},
            [""] = {"", 0},
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
            ["f_mk7"] = {"f_mk8", 1},
            [""] = {"", 0},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["f_mk7"] = {"f_mk8", 1},
            [""] = {"", 0},
        }
    },
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
            ["f_mk8"] = {"f_mk9", 1},
            [""] = {"", 0},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["f_mk8"] = {"f_mk9", 1},
            [""] = {"", 0},
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
            ["f_mk9"] = {"f_mk10", 1},
            [""] = {"", 0},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["f_mk9"] = {"f_mk10", 1},
            [""] = {"", 0},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            ["nuclear-fuel"] = {"clowns-plate-depleted-uranium", 200},
            {"clowns-plate-magnesium", 200},
            {"clowns-plate-osmium", 200},
        }
    },
})
data:extend(recipes)