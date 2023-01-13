local recipes = {
    {
        type = "recipe",
        name = "r_mk1",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"iron-chest", 5},
            {"electronic-circuit", 75},
            {"copper-cable", 150},
            {"small-lamp", 2},
        },
        result = "r_mk1"
    },
    {
        type = "recipe",
        name = "r_mk2",
        enabled = false,
        energy_required = 20,
        category = "crafting-with-fluid",
        ingredients = {
            {"r_mk1", 1},
            {"electronic-circuit", 100},
            {"iron-gear-wheel", 125},
            {type="fluid", name="steam", amount=250},
        },
        result = "r_mk2"
    },
    {
        type = "recipe",
        name = "r_mk3",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {"r_mk2", 1},
            {"electronic-circuit", 125},
            {"engine-unit", 80},
            {"iron-plate", 100},
        },
        result = "r_mk3"
    },
    {
        type = "recipe",
        name = "r_mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"r_mk3", 1},
        },
        result = "r_mk4"
    },
    {
        type = "recipe",
        name = "r_mk5",
        enabled = false,
        energy_required = 50,
        ingredients = {
            {"r_mk4", 1},
        },
        result = "r_mk5"
    },
    {
        type = "recipe",
        name = "r_mk6",
        enabled = false,
        energy_required = 60,
        hide_from_player_crafting = true,
        ingredients = {
            {"r_mk5", 1},
        },
        result = "r_mk6"
    },
    {
        type = "recipe",
        name = "r_mk7",
        enabled = false,
        energy_required = 70,
        hide_from_player_crafting = true,
        ingredients = {
            {"r_mk6", 1},
        },
        result = "r_mk7"
    },
    {
        type = "recipe",
        name = "r_mk8",
        enabled = false,
        energy_required = 80,
        hide_from_player_crafting = true,
        ingredients = {
            {"r_mk7", 1},
        },
        result = "r_mk8"
    },
    {
        type = "recipe",
        name = "r_mk9",
        enabled = false,
        energy_required = 90,
        hide_from_player_crafting = true,
        ingredients = {
            {"r_mk8", 1},
        },
        result = "r_mk9"
    },
    {
        type = "recipe",
        name = "r_mk10",
        enabled = false,
        energy_required = 100,
        hide_from_player_crafting = true,
        ingredients = {
            {"r_mk9", 1},
        },
        result = "r_mk10"
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