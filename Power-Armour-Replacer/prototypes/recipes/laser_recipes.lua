local recipes = {
    {
        type = "recipe",
        name = "l_mk1",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"electronic-circuit", 109},
            {"steel-plate", 130},
            {"iron-plate", 137},
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
            {"electronic-circuit", 125},
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
            {"electronic-circuit", 129},
            {"iron-plate", 125},
            {"battery", 165},
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
            {"electronic-circuit", 141},
            {"iron-gear-wheel", 179},
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
            {"heat-pipe", 67},
            {"copper-cable", 236},
            {"plastic-bar", 147},
            {"sulfur", 81},
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
            {"heat-pipe", 152},
            {"sulfur", 163},
            {"advnaced-circuit", 91},
            {"battery", 126},
            {"engine-unit", 96},
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
            {"low-density-structure", 66},
            {"advanced-circuit", 179},
            {"electric-engine-unit", 77},
            {"coper-cable", 111},
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
            {"low-density-structure", 133},
            {"plastic-bar", 236},
            {"copper-cable", 312},
            {"processing-unit", 67},
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
            {"rocket-control-unit", 56},
            {"low-density-structure", 188},
            {"processing-unit", 99},
            {"plastic-bar", 277},
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
            {"processing-unit", 144},
            {"steel-plate", 355},
        },  
        result = "l_mk10"
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
]]
compat.update_ingredients(recipes[3], {
    {
        dependencies = {"WireShortcuts"},
        replacements = {
            ["red-wire"] = {"iron-gear-wheel", 105},
            ["green-wire"] = {"steel-plate", 105},
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