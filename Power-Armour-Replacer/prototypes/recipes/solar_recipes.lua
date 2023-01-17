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
            {"b_mk1", 2},
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
            {"copper-plate", 46},
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
            {"advanced-circuit", 134},
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
            {"advanced-circuit", 134},
            {"engine-unit", 142},
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
            {"plastic-bar", 124},
            {"electric-engine-unit", 136},
            {"plastic-bar", 140},
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
            {"battery", 233},
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
local compat = require("compatibilities/mods-compat")
--[[
compat.update_ingredients(recipes[1], {
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
        dependencies = {"angelssmelting"},
        replacements = {
            ["__"] = {"", 100},
            ["--"] = {"", 35},
        }
    }
})
compat.update_ingredients(recipes[3], {
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