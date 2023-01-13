local recipes = {
    {
        type = "recipe",
        name = "a_mk1",
        enabled = false,
        total_raw = true,
        energy_required = 60.0,
        ingredients = {
            {"heavy-armor", 1},
            {"wood", 200},
            {"steel-plate", 100},
            {"electronic-circuit", 100}
        },
        result = "a_mk1",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "a_mk2",
        enabled = false,
        energy_required = 60.0,
        ingredients = {
            {"a_mk1", 1},
            {"copper-plate", 200},
            {"iron-gear-wheel", 150},
            {"steel-plate", 150},
            {"electronic-circuit", 200},
        },
        result = "a_mk2",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "a_mk3",
        enabled = false,
        energy_required = 60.0,
        ingredients = {
            {"a_mk2", 1},
            {"plastic-bar", 50},
            {"steel-plate", 175},
            {"engine-unit", 100},
            {"advanced-circuit", 125},
        },
        result = "a_mk3",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "a_mk4",
        enabled = false,
        
        energy_required = 60.0,
        ingredients = {
            {"a_mk3", 1},
            {"iron-gear-wheel", 150},
            {"engine-unit", 100},
            {"plastic-bar", 100},
            {"advanced-circuit", 125},
        },
        result = "a_mk4",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "a_mk5",
        enabled = false,
        energy_required = 70.0,
        ingredients = {
            {"a_mk4", 1},
            {"b_mk3", 15},
            {"advanced-circuit", 150},
            {"processing-unit", 100},
            {"uranium-235", 350},
        },
        result = "a_mk5",
    },
    {
        type = "recipe",
        name = "a_mk6",
        enabled = false,
        energy_required = 70.0,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk5", 1},
            --{"ps_mk3", 5},
            {type="fluid", name="petroleum-gas", amount=350},
            {"processing-unit", 150},
            {"red-wire", 100},
        },
        result = "a_mk6",
    },
    {
        type = "recipe",
        name = "a_mk7",
        enabled = false,
        energy_required = 70.0,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk6", 1},
            {"f_mk5", 5},
            {type="fluid", name="petroleum-gas", amount=700},
            {"green-wire", 100},
            {"rocket-control-unit", 50},
            {"low-density-structure", 75},
        },
        result = "a_mk7",
    },
    {
        type = "recipe",
        name = "a_mk8",
        enabled = false,
        energy_required = 70.0,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk7", 1},
            {"f_mk5", 10},
            {"b_mk7", 20},
            {type="fluid", name="lubricant", amount=350},
            {"low-density-structure", 125},
            
        },
        result = "a_mk8",
    },
    {
        type = "recipe",
        name = "a_mk9",
        enabled = false,
        energy_required = 70.0,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk8", 1},
            {"s_mk5", 5},
            {type="fluid", name="lubricant", amount=700},
            {"rocket-control-unit", 100},
            {"low-density-structure", 175},
        },
        result = "a_mk9",
    },
    {
        type = "recipe",
        name = "a_mk10",
        enabled = false,
        energy_required = 80.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk9", 1},
            {"s_mk8", 5},
            {"rocket-control-unit", 200},
            {"processing-unit", 250},
            {"low-density-structure", 250},
        },
        result = "a_mk10",
    },
}


local compat = require("compatibilities/mods-compat")

compat.update_ingredients(recipes[1], {
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["wood"] = {"solder", 100}, -- the first three are for replacing ingredients in the recipe
            ["electronic-circuit"] = {"basic-circuit-board", 75},
            {"tinned-copper-cable", 55} -- these two are for adding new ingredients to the recipe
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bronze-alloy", 50}
        }
    },
    --[[
    {
        settings.startup["the-setting"].value
        dependencies = {"bobenemies"},
        replacements = {
            {"alien-artifact", 50}
        }
    },
    ]]
})
compat.update_ingredients(recipes[2], {
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 65},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["copper-plate"] = {"invar-alloy", 50},
            ["iron-gear-wheel"] = {"silver-plate", 75},
            {"rubber", 15}
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["silver-plate"] = {"clay-brick", 100},
        }
    },
    {
        dependencies = {"angelspetrochem", "bobplates", "SeaBlockMetaPack"},
        replacements = {
            ["rubber"] = {"bronze-alloy", 75},
        }
    },
    --[[
    {
        settings.startup["the-setting"].value
        dependencies = {"bobenemies"},
        replacements = {
            {"alien-artifact", 50}
        }
    },
    ]]
})
compat.update_ingredients(recipes[3], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 100},
            {"basic-circuit-board", 50}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"zinc-plate", 50},
            ["steel-plate"] = {"aluminium-plate", 150},
            ["engine-unit"] = {"cobalt-steel-alloy", 100},
            {"rubber", 35}
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["cobalt-steel-alloy"] = {"lead-plate", 100},
            ["zinc-plate"] = {"brass-alloy", 35},
        }
    },
    {
        dependencies = {"angelspetrochem", "SeaBlockMetaPack", "bobplates"},
        replacements = {
            ["rubber"] = {"clay-brick", 150},
            {"steel-plate", 100}
        }
    },
    {
        dependencies = {"248k", "bobplates", "angelssmelting"},
        replacements = {
            ["lead-plate"] = {"battery", 30},
        }
    },
    {
        dependencies = {"248k", "bobplates"},
        replacements = {
            ["aluminium-plate"] = {"el_aluminum_item", 150},
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            ["el_aluminum_item"] = {"aluminium-plate", 150},
            ["cobalt-steel-alloy"] = {"lithium-ion-battery", 30},
        }
    },
})
compat.update_ingredients(recipes[4], {
    {
        dependencies = {"bobplates"},
        replacements = {
            {"cobalt-steel-alloy", 150},
            {"invar-alloy", 100},
        }
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"electronic-circuit", 100},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["iron-gear-wheel"] = {"angels-wire-silver", 55},
            ["cobalt-steel-alloy"] = {"solder", 200},
            ["engine-unit"] = {"concrete-brick", 135},
        }
    },
    --[[
    {
        settings.startup["the-setting"].value
        dependencies = {"bobenemies"},
        replacements = {
            {"alien-artifact", 50}
        }
    },
    ]]
})

compat.update_ingredients(recipes[5], {
    {
        dependencies = {"bobwarfare"},
        replacements = {
            ["uranium-235"] = {"heavy-armor-2", 1}
        }
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"electronic-circuit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            {"aluminium-plate", 50},
            {"sapphire-5", 50},
            {"ruby-5", 50},
        }
    },
    --[[
    {
        settings.startup["the-setting"].value
        dependencies = {"bobenemies"},
        replacements = {
            {"alien-artifact", 50}
        }
    },
    ]]
})

compat.update_ingredients(recipes[6], {
    
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["rocket-control-unit"] = {"advanced-circuit", 200},
            ["processing-unit"] = {"electronic-circuit", 250}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["red-wire"] = {"titanium-plate", 200},
            {"sapphire-5", 100},
            {"ruby-5", 100},

        }
    },
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["processing-unit"] = {"plastic-bar", 100},
            {"gilded-copper-cable", 55},
        }
    },
    --[[
    {
        settings.startup["the-setting"].value
        dependencies = {"bobenemies"},
        replacements = {
            {"alien-artifact", 50}
        }
    },
    ]]
})

compat.update_ingredients(recipes[7], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["nuclear-fuel"] = {"processing-unit", 100},
            ["f_mk5"] = {"advanced-circuit", 300}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["green-wire"] = {"ceramic-bearing", 200},
            ["rocket-control-unit"] = {"tungsten-plate", 250},
            ["low-density-structure"] = {"cobalt-steel-bearing", 200},
            {"sapphire-5", 50},
            {"ruby-5", 50},
            {"emerald-5", 50},
            {"amethyst-5", 50},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["rocket-control-unit"] = {"tungsten-plate", 250},
            {"glass", 50}

        }
    },
    --[[
    {
        settings.startup["the-setting"].value
        dependencies = {"bobenemies"},
        replacements = {
            {"alien-artifact", 50}
        }
    },
    ]]
})

compat.update_ingredients(recipes[8], {
    
    {
        dependencies = {"bobwarfare"},
        replacements = {
            ["f_mk5"] = {"heavy-armor-3", 1}
        }
    },
    {
        dependencies = {"bobrevamp", "bobplates"},
        replacements = {
            {"heat-shield-tile", 200},
        }
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"processing-unit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["b_mk7"] = {"copper-tungsten-alloy", 200},
            {"silver-zinc-battery", 100},
            {"sapphire-5", 100},
            {"ruby-5", 100},
            {"emerald-5", 100},
            {"amethyst-5", 100},
        }
    },
    --[[
    {
        settings.startup["the-setting"].value
        dependencies = {"bobenemies"},
        replacements = {
            {"alien-artifact", 50}
        }
    },
    ]]
})

compat.update_ingredients(recipes[9], {
    
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["rocket-control-unit"] = {"advanced-processing-unit", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["low-density-structure"] = {"tungsten-carbide", 250},
            {"sapphire-5", 50},
            {"ruby-5", 50},
            {"emerald-5", 50},
            {"amethyst-5", 50},
            {"topaz-5", 50},
            {"diamond-5", 50},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["low-density-structure"] = {"tungsten-carbide", 250},
            {"reinforced-concrete-brick", 200},
        }
    },
    --[[
    {
        settings.startup["the-setting"].value
        dependencies = {"bobenemies"},
        replacements = {
            {"alien-artifact", 50}
        }
    },
    ]]
})
compat.update_ingredients(recipes[10], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 200},
            {"advanced-processing-unit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            {"sapphire-5", 100},
            {"ruby-5", 100},
            {"emerald-5", 100},
            {"amethyst-5", 100},
            {"topaz-5", 100},
            {"diamond-5", 100},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["s_mk8"] = {"cobalt-steeel-alloy", 215},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 500},
            {"clowns-plate-depleted-uranium", 500},
        }
    },
    --[[
    {
        settings.startup["the-setting"].value
        dependencies = {"bobenemies"},
        replacements = {
            {"alien-artifact", 50}
        }
    },
    ]]
})
data:extend(recipes)