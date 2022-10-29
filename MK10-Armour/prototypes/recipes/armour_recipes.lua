local recipes = {
    {
        type = "recipe",
        name = "a_mk1",
        enabled = false,
        energy_required = 60.0,
        ingredients = {
            {"heavy-armor", 1},
            {"engine-unit", 100},
            {"steel-plate", 100},
            {"electronic-circuit", 50}
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
            {"plastic-bar", 100},
            {"engine-unit", 50},
            {"steel-plate", 150},
            {"electronic-circuit", 100},
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
            {"solid-fuel", 50},
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
            {"solid-fuel", 100},
            {"low-density-structure", 55},
            {"uranium-235", 250},
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
            {"solid-fuel", 200},
            {"processing-unit", 200},
            {"advanced-circuit", 150},
            {"uranium-235", 350},
        },
        result = "a_mk5",
    },
    {
        type = "recipe",
        name = "a_mk6",
        enabled = false,
        energy_required = 70.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk5", 1},
            --{"ps_mk3", 5},
            {"solid-fuel", 300},
            {"rocket-control-unit", 50},
            {"processing-unit", 150},
            {"rocket-fuel", 55},
        },
        result = "a_mk6",
    },
    {
        type = "recipe",
        name = "a_mk7",
        enabled = false,
        energy_required = 70.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk6", 1},
            {"f_mk5", 5},
            --{"l_mk3", 5},
            {"nuclear-fuel", 20},
            {"beacon", 10},
            {"nuclear-reactor", 25},
        },
        result = "a_mk7",
    },
    {
        type = "recipe",
        name = "a_mk8",
        enabled = false,
        energy_required = 70.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk7", 1},
            {"f_mk5", 10},
            {"electric-furnace", 10},
            {"submachine-gun", 15},
            {"nuclear-reactor", 25},
            
        },
        result = "a_mk8",
    },
    {
        type = "recipe",
        name = "a_mk9",
        enabled = false,
        energy_required = 70.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk8", 1},
            {"s_mk5", 5},
            {"assembling-machine-3", 10},
            {"rocket-control-unit", 10},
            {"nuclear-reactor", 25},
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
            {"rocket-silo", 5},
            {"centrifuge", 15},
            {"fast-transport-belt", 35},
        },
        result = "a_mk10",
    },
}


local compat = require("compatibilities/mods-compat")

compat.update_ingredients(recipes[1], {
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["engine-unit"] = {"solder", 100}, -- the first three are for replacing ingredients in the recipe
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
            ["plastic-bar"] = {"invar-alloy", 50},
            ["engine-unit"] = {"silver-plate", 75},
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
            ["solid-fuel"] = {"zinc-plate", 50},
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
compat.update_ingredients(recipes[4], {
    {
        dependencies = {"bobplates"},
        replacements = {
            {"cobalt-steel-alloy", 150},
            {"invar", 100},
        }
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"electronic-circuit", 100},
        }
    },
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            ["solid-fuel"] = {"plastic-bar", 120},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["low-density-structure"] = {"angels-wire-silver", 55},
            ["cobalt-steel-alloy"] = {"solder", 200},
            ["uranium-235"] = {"concrete-brick", 135},
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
            ["solid-fuel"] = {"aluminium-plate", 50},
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
            ["solid-fuel"] = {"titanium-plate", 200},
            {"sapphire-5", 100},
            {"ruby-5", 100},

        }
    },
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["rocket-fuel"] = {"plastic-bar", 100},
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
            ["beacon"] = {"ceramic-bearing", 200},
            ["nuclear-reactor"] = {"tungsten-plate", 250},
            {"sapphire-5", 50},
            {"ruby-5", 50},
            {"emerald-5", 50},
            {"amethyst-5", 50},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["nuclear-reactor"] = {"tungsten-plate", 250},
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
        dependencies = {"bobrevamp"},
        replacements = {
            ["electric-furnace"] = {"heat-shield-tile", 200},
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
            ["submachine-gun"] = {"silver-zinc-battery", 100},
            ["nuclear-reactor"] = {"copper-tungsten-alloy", 200},
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
            ["nuclear-reactor"] = {"tungsten-carbide", 250},
            {"sapphire-5", 50},
            {"ruby-5", 50},
            {"emerald-5", 50},
            {"amethyst-5", 50},
            {"topaz-5", 50},
            {"diamond-5", 50},
        }
    },
    {
        dependencies = {"bobassembly"},
        replacements = {
            ["assembling-machine-3"] = {"assembling-machine-5", 10},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["nuclear-reactor"] = {"tungsten-carbide", 250},
            ["assembling-machine-5"] = {"reinforced-concrete-brick", 200},
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
            ["centrifuge"] = {"advanced-circuit", 200},
            {"advanced-processing-unit", 150},
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["fast-transport-belt"] = {"ultimate-transport-belt", 40},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["rocket-silo"] = {"rocket-control-unit", 250},
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
            ["rocket-silo"] = {"rocket-control-unit", 200},
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