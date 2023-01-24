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
            {"small-lamp", 31},
        },
        result = "r_mk1"
    },
    {
        type = "recipe",
        name = "r_mk2",
        enabled = false,
        energy_required = 20,
        
        ingredients = {
            {"r_mk1", 1},
            {"electronic-circuit", 100},
            {"iron-gear-wheel", 125},
            {"copper-cable", 176},
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
            {"engine-unit", 140},
            {"steel-plate", 167},
            {"iron-gear-wheel", 173},
            {"electronic-circuit", 132},
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
            {"steel-chest", 30},
            {"flying-robot-frame", 65},
            {"b_mk3", 3},
        },
        result = "r_mk5"
    },
    {
        type = "recipe",
        name = "r_mk6",
        enabled = false,
        energy_required = 60,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"r_mk5", 1},
            {"advanced-circuit", 82},
            {"electric-engine-unit", 128},
            {"steel-plate", 231},
            {type="fluid", name="lubricant", amount=300},
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
            {"processing-unit", 117},
            {"p-s_mk5", 5},
            {"iron-stick", 272},
            {"low-density-structure", 57},
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
            {"low-density-structure", 128},
            {"steel-plate", 268},
            {"copper-cable", 321},
            {"uranium-235", 162},
        },
        result = "r_mk8"
    },
    {
        type = "recipe",
        name = "r_mk9",
        enabled = false,
        energy_required = 90,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"r_mk8", 1},
            {"rocket-control-unit", 82},
            {"low-density-structure", 143},
            {"advanced-circuit", 157},
            {type="fluid", name="lubricant", amount=600},
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
            {"low-density-structure", 196},
            {"rocket-control-unit", 164},
            {"processing-unit", 171},
        },
        result = "r_mk10"
    },
}

local compat = require("compatibilities/mods-compat")
--[[
compat.update_ingredients(recipes[1], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            [""] = {"", 10},
            [""] = {"", 10},
            [""] = {"", 10},
        }
    },
})
compat.update_ingredients(recipes[2], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            [""] = {"", 10},
            [""] = {"", 10},
            [""] = {"", 10},
        }
    }   }
    }
})
compat.update_ingredients(recipes[3], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            [""] = {"", 10},
            [""] = {"", 10},
            [""] = {"", 10},
        }
    }
})
compat.update_ingredients(recipes[4], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            [""] = {"", 10},
            [""] = {"", 10},
            [""] = {"", 10},
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