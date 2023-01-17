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
            {"advanced-circuit", 50},
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
]]--
data:extend(recipes)