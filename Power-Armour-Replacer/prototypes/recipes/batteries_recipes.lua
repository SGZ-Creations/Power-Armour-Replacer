local recipes = {
    {
        type = "recipe",
        name = "b_mk1",
        enabled = false,
        energy_required = 25,
        ingredients = {
            {"small-electric-pole", 10},
            {"steel-plate", 20},
            {"electronic-circuit", 10},
            {"copper-cable", 50},
        },
        result = "b_mk1"
        
    },
    {
        type = "recipe",
        name = "b_mk2",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {"b_mk1", 1},
            {"electronic-circuit", 15},
            {"copper-plate", 35},
            {"battery", 20},
        },
        result = "b_mk2"
    },
    {
        type = "recipe",
        name = "b_mk3",
        enabled = false,
        energy_required = 35,
        ingredients = {
            {"b_mk2", 1},
            {"electronic-circuit", 25},
            {"advanced-circuit", 40},
            {"battery", 30},
            {"steel-plate", 50},
        },
        result = "b_mk3"
    },
    {
        type = "recipe",
        name = "b_mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"b_mk3", 1},
            {"electronic-circuit", 15},
            {"advanced-circuit", 20},
            {"copper-cable", 150},
            {"steel-plate", 75},
            {"battery", 40},
        },
        result = "b_mk4"
    },
    {
        type = "recipe",
        name = "b_mk5",
        enabled = false,
        energy_required = 45,
        ingredients = {
            {"b_mk4", 1},
            {"advanced-circuit", 120},
            {"low-density-structure", 75},
            {"steel-plate", 125},
            {"battery", 60},
        },
        result = "b_mk5"
    },
    {
        type = "recipe",
        name = "b_mk6",
        enabled = false,
        energy_required = 50,
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk5", 1},
            {"advanced-circuit", 125},
            {"low-density-structure", 150},
            {"steel-plate", 140},
            {"plastic-bar", 135},
            {"battery", 70},
        },
        result = "b_mk6"
    },
    {
        type = "recipe",
        name = "b_mk7",
        enabled = false,
        energy_required = 55,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk6", 1},
            {"battery", 80},
            {"plastic-bar", 65},
            {"advanced-circuit", 40},
            {type="fluid", name="lubricant", amount=300},
        },
        result = "b_mk7"
    },
    {
        type = "recipe",
        name = "b_mk8",
        enabled = false,
        energy_required = 60,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk7", 1},
            {"battery", 90},
            {"rocket-control-unit", 65},
            {"processing-unit", 50},
            {type="fluid", name="water", amount=500},
        },
        result = "b_mk8"
    },
    {
        type = "recipe",
        name = "b_mk9",
        enabled = false,
        energy_required = 65,
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk8", 1},
            {"battery", 100},
            {"plastic-bar", 135},
            {"processing-unit", 50},
            {"rocket-control-unit", 95},
            {"low-density-structure", 175},
        },
        result = "b_mk9"
    },
    {
        type = "recipe",
        name = "b_mk10",
        enabled = false,
        energy_required = 70,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"b_mk9", 1},
            {"battery", 40},
            {"rocket-control-unit", 135},
            {"low-density-structure", 200},
            {type="fluid", name="sulfuric-acid", amount=150},
        },
        result = "b_mk10"
    },
}

local compat = require("compatibilities/mods-compat")

compat.update_ingredients(recipes[1], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["small-electric-pole"] = {"resin", 25},
        }
    },
    {
        dependencies = {"248k"},
        replacements = {
            {"battery", 25},
        }
    },
})
--[[
compat.update_ingredients(recipes[2], {
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
        dependencies = {"248k"},
        replacements = {
            {"battery", 50},
        }
    },
})
compat.update_ingredients(recipes[3], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"", 100},
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
    {
        dependencies = {"248k"},
        replacements = {
            {"lithium-ion-battery", 30},
        }
    },
})
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
compat.update_ingredients(recipes[6], {
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
compat.update_ingredients(recipes[7], {
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
compat.update_ingredients(recipes[8], {
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
compat.update_ingredients(recipes[9], {
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
compat.update_ingredients(recipes[10], {
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