local recipes = {
    {
        type = "recipe",
        name = "bi_mk1",
        enabled = false,
        energy_required = 10,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {type="fluid", name="lubricant", amount=200},
            {"electronic-circuit", 50},
            {"steel-plate", 55},
            {"battery", 5},
        },
        result = "bi_mk1"
    },
    {
        type = "recipe",
        name = "bi_mk2",
        enabled = false,
        energy_required = 20,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"bi_mk1", 1},
            {type="fluid", name="sulfuric-acid", amount=150},
            {"f_mk5", 2},
            {"low-density-structure", 25},
            {"sulfur", 30},
        },
        result = "bi_mk2"
    },
    {
        type = "recipe",
        name = "nv_mk1",
        enabled = false,
        energy_required = 10,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"iron-gear-wheel", 100},
            {"copper-cable", 100},
            {"small-lamp", 10},
            {"electronic-circuit", 35},
            {type="fluid", name="lubricant", amount=200},
        },
        result = "nv_mk1"
    },
    {
        type = "recipe",
        name = "nv_mk2",
        enabled = false,
        energy_required = 20,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"nv_mk1", 1},
            {"f_mk5", 2},
            {"advanced-circuit", 55},
            {"processing-unit", 40},
            {type="fluid", name="petroleum-gas", amount=250},
        },
        result = "nv_mk2"
    },
}
local compat = require("compatibilities/mods-compat")
--Compatibility section
compat.update_ingredients(recipes[1], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"steel-bearing", 150},
        }
    },
    -- Angels
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            ["lubricant"] = {"hydrogen", 250},
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
        ["battery"] = {"lithium-ion-battery", 35},
        }
    },
    {
        dependencies = {"248k"},
        replacements = {
        ["battery"] = {"el_lithium_battery", 35},
        }
    },
    --SE K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 20},
            ["lubricant"] = {"mineral-water", 100},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"automation-core", 10},
            ["lubricant"] = {"", 0},
        }
    },
})
--[[
compat.update_ingredients(recipes[2], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["f_mk5"] = {"", 100},
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
    {
        dependencies = {"248k"},
        replacements = {
            ["f_mk5"] = {"el_aluminium_item", 100},
            ["--"] = {"", 35},
        }
    }
})
]]
compat.update_ingredients(recipes[3], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"tinned-copper-cable", 50},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["small-lamp"] = {"steel-bearing", 50},
            ["iron-gear-wheel"] = {"carbon", 35},
        }
    },
    -- Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["copper-cable"] = {"angels-wire-silver", 100},
            {"silicon-wafers", 45},
        }
    },
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            ["lubricant"] = {"hydrogen", 250},
            ["carbon"] = {"solid-carbon", 150},
        }
    },
    -- SE K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 25},
            ["small-lamp"] = {"iron-beam", 25},
            ["lubricant"] = {"mineral-water", 100},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"automation-core", 15},
            ["lubricant"] = {"", 0},
        }
    },
})
--[[
compat.update_ingredients(recipes[4], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["f_mk5"] = {"", 100},
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
    {
        dependencies = {"248k"},
        replacements = {
            ["f_mk5"] = {"el_aluminium_item", 100},
            ["--"] = {"", 35},
        }
    }
})
]]
data:extend(recipes)