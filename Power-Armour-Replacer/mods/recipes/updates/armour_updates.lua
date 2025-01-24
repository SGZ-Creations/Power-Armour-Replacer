--if settings.startup["moddular-disable-armour"] then
local util = require("mods.util")
util.ingredient_prereq(data.raw.recipe["par-armour-mk1"], {
	-- Power Armor MK3
	{
		dependencies = {"Power Armor MK3"},
		replacements = {
			["heavy-armor"] = {"pamk3-hvest", 1},
		}
	},
	--Bobs
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 100},
            ["stone-brick"] = {"bob-rubber", 50},
            ["wood"] = {"bob-resin", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 100},
            ["steel-plate"] = {"bob-glass", 100},
            ["stone-brick"] = {"bob-rubber", 50},
            ["wood"] = {"bob-resin", 150},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["bob-resin"] = {"solder", 100},
            {"tinned-copper-cable", 55},
        }
    },
    --Angels
    {
        dependencies = {"bobplates", "angelssmelting"},
        replacements = {
            ["stone-brick"] = {"bob-lead-plate", 100},
            ["bob-rubber"] = {"bob-steel-gear-wheel", 25},
        }
    },
    -- SeaBlock
    {
        dependencies = {"SeaBlockMetaPack", "bobplates"},
        replacements = {
            ["bob-rubber"] = {"copper-plate", 100},
        }
    },
    {
        dependencies = {"Bio_Industries", "angelssmelting",},
        replacements = {
            ["bob-steel-gear-wheel"] = {"bob-rubber", 50},
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
    --SEK2 as long it don't mark mod as incompatible for no reason.
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"steel-gear-wheel", 45},
            ["electronic-circuit"] = {"automation-core", 10},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["par-armour-mk2"], {
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
            ["stone-brick"] = {"bob-glass", 100},
            ["copper-plate"] = {"bob-bronze-alloy", 75},
            ["iron-gear-wheel"] = {"bob-silver-plate", 75},
            ["steel-plate"] = {"bob-steel-bearing", 155},
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
            ["bob-silver-plate"] = {"basic-electronic-componenets", 100},
            ["bob-rubber"] = {"iron-gear-wheel", 40},
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
            ["iron-gear-wheel"] = {"bob-rubber", 20},
        }
    },
    --Darkstar
    {
        dependencies = {"angelssmelting", "Darkstar_utilities_fixed"},
        replacements = {
            ["bob-bronze-alloy"] = {"angels-mono-silicon", 100},
        }
    },
    --SeaBlock
    {
        dependencies = {"angelspetrochem", "bobplates", "SeaBlockMetaPack"},
        replacements = {
            ["bob-rubber"] = {"bob-bronze-alloy", 75},
        }
    },
    --Pyanodon
    {
        dependencies = {"pyrawores",},
        replacements = {
            ["copper-plate"] = {"chromium", 35},
            ["steel-plate"] = {"bob-aluminium-plate", 45},
            ["small-parts-01"] = {"small-parts-01", 75},
            ["electronic-circuit"] = {"electronic-circuit", 40},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"bob-steel-gear-wheel", 50},
            ["electronic-circuit"] = {"automation-core", 5},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["par-armour-mk3"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 300},
            {"bob-rubber", 60},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 300},
            ["plastic-bar"] = {"bob-zinc-plate", 50},
            ["steel-plate"] = {"bob-aluminium-plate", 150},
            ["engine-unit"] = {"bob-cobalt-steel-alloy", 100},
            {"bob-rubber", 60},
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
            ["bob-cobalt-steel-alloy"] = {"bob-lead-plate", 100},
            ["bob-zinc-plate"] = {"clay-brick", 125},
        }
    },
    {
        dependencies = {"angelspetrochem", "SeaBlockMetaPack", "bobplates"},
        replacements = {
            ["bob-rubber"] = {"bob-glass", 125},
            {"steel-plate", 100}
        }
    },
    --248K
    {
        dependencies = {"248k", "bobplates", "angelssmelting"},
        replacements = {
            ["bob-lead-plate"] = {"battery", 30},
        }
    },
    {
        dependencies = {"248k"},
        replacements = {
            {"el_aluminum_item", 150},
            {"fi_materials_glass", 200},
        }
    },
    {
        dependencies = {"248k", "bobplates"},
        replacements = {
            ["bob-aluminium-plate"] = {"el_aluminum_item", 150},
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            ["el_aluminum_item"] = {"bob-aluminium-plate", 150},
            ["bob-cobalt-steel-alloy"] = {"bob-lithium-ion-battery", 30},
        }
    },
    --Pyanodon
    {
        dependencies = {"pyalternativeenergy",},
        replacements = {
            ["advanced-circuit"] = {"electronics-mk01", 5},
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
            {"ticl4", 20},
        },
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
util.ingredient_prereq(data.raw.recipe["par-armour-mk4"], {
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
            ["engine-unit"] = {"bob-silicon-plate", 160},
            ["iron-gear-wheel"] = {"bob-gunmetal-alloy", 120},
            ["copper-plate"] = {"bob-cobalt-steel-alloy", 150},
            {"bob-invar-alloy", 100},
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
            ["bob-gunmetal-alloy"] = {"angels-wire-silver", 55},
            ["engine-unit"] = {"concrete-brick", 135},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates", "bobelectronics"},
        replacements = {
            ["bob-cobalt-steel-alloy"] = {"solder", 200},
        }
    },
    --Pyanodon
    {
        dependencies = {"pyalternativeenergy",},
        replacements = {
            ["iron-gear-wheel"] = {"mechanical-parts-01", 10},
            ["advanced-circuit"] = {"electronics-mk01", 10},
            ["engine-unit"] = {"controler-mk01", 10},
            --["plastic-bar"] = {"", 0},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["engine-unit"] = {"rare-metals", 60},
            ["advanced-circuit"] = {"electronic-components", 65},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["par-armour-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"advanced-circuit", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["battery"] = {"bob-aluminium-plate", 150},
            ["uranium-235"] = {"bob-silver-plate", 200},
            {"advanced-circuit", 500},
            {"bob-silver-plate", 200},
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
            {"alien-artifact-red", 300},
        }
    },
    -- Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["bob-gunmetal-alloy"] = {"angels-wire-silver", 55},
            ["electric-engine-unit"] = {"angels-wire-platinum", 155},
        }
    },
    --248K
    {
        dependencies = {"248k"},
        replacements = {
            ["uranium-235"] = {"fi_materials_glass", 400},
        }
    },
    -- SE K2
    {
        dependencies = {"space-exploration"},
        replacements = {
        }
    },
})

util.ingredient_prereq(data.raw.recipe["par-armour-mk6"], {
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
            ["steel-plate"] = {"bob-brass-alloy", 100},
            ["copper-plate"] = {"bob-titanium-plate", 200},
            ["solar-panel"] = {"bob-gold-plate", 100},
            {"sapphire-5", 100},
            {"ruby-5", 100},
        }
    },
    {
        dependencies = {"bobenemies", "bobplates"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            ["steel-plate"] = {"bob-alien-blue-alloy", 100},
            {"bob-alien-blue-alloy", 100},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact", 600},
            {"alien-artifact-red", 400},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["processing-unit"] = {"plastic-bar", 100},
            ["bob-gold-plate"] = {"bob-cobalt-steel-alloy", 100},
            {"gilded-copper-cable", 55},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["par-armour-mk7"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["uranium-fuel-cell"] = {"processing-unit", 700},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-ceramic-bearing", 200},
            ["low-density-structure"] = {"bob-cobalt-steel-bearing", 200},
            ["uranium-fuel-cell"] = {"bob-tungsten-plate", 250},
            {"bob-tungsten-plate", 250},
            {"sapphire-5", 50},
            {"ruby-5", 50},
            {"emerald-5", 50},
            {"amethyst-5", 50},
        }
    },
    {
        dependencies = {"bobplates", "space-age"},
        replacements = {
            ["bob-tungsten-plate"] = {"tungsten-plate", 250},
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
            {"alien-artifact", 700},
            {"alien-artifact-red", 500},
            {"bob-alien-orange-alloy", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            {"bob-glass", 50},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["par-armour-mk8"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["nuclear-fuel"] = {"processing-unit", 800},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["nuclear-fuel"] = {"bob-copper-tungsten-alloy", 200},
            ["battery"] = {"bob-silver-zinc-battery", 100},
            {"bob-copper-tungsten-alloy", 200},
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
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact", 800},
            {"alien-artifact-red", 600},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["par-armour-mk9"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["solar-panel"] = {"bob-advanced-processing-unit", 900},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["solar-panel"] = {"bob-advanced-processing-unit", 900},
            {"bob-sapphire-5", 50},
            {"bob-ruby-5", 50},
            {"bob-emerald-5", 50},
            {"bob-amethyst-5", 50},
            {"bob-topaz-5", 50},
            {"bob-diamond-5", 50},
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
            {"reinforced-concrete-brick", 200},
        }
    },
    -- SE K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            --["lubricant"] = {"", 0},
            --["solar-panel"] = {"", 0},
            {"se-heavy-assembly", 30},
			{"se-quantum-processor", 10},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            --["lubricant"] = {"", 0},
			{"lithium-sulfur-battery", 450},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-armour-mk10"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 1000},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 1000},
            {"bob-copper-tungsten-alloy", 500},
            {"bob-nitinol-alloy", 600},
            {"bob-nitinol-bearing", 600},
            {"bob-sapphire-5", 100},
            {"bob-ruby-5", 100},
            {"bob-emerald-5", 100},
            {"bob-amethyst-5", 100},
            {"bob-topaz-5", 100},
            {"bob-diamond-5", 100},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"alien-artifact", 1000},
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
            ["bob-copper-tungsten-alloy"] = {"bob-copper-tungsten-alloy", 250},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 500},
            {"clowns-plate-depleted-uranium", 500},
        }
    },
    --248K
    {
        dependencies = {"248k"},
        replacements = {
            {"fi_materials_titan", 350},
            {"fu_materials_KFK", 100},
            {"gr_materials_circuit", 100},
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            ["fi_materials_titan"] = {"bob-titanium-plate", 350},
        }
    },
    --SEK2
    {
        dependencies = {"space-exploration"},
        replacements = {
            --["processing-unit"] = {"", 0},
            --["advanced-circuit"] = {"", 0},
            --["low-density-structure"] = {"", 0},
            {"se-nanomaterial", 200},
            {"se-heavy-assembly", 50},
            {"se-naquium-processor", 20},
			{"se-quantum-processor", 20},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            --["processing-unit"] = {"", 0},
            --["advanced-circuit"] = {"", 0},
            --["low-density-structure"] = {"", 0},
			{"lithium-sulfur-battery", 500},
            {"energy-control-unit", 100},
			{"imersium-beam", 500},
            {"matter-cube", 20},
            {"ai-core", 10},
        }
    },
})
--end