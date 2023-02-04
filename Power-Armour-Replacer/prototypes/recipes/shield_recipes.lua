local recipes = {
    {
        type = "recipe",
        name = "s_mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {"iron-plate", 106},
            {"stone-brick", 110},
            {"copper-plate", 150},
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
            {"iron-plate", 138},
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
            {"copper-cable", 225},
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
            {"small-lamp", 93},
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
            {"electronic-circuit", 150},
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
            {"advanced-circuit", 155},
            {type="fluid", name="sulfuric-acid", amount=350},
        },
        result = "s_mk10"
    },
}
local compat = require("compatibilities/mods-compat")
--Compatibility section
compat.update_ingredients(recipes[1], {
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
    }
    ]]
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"auromation-core", 30},
        }
    },
})
compat.update_ingredients(recipes[2], {
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
    }
]]  
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
    }
]]
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
            {"copper-cable", 70},
        }
    },
})
compat.update_ingredients(recipes[4], {
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
    }
]]
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
    }
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
    }
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
    }
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
]]
})
compat.update_ingredients(recipes[9], {
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
    }
]]
})
compat.update_ingredients(recipes[10], {
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
    }
]]
})
data:extend(recipes)
