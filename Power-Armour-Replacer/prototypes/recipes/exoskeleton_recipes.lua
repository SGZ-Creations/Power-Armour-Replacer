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
            {"iron-gear-wheel", 104},
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
            {"electronic-circuit", 120},
            {"steel-plate", 140},
            {"iron-stick", 150},
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
            {"e_mk4", 1},
            {"battery", 209},
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
            {"processing-unit", 107},
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
        }
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 140},
            ["steel-plate"] = {"tined-copper-cable", 110},
        }
    },
    {
        dependencies = {"bobplates", "Darkstar_utilities_fixed"},
        replacements = {
            {"glass", 115}
        }
    },
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
            ["steel-plate"] = {"cobalt-steel-bearing", 125}
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            {"lithium-ion-battery", 55},
        }
    }
    --[[
    {
        dependencies = {"248k"},
        replacements = {
            {"", 55},
        }
    }
    ]]
})
compat.update_ingredients(recipes[3], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 125},
            ["steel-plate"] = {"gilded-copper-cable", 200},
            {"invar-alloy", 155},
            ["lubricant"] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-stick"] = {"titanium-bearing", 75},
            {"titanium-plate", 35}
        }
    },
    -- 248K
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
           ["battery"] = {"lithium-ion-battery", 55},
        }
    },
    -- SE K2
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
--[[
compat.update_ingredients(recipes[4], {
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
    }
})
--[[
compat.update_ingredients(recipes[5], {
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
    }
})
]]
data:extend(recipes)