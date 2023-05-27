local recipes = {
    {
        type = "recipe",
        name = "a_mk1",
        enabled = false,
        total_raw = true,
        energy_required = 100.0,
        ingredients = {
            {"heavy-armor", 1},
            {"stone-brick", 50},
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
        energy_required = 100.0,
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
        energy_required = 100.0,
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
        
        energy_required = 100.0,
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
        energy_required = 100.0,
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
        energy_required = 100.0,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"a_mk5", 1},
            {"p-s_mk3", 5},
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
        energy_required = 100.0,
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
        energy_required = 100.0,
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
        energy_required = 100.0,
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
        energy_required = 100.0,
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
--Compatibility section
compat.update_ingredients(recipes[1], {
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["wood"] = {"solder", 100}, -- the first three are for replacing ingredients in the recipe
            ["electronic-circuit"] = {"basic-circuit-board", 55},
            ["steel-plate"] = {"rubber", 20},
            ["stone-brick"] = {"glass", 100},
            {"tinned-copper-cable", 55} -- these two are for adding new ingredients to the recipe
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact", 100}
        }
    },
    {
        dependencies = {"bobplates", "Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 100},
        }
    },
    -- Angels
    {
        dependencies = {"bobplates", "angelssmelting"},
        replacements = {
            ["wood"] = {"solder", 100},
            ["stone-brick"] = {"lead-plate", 100},
        }
    },
    -- SeaBlock
    {
        dependencies = {"SeaBlockMetaPack", "bobplates"},
        replacements = {
            ["rubber"] = {"copper-plate", 100},
        }
    },
    --SEK2 as long is it don't mark mod as incompatible for no reason.
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"steel-gear-wheel", 45},
            ["electronic-circuit"] = {"automation-core", 10},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
        }
    },
})
compat.update_ingredients(recipes[2], {
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 75},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["copper-plate"] = {"bronze-alloy", 75},
            ["iron-gear-wheel"] = {"silver-plate", 75},
            ["steel-plate"] = {"steel-bearing", 155},
            {"rubber", 20},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact", 200}
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting",},
        replacements = {
            ["silver-plate"] = {"basic-electronic-componenets", 100},
            ["rubber"] = {"iron-gear-wheel", 40},
        }
    },
    {
        dependencies = {"angelssmelting", "EarlyTrainsUpdated"},
        replacements = {
            ["basic-electronic-componenets"] = {"engine-unit", 10},
        }
    },
    {
        dependencies = {"Bio_Industries", "angelssmelting"},
        replacements = {
            ["iron-gear-wheel"] = {"rubber", 20},
        }
    },
    --Darkstar
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            ["bronze-alloy"] = {"angels-mono-silicon", 100},
        }
    },
    --SeaBlock
    {
        dependencies = {"angelspetrochem", "bobplates", "SeaBlockMetaPack"},
        replacements = {
            ["rubber"] = {"bronze-alloy", 75},
        }
    },
    --SEK2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"steel-gear-wheel", 50},
            ["electronic-circuit"] = {"automation-core", 16},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            
        }
    },
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
            {"rubber", 60},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact", 300},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact-red", 100},
        }
    },
    -- Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["cobalt-steel-alloy"] = {"lead-plate", 100},
            ["zinc-plate"] = {"clay-brick", 125},
        }
    },
    {
        dependencies = {"angelspetrochem", "SeaBlockMetaPack", "bobplates"},
        replacements = {
            ["rubber"] = {"glass", 125},
            {"steel-plate", 100}
        }
    },
    --248K
    {
        dependencies = {"248k", "bobplates", "angelssmelting"},
        replacements = {
            ["lead-plate"] = {"battery", 30},
        }
    },
    {
        dependencies = {"248k"},
        replacements = {
            {"el_aluminum_item", 150},
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
    --SEK2
    {
        dependencies = {"space-exploration"},
        replacements = {
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["engine-unit"] = {"rare-metals", 50},
            ["advanced-circuit"] = {"electronic-components", 55},
        }
    },
})
compat.update_ingredients(recipes[4], {
    {
        dependencies = {"bobplates"},
        replacements = {
            ["engine-unit"] = {"silicon", 160},
            ["iron-gear-wheel"] = {"gunmetal-alloy", 120},
            {"cobalt-steel-alloy", 150},
            {"invar-alloy", 100},
        }
    },
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 100},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact", 400},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact-red", 200},
        }
    },
    -- Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["gunmetal-alloy"] = {"angels-wire-silver", 55},
            ["cobalt-steel-alloy"] = {"solder", 200},
            ["engine-unit"] = {"concrete-brick", 135},
            ["plastic-bar"] = {"insulated-cable", 180},
        }
    },
    -- SE K2
    {
        dependencies = {"space-exploration"},
        replacements = {
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["engine-unit"] = {"rare-metals", 60},
            ["advanced-circuit"] = {"electronic-components", 65},
        }
    },
})

compat.update_ingredients(recipes[5], {
    {
        dependencies = {"bobwarfare"},
        replacements = {
            ["uranium-235"] = {"heavy-armor-2", 1},
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
            ["b_mk3"] = {"aluminium-plate", 50},
            {"sapphire-5", 50},
            {"ruby-5", 50},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact", 500},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact-red", 300},
        }
    },
})

compat.update_ingredients(recipes[6], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"advanced-circuit", 250},
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
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact", 600},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact-red", 400},
        }
    },
    {
        dependencies = {"bobenemies", "bobplates"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["processing-unit"] = {"plastic-bar", 100},
            {"gilded-copper-cable", 55},
        }
    },
    {
        dependencies = {"WireShortcuts"},
        replacements = {
            ["red-wire"] = {"steel-plate", 100},
        }
    },
})

compat.update_ingredients(recipes[7], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["f_mk5"] = {"advanced-circuit", 300},
            {"processing-unit", 100},
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
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact", 700},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact-red", 500},
        }
    },
    {
        dependencies = {"bobenemies", "bobplates"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["rocket-control-unit"] = {"tungsten-plate", 250},
            {"glass", 50},

        }
    },
    {
        dependencies = {"WireShortcuts"},
        replacements = {
            ["green-wire"] = {"steel-plate", 100},
        }
    },
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
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact", 800},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact-red", 600},
        }
    },
    {
        dependencies = {"bobenemies", "bobplates"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
        }
    },
})

compat.update_ingredients(recipes[9], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["rocket-control-unit"] = {"processing-unit", 100},
            {"advanced-processing-unit", 150},
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
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact", 900},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact-red", 700},
        }
    },
    {
        dependencies = {"bobenemies", "bobplates"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["low-density-structure"] = {"tungsten-carbide", 250},
            {"reinforced-concrete-brick", 200},
        }
    },
})
compat.update_ingredients(recipes[10], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 200},
            {"tungsten-plate", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["s_mk8"] = {"copper-tungsten-alloy", 200},
            {"sapphire-5", 100},
            {"ruby-5", 100},
            {"emerald-5", 100},
            {"amethyst-5", 100},
            {"topaz-5", 100},
            {"diamond-5", 100},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact", 1000},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact-red", 800},
        }
    },
    {
        dependencies = {"bobenemies", "bobplates"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["copper-tungsten-alloy"] = {"copper-tungsten-alloy", 200},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 500},
            {"clowns-plate-depleted-uranium", 500},
        }
    },
})
data:extend(recipes)