
    local recipes = {
    {
        type = "recipe",
        name = "par-nightvision-mk1",
        enabled = false,
        energy_required = 10,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"iron-gear-wheel", 100},
            {"battery", 5},
            {"small-lamp", 10},
            {"electronic-circuit", 30},
            {type="fluid", name="lubricant", amount=200},
        },
        result = "par-nightvision-mk1"
    },
    {
        type = "recipe",
        name = "par-nightvision-mk2",
        enabled = false,
        energy_required = 20,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-nightvision-mk1", 1},
            {"nuclear-fuel", 10},
            {"advanced-circuit", 55},
            {"low-density-structure", 25},
            {"processing-unit", 40},
            {type="fluid", name="petroleum-gas", amount=250},
        },
        result = "par-nightvision-mk2"
    },
}

local util = require("compatibilities.util")

util.ingredient_prereq(recipes[1], { --nvg_mk1
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"electronic-circuit", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["small-lamp"] = {"steel-bearing", 50},
            ["iron-gear-wheel"] = {"carbon", 35},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"tinned-copper-cable", 50},
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
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["engine-unit"] = {"iron-motor", 20},
            ["small-lamp"] = {"copper-gate", 20},
            ["iron-gear-wheel"] = {"copper-cable-heavy", 10},
            ["lubricant"] = {"", 0},
        }
    },
    -- SE-K2
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
            --["electronic-circuit"] = {"automation-core", 15},
            ["lubricant"] = {"", 0},
        }
    },
})
util.ingredient_prereq(recipes[2], { --nvg_mk2
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"insulated-cable", 240},
            ["processing-unit"] = {"rubber", 200},
            ["nuclear-fuel"] = {"advanced-processing-unit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"advanced-processing-unit", 200},
            ["nuclear-fuel"] = {"titanium-plate", 200},
            ["processing-unit"] = {"copper-tungsten-alloy", 200},
            {"copper-tungsten-alloy", 200},
            {"titanium-plate", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 260},
        }
    },
    {
        dependencies = {"bobrevamp", "bobplates"},
        replacements = {
            ["petroleum-gas"] = {"dinitrogen-tetroxide", 300},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 300},
        }
    },
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            ["dinitrogen-tetroxide"] = {"liquid-polyethylene", 300},
            ["petroleum-gas"] = {"liquid-polyethylene", 300},
        }
    },
    --248K
    {
        dependencies = {"248k"},
        replacements = {
            ["nuclear-fuel"] = {"el_aluminium_item", 100},
            --[""] = {"", 0},
        }
    }
})
data:extend(recipes)