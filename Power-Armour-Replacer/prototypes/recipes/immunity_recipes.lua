local recipes = {
    {
        type = "recipe",
        name = "par-belt-immunity-mk1",
        enabled = false,
        energy_required = 10,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {type="fluid", name="lubricant", amount=200},
            {"electronic-circuit", 30},
            {"steel-plate", 55},
            {"battery", 5},
        },
        result = "par-belt-immunity-mk1"
    },
    {
        type = "recipe",
        name = "par-belt-immunity-mk2",
        enabled = false,
        energy_required = 20,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-belt-immunity-mk1", 1},
            {type="fluid", name="sulfuric-acid", amount=150},
            {"nuclear-fuel", 10},
            {"low-density-structure", 25},
            {"sulfur", 30},
        },
        result = "par-belt-immunity-mk2"
    },
}

local util = require("compatibilities.util")

--Compatibility section
util.ingredient_prereq(recipes[1], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
			{"electronic-circuit", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"steel-bearing", 150},
            {"carbon", 40},
        }
    },
    -- Angels
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            ["lubricant"] = {"hydrogen", 250},
        }
    },
    --248K
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
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["engine-unit"] = {"iron-motor", 20},
            ["battery"] = {"copper-gate", 20},
            ["steel-plate"] = {"copper-cable-heavy", 10},
            ["lubricant"] = {"", 0},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 20},
            ["lubricant"] = {"mineral-water", 100},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            --["electronic-circuit"] = {"automation-core", 10},
            ["lubricant"] = {"", 0},
        }
    },
})

util.ingredient_prereq(recipes[2], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["nuclear-fuel"] = {"advanced-processing-unit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["nuclear-fuel"] = {"advanced-processing-unit", 200},
            ["sulfur"] = {"tungsten-plate", 200},
            {"cobalt-steel-alloy", 200},
        }
    },
    {
        dependencies = {"bobrevamp", "bobplates"},
        replacements = {
            ["sulfuric-acid"] = {"dinitrogen-tetroxide", 300},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 260},
        }
    },
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
            ["sulfuric-acid"] = {"liquid-polyethylene", 300},
        }
    },
    --248K
    {
        dependencies = {"248k"},
        replacements = {
            ["nuclear-fuel"] = {"el_aluminium_item", 100},
            [""] = {"", 0},
        }
    }
})
data:extend(recipes)