local recipes = {
    {
        type = "recipe",
        name = "e_mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {"copper-plate", 100},
            {"electronic-circuit", 25},
            {"steel-plate", 20},
            {"iron-stick", 25},
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
            {"battery", 20},
            {"steel-plate", 40},
            {"iron-stick", 50},
        },
        result = "e_mk2"
    },
    {
        type = "recipe",
        name = "e_mk3",
        enabled = false,
        energy_required = 15,
        hide_from_player_crafting = true,
        ingredients = {
            {"e_mk2", 1},
            {"battery", 30},
            {"steel-plate", 60},
            {"iron-stick", 75},
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
            {"battery", 40},
            {"steel-plate", 80},
            {"iron-stick", 100},
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
            {"battery", 50},
            {"steel-plate", 100},
            {"iron-stick", 125},
        },
        result = "e_mk5"
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
        dependencies = {"angelssmelting"},
        replacements = {
            ["__"] = {"", 100},
            ["--"] = {"", 35},
        }
    }
})
--[[
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