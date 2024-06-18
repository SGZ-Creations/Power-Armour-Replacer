if not mods["PyBlock"] then
    local recipes = {
        {
            type = "recipe",
            name = "par-armour-mk1",
            enabled = false,
            total_raw = true,
            energy_required = 50.0,
            ingredients = {
                {"heavy-armor", 1},
                {"stone-brick", 50},
                {"wood", 100},
                {"steel-plate", 20},
                {"electronic-circuit", 30}
            },
            result = "par-armour-mk1",
            allow_decomposition = true,
        },
        {
            type = "recipe",
            name = "par-armour-mk2",
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {"par-armour-mk1", 1},
                {"copper-plate", 170},
                {"iron-gear-wheel", 150},--(small-parts-01 in pyanodons)
                {"steel-plate", 50},
                {"electronic-circuit", 80},
            },
            result = "par-armour-mk2",
            allow_decomposition = true,
        },
        {
            type = "recipe",
            name = "par-armour-mk3",
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {"par-armour-mk2", 1},
                {"plastic-bar", 50},
                {"steel-plate", 175},
                {"engine-unit", 100},
                {"advanced-circuit", 125},
            },
            result = "par-armour-mk3",
            allow_decomposition = true,
        },
        {
            type = "recipe",
            name = "par-armour-mk4",
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {"par-armour-mk3", 1},
                {"iron-gear-wheel", 150},--(small-parts-01 in pyanodons)
                {"engine-unit", 100},
                {"plastic-bar", 100},
                {"advanced-circuit", 125},
            },
            result = "par-armour-mk4",
            allow_decomposition = true,
        },
        {
            type = "recipe",
            name = "par-armour-mk5",
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {"par-armour-mk4", 1},
                {"battery", 50},
                {"electric-engine-unit", 25},
                {"advanced-circuit", 150},
                {"uranium-235", 350},
            },
            result = "par-armour-mk5",
        },
        {
            type = "recipe",
            name = "par-armour-mk6",
            enabled = false,
            energy_required = 10.0,
            category="crafting-with-fluid",
            hide_from_player_crafting = true,
            ingredients = {
                {"par-armour-mk5", 1},
                {"solar-panel", 20},
                {"processing-unit", 150},
                {"copper-plate", 100},
                {"steel-plate", 100},
                {type="fluid", name="petroleum-gas", amount=350},
            },
            result = "par-armour-mk6",
        },
        {
            type = "recipe",
            name = "par-armour-mk7",
            enabled = false,
            energy_required = 10.0,
            category="crafting-with-fluid",
            hide_from_player_crafting = true,
            ingredients = {
                {"par-armour-mk6", 1},
                {"copper-cable", 200},
                {"steel-plate", 100},
                {"uranium-fuel-cell", 100},
                {"low-density-structure", 75},
                {type="fluid", name="petroleum-gas", amount=700},
            },
            result = "par-armour-mk7",
        },
        {
            type = "recipe",
            name = "par-armour-mk8",
            enabled = false,
            energy_required = 10.0,
            category="crafting-with-fluid",
            hide_from_player_crafting = true,
            ingredients = {
                {"par-armour-mk7", 1},
                {"battery", 100},
                {"nuclear-fuel", 10},
                {"low-density-structure", 125},
                {type="fluid", name="lubricant", amount=350},
            },
            result = "par-armour-mk8",
        },
        {
            type = "recipe",
            name = "par-armour-mk9",
            enabled = false,
            energy_required = 10.0,
            category="crafting-with-fluid",
            hide_from_player_crafting = true,
            ingredients = {
                {"par-armour-mk8", 1},
                {"solar-panel", 30},
                {"rocket-control-unit", 100},
                {"low-density-structure", 175},
                {type="fluid", name="lubricant", amount=700},
            },
            result = "par-armour-mk9",
        },
        {
            type = "recipe",
            name = "par-armour-mk10",
            enabled = false,
            energy_required = 10.0,
            hide_from_player_crafting = true,
            ingredients = {
                {"par-armour-mk9", 1},
                {"solar-panel", 40},
                {"rocket-control-unit", 200},
                {"processing-unit", 250},
                {"low-density-structure", 250},
            },
            result = "par-armour-mk10",
        },
    }

    local util = require("compatibilities.util")

    --Compatibility section
    util.ingredient_prereq(recipes[1], {
        {
            dependencies = {"bobelectronics",},
            replacements = {
                ["electronic-circuit"] = {"basic-circuit-board", 100},
                ["steel-plate"] = {"rubber", 50},
                ["wood"] = {"resin", 150},
            }
        },
        {
            dependencies = {"bobplates"},
            replacements = {
                ["electronic-circuit"] = {"electronic-circuit", 100},
                ["stone-brick"] = {"glass", 100},
                ["steel-plate"] = {"rubber", 50},
                ["wood"] = {"resin", 150},
            }
        },
        {
            dependencies = {"bobelectronics", "bobplates"},
            replacements = {
                ["resin"] = {"solder", 100},
                {"tinned-copper-cable", 55},
            }
        },
        {
            dependencies = {"bobplates", "Darkstar_utilities_fixed"},
            replacements = {
                {"silicon", 100},
            }
        },
        --Angels
        {
            dependencies = {"bobplates", "angelssmelting"},
            replacements = {
                ["stone-brick"] = {"lead-plate", 100},
                ["rubber"] = {"steel-gear-wheel", 25},
            }
        },
        -- SeaBlock
        {
            dependencies = {"SeaBlockMetaPack", "bobplates"},
            replacements = {
                ["rubber"] = {"copper-plate", 100},
            }
        },
        {
            dependencies = {"Bio_Industries", "angelssmelting",},
            replacements = {
                ["steel-gear-wheel"] = {"rubber", 50},
            }
        },
        --Pyanodon
        {
            dependencies = {"pyalienlife",},
            replacements = {
                ["wood"] = {"latex", 30},
            }
        },
        {
            dependencies = {"pyrawores",},
            replacements = {
                ["electronic-circuit"] = {"nexelit-plate", 25},
                ["stone-brick"] = {"solder", 30},
                ["steel-plate"] = {"titanium-plate", 20},
            }
        },
        --EI
        {
            dependencies = {"exotic-industries"},
            replacements = {
                ["steel-plate"] = {"ei_iron-beam", 30},
                ["electronic-circuit"] = {"ei_steam-engine", 10},
                {"copper-plate", 20},
            }
        },
        --IR3
        {
            dependencies = {"IndustrialRevolution3"},
            replacements = {
                ["steel-plate"] = {"copper-frame-large", 20},
                ["electronic-circuit"] = {"glass", 80},
                ["wood"] = {"rubber", 50},
                {"copper-cable", 100},
            }
        },
        --SEK2 as long it don't mark mod as incompatible for no reason.
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

    util.ingredient_prereq(recipes[2], {
        {
            dependencies = {"bobelectronics"},
            replacements = {
                ["electronic-circuit"] = {"basic-circuit-board", 200},
                {"insulated-cable", 50},
            }
        },
        {
            dependencies = {"bobplates"},
            replacements = {
                ["stone-brick"] = {"glass", 100},
                ["copper-plate"] = {"bronze-alloy", 75},
                ["iron-gear-wheel"] = {"silver-plate", 75},
                ["steel-plate"] = {"steel-bearing", 155},
            }
        },
        {
            dependencies = {"bobelectronics", "bobplates"},
            replacements = {
                ["insulated-cable"] = {"solder", 50},
                {"tinned-copper-cable", 55},
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
        --Pyanodon
        {
            dependencies = {"pyrawores",},
            replacements = {
                ["copper-plate"] = {"chromium", 35},
                ["steel-plate"] = {"aluminium-plate", 45},
                --["small-parts-01"] = {"small-parts-01", 75},
                ["iron-gear-wheel"] = {"iron-gear-wheel", 75},
                ["electronic-circuit"] = {"electronic-circuit", 40},
            }
        },
        --IR3
        {
            dependencies = {"IndustrialRevolution3"},
            replacements = {
                ["electronic-circuit"] = {"copper-rotor", 50},
                ["engin-unit"] = {"copper-coil", 50},
                ["steel-plate"] = {"copper-cable-heavy", 50},
                ["iron-gear-wheel"] = {"iron-plate-heavy", 50},
                {"copper-engine-unit", 10},
            }
        },
        --K2
        {
            dependencies = {"Krastorio2"},
            replacements = {
                ["steel-plate"] = {"steel-gear-wheel", 50},
                ["electronic-circuit"] = {"automation-core", 5},
            }
        },
        --SE
        {
            dependencies = {"space-exploration"},
            replacements = {
            }
        },
    })

    util.ingredient_prereq(recipes[3], {
        {
            dependencies = {"bobelectronics"},
            replacements = {
                ["advanced-circuit"] = {"electronic-circuit", 300},
                {"rubber", 60},
            }
        },
        {
            dependencies = {"bobplates"},
            replacements = {
                ["advanced-circuit"] = {"electronic-circuit", 300},
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
        --Pyanodon
        {
            dependencies = {"pyalternativeenergy",},
            replacements = {
                ["advanced-circuit"] = {"electronic-mk01", 5},
                ["plastic-bar"] = {"nxsb-alloy", 40},
            },
        },
        {
            dependencies = {"pycoalprocessing", "pyrawores"},
            replacements = {
                ["engine-unit"] = {"nbfe-alloy", 30},
                ["steel-plate"] = {"nichrome", 50},
            },
        },
        {
            dependencies = {"pypetroleumhandling", "pyrawores"},
            replacements = {
                ["engine-unit"] = {"nbfe-alloyh", 30},
                {"ticl4", 20},
            },
        },
        --IR3
        {
            dependencies = {"IndustrialRevolution3"},
            replacements = {
                ["advanced-circuit"] = {"computer-mk1", 30},
                ["plastic-bar"] = {"iron-rotor", 20},
                ["steel-plate"] = {"copper-coil", 40},
                {"gold-foil", 50},
            }
        },
        --SE
        {
            dependencies = {"space-exploration"},
            replacements = {
            }
        },
        --K2
        {
            dependencies = {"Krastorio2"},
            replacements = {
                ["engine-unit"] = {"rare-metals", 50},
                ["advanced-circuit"] = {"electronic-components", 55},
            }
        },
    })
    util.ingredient_prereq(recipes[4], {
        {
            dependencies = {"bobelectronics"},
            replacements = {
                ["advanced-circuit"] = {"electronic-circuit", 400},
                ["plastic-bar"] = {"insulated-cable", 180},
            }
        },
        {
            dependencies = {"bobplates"},
            replacements = {
                ["advanced-circuit"] = {"electronic-circuit", 400},
                ["engine-unit"] = {"silicon", 160},
                ["iron-gear-wheel"] = {"gunmetal-alloy", 120},
                ["copper-plate"] = {"cobalt-steel-alloy", 150},
                {"invar-alloy", 100},
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
                ["engine-unit"] = {"concrete-brick", 135},
            }
        },
        {
            dependencies = {"angelssmelting", "bobplates", "bobelectronics"},
            replacements = {
                ["cobalt-steel-alloy"] = {"solder", 200},
            }
        },
        --Pyanodon
        {
            dependencies = {"pyalternativeenergy",},
            replacements = {
                ["iron-gear-wheel"] = {"mechanical-parts-01", 10},
                ["advanced-circuit"] = {"electronic-mk01", 10},
                ["engine-unit"] = {"controler-mk01", 10},
                ["plastic-bar"] = {"", 0},
            }
        },
        --IR3
        {
            dependencies = {"IndustrialRevolution3"},
            replacements = {
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

    util.ingredient_prereq(recipes[5], {
        {
            dependencies = {"bobwarfare"},
            replacements = {
                ["uranium-235"] = {"heavy-armor-2", 1},
            }
        },
        {
            dependencies = {"bobelectronics"},
            replacements = {
                {"advanced-circuit", 500},
            }
        },
        {
            dependencies = {"bobplates"},
            replacements = {
                ["battery"] = {"aluminium-plate", 150},
                ["uranium-235"] = {"silver-plate", 200},
                {"advanced-circuit", 500},
                {"silver-plate", 200},
                {"sapphire-5", 50},
                {"ruby-5", 50},
            }
        },
        {
            dependencies = {"bobelectronics", "bobplates"},
            replacements = {
                ["engine-unit"] = {"gilded-copper-cable", 500},
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
        --IR3
        {
            dependencies = {"IndustrialRevolution3"},
            replacements = {
            }
        },
        -- SE K2
        {
            dependencies = {"space-exploration"},
            replacements = {
            }
        },
    })

    util.ingredient_prereq(recipes[6], {
        {
            dependencies = {"bobelectronics"},
            replacements = {
                ["processing-unit"] = {"advanced-circuit", 600},
            }
        },
        {
            dependencies = {"bobplates"},
            replacements = {
                ["processing-unit"] = {"advanced-circuit", 600},
                ["steel-plate"] = {"brass-alloy", 100},
                ["copper-plate"] = {"titanium-plate", 200},
                ["solar-panel"] = {"gold-plate", 100},
                {"sapphire-5", 100},
                {"ruby-5", 100},
            }
        },
        {
            dependencies = {"bobenemies", "bobplates"},
            setting = "bobmods-enemies-enableartifacts",
            replacements = {
                ["steel-plate"] = {"alien-blue-alloy", 100},
                {"alien-blue-alloy", 100},
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
        --Angels
        {
            dependencies = {"angelssmelting", "bobplates"},
            replacements = {
                ["processing-unit"] = {"plastic-bar", 100},
                ["gold-plate"] = {"cobalt-steel-alloy", 100},
                {"gilded-copper-cable", 55},
            }
        },
        --IR3
        {
            dependencies = {"IndustrialRevolution3"},
            replacements = {
            }
        },
        --SE K2
        {
            dependencies = {"space-exploration"},
            replacements = {
            }
        },
    })

    util.ingredient_prereq(recipes[7], {
        {
            dependencies = {"bobelectronics",},
            replacements = {
                ["uranium-fuel-cell"] = {"processing-unit", 700},
            }
        },
        {
            dependencies = {"bobplates"},
            replacements = {
                ["steel-plate"] = {"ceramic-bearing", 200},
                ["low-density-structure"] = {"cobalt-steel-bearing", 200},
                ["uranium-fuel-cell"] = {"tungsten-plate", 250},
                {"tungsten-plate", 250},
                {"sapphire-5", 50},
                {"ruby-5", 50},
                {"emerald-5", 50},
                {"amethyst-5", 50},
            }
        },
        {
            dependencies = {"bobelectronics", "bobplates"},
            replacements = {
                ["copper-cable"] = {"gilded-copper-cable", 250},
                {"solder", 150},
            }
        },
        {
            dependencies = {"bobenemies", "bobplates"},
            setting = "bobmods-enemies-enableartifacts",
            replacements = {
                {"alien-orange-alloy", 100},
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
        --Angels
        {
            dependencies = {"angelssmelting", "bobplates"},
            replacements = {
                {"glass", 50},
            }
        },
        --IR3
        {
            dependencies = {"IndustrialRevolution3"},
            replacements = {
            }
        },
        -- SE K2
        {
            dependencies = {"space-exploration"},
            replacements = {
            }
        },
    })

    util.ingredient_prereq(recipes[8], {
        {
            dependencies = {"bobelectronics"},
            replacements = {
                ["nuclear-fuel"] = {"processing-unit", 800},
            }
        },
        {
            dependencies = {"bobplates"},
            replacements = {
                ["nuclear-fuel"] = {"copper-tungsten-alloy", 200},
                ["battery"] = {"silver-zinc-battery", 100},
                {"copper-tungsten-alloy", 200},
                {"sapphire-5", 100},
                {"ruby-5", 100},
                {"emerald-5", 100},
                {"amethyst-5", 100},
            }
        },
        {
            dependencies = {"bobrevamp"},
            replacements = {
                {"heat-shield-tile", 200},
            }
        },
        {
            dependencies = {"bobwarfare"},
            replacements = {
                {"heavy-armor-3", 1}
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
        --IR3
        {
            dependencies = {"IndustrialRevolution3"},
            replacements = {
            }
        },
        -- SE K2
        {
            dependencies = {"space-exploration"},
            replacements = {
            }
        },
    })

    util.ingredient_prereq(recipes[9], {
        {
            dependencies = {"bobelectronics",},
            replacements = {
                ["solar-panel"] = {"advanced-processing-unit", 900},
            }
        },
        {
            dependencies = {"bobplates"},
            replacements = {
                ["solar-panel"] = {"advanced-processing-unit", 900},
                ["low-density-structure"] = {"tungsten-carbide", 300},
                {"tungsten-plate", 300},
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
        --IR3
        {
            dependencies = {"IndustrialRevolution3"},
            replacements = {
            }
        },
        -- SE K2
        {
            dependencies = {"space-exploration"},
            replacements = {
            }
        },
    })
    util.ingredient_prereq(recipes[10], {
        {
            dependencies = {"bobelectronics",},
            replacements = {
                ["solar-panel"] = {"advanced-processing-unit", 1000},
                ["processing-unit"] = {"insulated-cable", 550},
            }
        },
        {
            dependencies = {"bobplates"},
            replacements = {
                ["solar-panel"] = {"advanced-processing-unit", 1000},
                ["processing-unit"] = {"copper-tungsten-alloy", 500},
                {"copper-tungsten-alloy", 500},
                {"nitinol-alloy", 600},
                {"nitinol-bearing", 600},
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
        --IR3
        {
            dependencies = {"IndustrialRevolution3"},
            replacements = {
            }
        },
        --K2
        {
            dependencies = {"Krastorio2"},
            replacements = {
                ["solar-panel"] = {"matter-cube", 2},
            }
        },
    })
    data:extend(recipes)
end