local recipes = {
    {
        type = "recipe",
        name = "s_mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {"iron-plate", 106},
            {"stone-brick", 110},
            {"copper-plate", 130},
            {"electronic-circuit", 120},
        },
        result = "s_mk1"
    },
    {
        type = "recipe",
        name = "s_mk2",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"s_mk1", 5},
            {"electronic-circuit", 130},
            {"engine-unit", 60},
            {"steel-plate", 160},
            {"iron-plate", 140},
        },
        result = "s_mk2"
    },
    {
        type = "recipe",
        name = "s_mk3",
        enabled = false,
        energy_required = 15,
        ingredients = {
            {"s_mk2", 2},
            {"electronic-circuit", 160},
            {"advanced-circuit", 45},
            {"copper-cable", 155},
        },
        result = "s_mk3"
    },
    {
        type = "recipe",
        name = "s_mk4",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"s_mk3", 5},
            {"small-lamp", 90},
            {"plastic-bar", 50},
            {"advanced-circuit", 65},
        },
        result = "s_mk4"
    },
    {
        type = "recipe",
        name = "s_mk5",
        enabled = false,
        energy_required = 25,
        ingredients = {
            {"s_mk4", 2},
            {"electric-engine-unit", 55},
            {"advanced-circuit", 90},
            {"plastic-bar", 90},
        },
        result = "s_mk5"
    },
    {
        type = "recipe",
        name = "s_mk6",
        enabled = false,
        energy_required = 30,
        hide_from_player_crafting = true,
        ingredients = {
            {"s_mk5", 50},
            {"f_mk3", 5},
            {"p-s_mk4", 3},
            {"uranium-235", 80},
        },
        result = "s_mk6"
    },
    {
        type = "recipe",
        name = "s_mk7",
        enabled = false,
        energy_required = 35,
        hide_from_player_crafting = true,
        ingredients = {
            {"s_mk6", 2},
            {"copper-plate", 165},
            {"uranium-238", 120},
            {"low-density-structure", 105},
            {"solid-fuel", 250},
        },
        result = "s_mk7"
    },
    {
        type = "recipe",
        name = "s_mk8",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"s_mk7", 3},
            {"uranium-235", 120},
            {"plastic-bar", 124},
            {"processing-unit", 80},
            {type="fluid", name="lubricant", amount=350},
        },
        result = "s_mk8"
    },
    {
        type = "recipe",
        name = "s_mk9",
        enabled = false,
        energy_required = 45,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"s_mk8", 2},
            {"b_mk8", 6},
            {"low-density-structure", 180},
            {"uranium-235", 55},
            {type="fluid", name="petroleum-gas", amount=350},
        },
        result = "s_mk9"
    },
    {
        type = "recipe",
        name = "s_mk10",
        enabled = false,
        energy_required = 50,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"s_mk9", 2},
            {"rocket-control-unit", 75},
            {"processing-unit", 130},
            {"low-density-structure", 155},
            {type="fluid", name="sulfuric-acid", amount=350},
        },
        result = "s_mk10"
    },
}
local compat = require("compatibilities/mods-compat")
--Compatibility section
compat.update_ingredients(recipes[1], {

    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 60},
            ["copper-plate"] = {"solder", 60},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["stone-brick"] = {"rubber", 90},
            ["iron-plate"] = {"tinned-copper-cable", 65}
        }
    },
    --Darkstar
    {
        dependencies = {"bobplates", "Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 115},
            {"glass", 70},
        }
    },
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            ["silicon"] = {"angels-mono-silicon", 90},
            {"glass", 70},
        }
    },
    --[[
    -- Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["__"] = {"", 100},
            ["--"] = {"", 35},
        }
    },
    ]]
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"automation-core", 15},
        }
    },
})
compat.update_ingredients(recipes[2], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 75},
            ["engine-unit"] = {"insulated-cable", 180},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"steel-bearing", 50},
        }
    },
    --Darkstar
    {
        dependencies = {"bobplates", "Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 115},
            {"glass", 95},
        }
    },
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            ["silicon"] = {"angels-mono-silicon", 90},
            {"glass", 95},
        }
    },
--[[
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["__"] = {"", 100},
            ["--"] = {"", 35},
        }
    },
]]  --SE-K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["engine-unit"] = {"rare-metals", 40},
            ["steel-plate"] = {"steel-gear-wheel", 40},
            ["iron-plate"] = {"iron-beam", 40},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 20},
        }
    },
})
compat.update_ingredients(recipes[3], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"insulated-cable", 240},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"tinned-copper-cable", 50},
            {"rubber", 35}
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"leaded-glass", 95},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["copper-plate"] = {"bronze-alloy", 100},
            {"invar-alloy", 90},
        }
    },
    --SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["advanced-circuit"] = {"electronic-components", 30},
            ["electronic-circuit"] = {"atomation-core", 40},
        }
    }, 
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-cable"] = {"rare-metals", 60},
        }
    },
})
compat.update_ingredients(recipes[4], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["small-lamp"] = {"insulated-cable", 240},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"silver-plate", 100},
            ["plastic-bar"] = {"brass-alloy", 100},
            ["steel-plate"] = {"silicon-nitride", 60},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"leaded-glass", 95},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["silver-plate"] = {"angels-silver-wire", 150},
        }
    },
    --248K
--[[
    {
        dependencies = {"248k"},
        replacements = {
            {"", 55},
        }
    },
]]
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            {"aluminium-plate", 100},
            --["el-aluminium-item"] = {"aluminium-plate", 35},
        }
    },
  --SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["advanced-circuit"] = {"electronic-components", 30},
            ["plastic-bar"] = {"electronic-circuit", 50},
        }
    }, 
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["small-lamp"] = {"silicon", 65},
        }
    },
})
compat.update_ingredients(recipes[5], {
    --[[
    {
        dependencies = {"bobelectronics"},
        replacements = {
            [""] = {"", 100},
            {"", 50}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["-"] = {"", 50},
            {"---", 35}
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["__"] = {"", 100},
            ["--"] = {"", 35},
        }
    },
    --[[
    ----SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["advanced-circuit"] = {"electronic-components", 30},
            ["plastic-bar"] = {"electronic-circuit", 50},
        }
    }, 
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["small-lamp"] = {"silicon", 65},
        }
    },
]]
})
compat.update_ingredients(recipes[6], {
    --[[
    {
        dependencies = {"bobelectronics"},
        replacements = {
            [""] = {"", 100},
            {"", 50}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["-"] = {"", 50},
            {"---", 35}
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["__"] = {"", 100},
            ["--"] = {"", 35},
        }
    },
]]
})
compat.update_ingredients(recipes[7], {
    --[[
    {
        dependencies = {"bobelectronics"},
        replacements = {
            [""] = {"", 100},
            {"", 50}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["-"] = {"", 50},
            {"---", 35}
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["__"] = {"", 100},
            ["--"] = {"", 35},
        }
    },
]]
})
compat.update_ingredients(recipes[8], {
    --[[
    {
        dependencies = {"bobelectronics"},
        replacements = {
            [""] = {"", 100},
            {"", 50}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["-"] = {"", 50},
            {"silicon-wafer", 70},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["__"] = {"", 100},
            ["--"] = {"", 35},
        }
    },
]]
})
compat.update_ingredients(recipes[9], {
--[[
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 100},
            {"", 50}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["-"] = {"", 50},
            {"---", 35}
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["__"] = {"", 100},
            ["--"] = {"", 35},
        }
    },
]]
})
compat.update_ingredients(recipes[10], {
    --[[
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"", 100},
            {"", 50}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["-"] = {"", 50},
            {"---", 35}
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["__"] = {"", 100},
            ["--"] = {"", 35},
        }
    },
]]
})
data:extend(recipes)
