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
            {"electronic-circuit", 30},
            {"steel-plate", 55},
            {"battery", 5},
        },
        result = "bi_mk1"
    },
    --Recipe 2
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
            {"nuclear-fuel", 10},
            {"low-density-structure", 25},
            {"sulfur", 30},
        },
        result = "bi_mk2"
    },
    --Recipe 3
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
            {"electronic-circuit", 30},
            {type="fluid", name="lubricant", amount=200},
        },
        result = "nv_mk1"
    },
    --Recipe 4
    {
        type = "recipe",
        name = "nv_mk2",
        enabled = false,
        energy_required = 20,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"nv_mk1", 1},
            {"nuclear-fuel", 10},
            {"advanced-circuit", 55},
            {"processing-unit", 40},
            {type="fluid", name="petroleum-gas", amount=250},
        },
        result = "nv_mk2"
    },
}

local util = require("compatibilities.util")

--Compatibility section
util.ingredient_prereq(recipes[1], { --bi_mk1
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

util.ingredient_prereq(recipes[2], { --bi_mk2
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["nuclear-fuel"] = {"processing-unit", 100},
            {"advanced-processing-unit", 100},
            {"gilded-copper-cable", 260},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["sulfuric-acid"] = {"dinitrogen-tetroxide", 300},
            ["sulfur"] = {"tungsten-plate", 200},
            {"cobalt-steel-alloy", 200},
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

util.ingredient_prereq(recipes[3], { --nvg_mk1
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
util.ingredient_prereq(recipes[4], { --nvg_mk2
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"gilded-copper-cable", 260},
            {"insulated-cable", 240},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["nuclear-fuel"] = {"advanced-processing-unit", 100},
            ["petroleum-gas"] = {"dinitrogen-tetroxide", 300},
            {"titanium-plate", 200},
            {"copper-tungsten-alloy", 200}
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
            [""] = {"", 0},
        }
    }
})
data:extend(recipes)