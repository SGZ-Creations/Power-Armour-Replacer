local recipes = {
    {
        type = "recipe",
        name = "p-s_mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {"iron-plate", 10},
            {"copper-plate", 65},
            {"iron-stick", 35},
            {"electronic-circuit", 20},
        },
        result = "p-s_mk1"
    },
    {
        type = "recipe",
        name = "p-s_mk2",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"p-s_mk1", 1},
            {"copper-plate", 70},
            {"steel-plate", 50},
            {"electronic-circuit", 30},
        },
        result = "p-s_mk2"
    },
    {
        type = "recipe",
        name = "p-s_mk3",
        enabled = false,
        energy_required = 15,
        ingredients = {
            {"p-s_mk2", 1},
            {"battery", 30},
            {"steel-plate", 75},
            {"copper-plate", 40},
        },
        result = "p-s_mk3"
    },
    {
        type = "recipe",
        name = "p-s_mk4",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"p-s_mk3", 1},
            {"electronic-circuit", 135},
            {"advanced-circuit", 100},
            {"engine-unit", 120},
            {"battery", 150},
        },
        result = "p-s_mk4"
    },
    {
        type = "recipe",
        name = "p-s_mk5",
        enabled = false,
        energy_required = 25,
        ingredients = {
            {"p-s_mk4", 1},
            {"battery", 190},
            {"advanced-circuit", 110},
            {"sulfur", 123},
            {"steel-plate", 115},
        },
        result = "p-s_mk5"
    },
    {
        type = "recipe",
        name = "p-s_mk6",
        enabled = false,
        energy_required = 30,
        hide_from_player_crafting = true,
        ingredients = {
            {"p-s_mk5", 1},
            {"processing-unit", 60},
            {"engine-unit", 140},
            {"electric-engine-unit", 80},
            {"iron-stick", 300},
        },
        result = "p-s_mk6"
    },
    {
        type = "recipe",
        name = "p-s_mk7",
        enabled = false,
        energy_required = 35,
        hide_from_player_crafting = true,
        ingredients = {
            {"p-s_mk6", 1},
            {"plastic-bar", 140},
            {"processing-unit", 70},
            {"electric-engine-unit", 120},
            {"low-density-structure", 175},
        },
        result = "p-s_mk7"
    },
    {
        type = "recipe",
        name = "p-s_mk8",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"p-s_mk7", 1},
            {"copper-cable", 300},
            {"battery", 200},
            {"plastic-bar", 170},
            {"low-density-structure", 175},
        },
        result = "p-s_mk8"
    },
    {
        type = "recipe",
        name = "p-s_mk9",
        enabled = false,
        energy_required = 45,
        hide_from_player_crafting = true,
        category="crafting-with-fluid",
        ingredients = {
            {"p-s_mk8", 1},
            {"processing-unit", 123},
            {"rocket-control-unit", 175},
            {"low-density-structure", 175},
            {type="fluid", name="lubricant", amount=250},
        },
        result = "p-s_mk9"
    },
    {
        type = "recipe",
        name = "p-s_mk10",
        enabled = false,
        energy_required = 50,
        hide_from_player_crafting = true,
        category="crafting-with-fluid",
        ingredients = {
            {"p-s_mk9", 1},
            {"processing-unit", 144},
            {"rocket-control-unit", 200},
            {"low-density-structure", 200},
            {type="fluid", name="lubricant", amount=350},
        },
        result = "p-s_mk10"
    },
}

local util = require("compatibilities.util")

--Compatibility section
util.ingredient_prereq(recipes[1], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 40},
            ["copper-plate"] = {"tinned-copper-cable", 90}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-plate"] = {"glass", 50},
            ["iron-stick"] = {"lead-plate", 60},
            {"rubber", 30},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["electronic-circuit"] = {"bronze-beam", 20},
            ["iron-stick"] = {"tin-rod", 20},
            ["iron-plate"] = {"copper-pellet", 40},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 10},
        }
    },
})
util.ingredient_prereq(recipes[2], { 
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 50},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-plate"] = {"glass", 50},
            ["copper-plate"] = {"solder", 110},
            {"rubber", 50},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["electronic-circuit"] = {"bronze-plate-heavy", 20},
            ["copper-plates"] = {"tin-ingot", 50},
            ["steel-plate"] = {"copper-pellet", 40},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 20},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-plates"] = {"rare-metals", 30},
            ["steel-plate"] = {"steel-beam", 50},
        }
    },
})
util.ingredient_prereq(recipes[3], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["copper-plate"] = {"tinned-copper-cable", 50},
            ["battery"] = {"electronic-circuit", 40},
            {"insulated-cable", 140},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"steel-bearing", 30},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"steel-beam", 55},
        }
    },
})
util.ingredient_prereq(recipes[4], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"solder", 110},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"silicon-nitride", 50},
            ["engine-unit"] = {"nickel-plate", 80},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-silver", 100},
            {"glass", 150},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["engine-unit"] = {"electric-motor", 30},
        }
    },
})
util.ingredient_prereq(recipes[5], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["sulfur"] = {"gilded-copper-cable", 130},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"silcon", 200},
            ["steel-plate"] = {"brass-alloy", 70},
            {"insulated-cable", 125},
            {"lead-plate", 20},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["silcon"] = {"angels-mono-silcon", 200},
            ["steel-plate"] = {"angels-plate-chrome", 50},
        }
    },
})
util.ingredient_prereq(recipes[6], {
    --[[
    {
        dependencies = {"bobelectronics"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
        }
    },
    ]]
    {
        dependencies = {"bobplates"},
        replacements = {
            [""] = {"", 0},
            ["p-s_mk5"] = {"p-s_mk6", 1},
            {"lithium", 50},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            [""] = {"", 0},
            ["p-s_mk5"] = {"p-s_mk6", 1},
        }
    },
})
--[[
util.ingredient_prereq(recipes[7], {
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
            {"lithium", 50},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            [""] = {"", 0},
            [""] = {"", 0},
        }
    },
    
})
util.ingredient_prereq(recipes[8], {
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
})
util.ingredient_prereq(recipes[9], {
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
})
util.ingredient_prereq(recipes[10], {
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
})
]]
data:extend(recipes)