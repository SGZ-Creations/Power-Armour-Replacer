local recipes = {
    {
        type = "recipe",
        name = "l_mk1",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"electronic-circuit", 10},
            {"iron-plate", 25},
            {"copper-plate", 50},
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
            {"electronic-circuit", 10},
            {"iron-plate", 25},
            {"copper-plate", 50},
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
            {"electronic-circuit", 10},
            {"iron-plate", 25},
            {"copper-plate", 50},
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
            {"electronic-circuit", 10},
            {"iron-plate", 25},
            {"copper-plate", 50},
        },
        result = "l_mk4"
    },
    {
        type = "recipe",
        name = "l_mk5",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        ingredients = {
            {"l_mk4", 1},
            {"electronic-circuit", 10},
            {"iron-plate", 25},
            {"copper-plate", 50},
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
            {"electronic-circuit", 10},
            {"iron-plate", 25},
            {"copper-plate", 50},
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
            {"electronic-circuit", 10},
            {"iron-plate", 25},
            {"copper-plate", 50},
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
            {"electronic-circuit", 10},
            {"iron-plate", 25},
            {"copper-plate", 50},
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
            {"electronic-circuit", 10},
            {"iron-plate", 25},
            {"copper-plate", 50},
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
            {"electronic-circuit", 10},
            {"iron-plate", 25},
            {"copper-plate", 50},
        },
        result = "l_mk10"
    },
}
--[[local compat = require("compatibilities/mods-compat")

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