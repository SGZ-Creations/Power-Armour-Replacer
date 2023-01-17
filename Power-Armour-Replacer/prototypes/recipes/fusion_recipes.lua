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
            {"p-s_mk1", 2},
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
            {"copper-cable", 182},
            {"electronic-circuit", 66},
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
            {"electronic-circuit", 134},
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
            {"advanced-circuit", 44},
            {"engine-unit", 51},
            {"steel-plate", 110}
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
            {"advanced-circuit", 88},
            {"engine-unit", 40},
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
            {"low-density-struture", 100},
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