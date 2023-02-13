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
            {"solder", 100},
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
            ["steel-plate"] = {"steel-bearing", 80},
        }
    },
    -- Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["iron-plate"] = {"steel-gear-wheel", 50},
        }
    },
    --SE K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-plate"] = {"iron-beam", 25},
            ["steel-plate"] = {"steel-beam", 25},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"automation-core", 4},
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
    --SE K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"iron-beam", 25},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"automation-core", 4},
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
            ["battery"] = {"basic-circuit-board", 100},
            ["iron-gear-wheel"] = {"insulated-cable", 120},
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
    --SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"", 0},
            ["battery"] = {"electronic-components", 30},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-plate"] = {"iron-beam", 30},
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
            ["pipe"] = {"ruby-5", 50},
            ["iron-gear-wheel"] = {"brass-gear-wheel", 40},
        }
    },
--[[
    --SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"", 0},
            ["battery"] = {"electronic-components", 50},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-plate"] = {"iron-beam", 30},
        }
    },
]]
})
compat.update_ingredients(recipes[5], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["copper-cable"] = {"gilded-copper-cable", 200},
            {"advanced-circuit", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"sapphire-5", 50},
            ["sulfur"] = {"silicon-wafer", 125},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 200},
            {"invar-alloy", 80},
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
--[[
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
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"laser-core", 10},
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
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"laser-core", 15},
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
        }
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"laser-core", 20},
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
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"laser-core", 25},
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
    },
    --Darkstar
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"laser-core", 30},
        }
    },
})
]]
data:extend(recipes)