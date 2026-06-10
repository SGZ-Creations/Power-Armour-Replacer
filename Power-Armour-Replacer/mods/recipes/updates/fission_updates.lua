local PAR = require("mods.util")
---@class ProtypeRecipe
local RECIPES = data.raw["recipe"]
---@class LuaSettings
local SS = settings.startup
PAR.ingredient_prereq(RECIPES["par-fission-reactor-mk1"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 50},
            {"bob-insulated-cable", 50},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-steel-bearing", 75},
        }
    },
    {
        dependencies = {"bobplates", "bobelectronics",},
        replacements = {
            ["copper-plate"] = {"bob-tinned-copper-cable", 55},
            {"bob-solder", 40},
        }
    },
    --Angels
    {
        dependencies = {"bobplates", "angelssmelting"},
        replacements = {
            ["bob-insulated-cable"] = {"bob-lead-plate", 100},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-plate"] = {"kr-automation-core", 25},
			["steel-plate"] = {"kr-steel-beam", 25},
            ["iron-plate"] = {"kr-iron-beam", 25},
            {"kr-sand", 25},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["copper-plate"] = {"kr-automation-core", 25},
			["steel-plate"] = {"kr-steel-beam", 25},
            ["iron-plate"] = {"kr-iron-beam", 25},
            {"kr-sand", 25},
        }
    },
})

PAR.ingredient_prereq(RECIPES["par-fission-reactor-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 100},
            {"bob-rubber", 60},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 100},
            ["iron-plate"] = {"bob-silver-plate", 20},
            {"bob-glass", 30},
            {"bob-rubber", 60},
        }
    },
    {
        dependencies = {"bobplates", "bobelectronics",},
        replacements = {
            ["copper-cable"] = {"bob-tinned-copper-cable", 120},
            {"bob-solder", 50},
        }
    },
    --Angels
    {
        dependencies = {"bobplates", "angelssmelting"},
        replacements = {
            ["bob-silver-plate"] = {"bob-lead-plate", 40},
            ["bob-glass"] = {"bob-bronze-alloy", 100},
            ["bob-rubber"] = {"steel-plate", 25},
        }
    },
    -- SeaBlock-
    {
        dependencies = {"SeaBlockMetaPack", "bobplates"},
        replacements = {
            ["bob-rubber"] = {"bob-bronze-alloy", 60},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["copper-plate"] = {"kr-automation-core", 50},
			["steel-plate"] = {"kr-steel-beam", 50},
            ["iron-plate"] = {"kr-iron-beam", 50},
            {"kr-sand", 50},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["copper-plate"] = {"kr-automation-core", 50},
			["steel-plate"] = {"kr-steel-beam", 50},
            ["iron-plate"] = {"kr-iron-beam", 50},
            {"kr-sand", 50},
        }
    },
})

PAR.ingredient_prereq(RECIPES["par-fission-reactor-mk3"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["solid-fuel"] = {"bob-insulated-cable", 180},
            ["electronic-circuit"] = {"electronic-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 150},
            {"bob-brass-alloy", 100},
            {"bob-invar-alloy", 65},
            {"bob-silver-plate", 70},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-solder", 50}
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-silver-plate"] = {"angels-wire-silver", 120},
            ["bob-brass-alloy"] = {"angels-clay-brick", 150},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            {"motor", 20},
        }
    },
    --Pyanodon
    {
        dependencies = {"pycoalprocessing",},
        replacements = {
            ["solid-fuel"] = {"chromium", 45},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-automation-core", 75},
            {"kr-rare-metals", 75},
            {"kr-glass", 75},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-automation-core", 75},
            {"kr-rare-metals", 75},
            {"kr-glass", 75},
        }
    },
})

PAR.ingredient_prereq(RECIPES["par-fission-reactor-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 200},
            ["steel-plate"] = {"bob-invar-alloy", 70},
            ["engine-unit"] = {"bob-silicon-wafer", 100},
            {"bob-silver-plate", 60},
            {"bob-nickel-plate", 80},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-plate"] = {"bob-tinned-copper-cable", 150},
            {"bob-solder", 90},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-silver", 135},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-automation-core", 100},
            {"kr-rare-metals", 100},
            {"kr-glass", 100},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-automation-core", 100},
            {"kr-rare-metals", 100},
            {"kr-glass", 100},
        }
    },
})

PAR.ingredient_prereq(RECIPES["par-fission-reactor-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"bob-insulated-cable", 100},
            ["advanced-circuit"] = {"advanced-circuit", 250},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["engine-unit"] = {"bob-aluminium-plate", 100},
            ["advanced-circuit"] = {"advanced-circuit", 250},
            {"bob-brass-alloy", 150},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 150},
            {"angels-wire-silver", 135},
            {"bob-brass-alloy", 150},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["battery"] = {"kr-lithium-sulfur-battery", 125},
            {"kr-imersium-beam", 125},
            {"kr-rare-metals", 125},
            {"kr-ai-core", 125},
            {"kr-glass", 125},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["battery"] = {"kr-lithium-sulfur-battery", 125},
            {"kr-imersium-beam", 125},
            {"kr-rare-metals", 125},
            {"kr-ai-core", 125},
            {"kr-glass", 125},
        }
    },
})

PAR.ingredient_prereq(RECIPES["par-fission-reactor-mk6"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 300},
            ["processing-unit"] = {"bob-insulated-cable", 100},
            ["uranium-fuel-cell"] = {"bob-resin", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"lithium-plate", 50},
            ["advanced-circuit"] = {"advanced-circuit", 300},
            ["uranium-fuel-cell"] = {"bob-cobalt-steel-bearing", 250},
            ["electric-engine-unit"] = {"bob-titanium-plate", 150},
            {"bob-cobalt-steel-bearing", 250},
            {"bob-zinc-plate", 150},
            {"bob-battery-2", 150},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-manganese", 100},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-lithium-sulfur-battery", 150},
            {"kr-imersium-beam", 150},
            {"kr-matter-cube", 150},
            {"kr-rare-metals", 150},
            {"kr-tritium", 150},
            {"kr-ai-core", 150},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-lithium-sulfur-battery", 150},
            {"kr-imersium-beam", 150},
            {"kr-matter-cube", 150},
            {"kr-rare-metals", 150},
            {"kr-tritium", 150},
            {"kr-ai-core", 150},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-fission-reactor-mk7"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"bob-rubber", 300},
            ["processing-unit"] = {"processing-unit", 350},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["pipe"] = {"bob-heat-pipe-3", 20},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 350},
            ["advanced-circuit"] = {"bob-silver-plate", 200},
            ["electric-engine-unit"] = {"bob-battery-2", 175},
            ["pipe"] = {"bob-cobalt-steel-bearing", 350},
            {"bob-cobalt-steel-bearing", 350},
            {"bob-silver-plate", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["bob-heat-pipe-3"] = {"bob-gilded-copper-cable", 50},
            {"bob-gilded-copper-cable", 50},
        }
    },
    {
        dependencies = {"bobplates", "bobrevamp"},
        replacements = {
            {"bob-rtg", 40},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-silver", 100},
            {"angels-wire-platinum", 100},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-energy-control-unit", 200},
            {"kr-imersium-beam", 200},
            {"kr-matter-cube", 200},
            {"kr-rare-metals", 200},
            {"kr-tritium", 200},
            {"kr-ai-core", 200},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-energy-control-unit", 200},
            {"kr-imersium-beam", 200},
            {"kr-matter-cube", 200},
            {"kr-rare-metals", 200},
            {"kr-tritium", 200},
            {"kr-ai-core", 200},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-fission-reactor-mk8"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"bob-insulated-cable", 350},
            ["sulfur"] = {"processing-unit", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["sulfur"] = {"processing-unit", 400},
            ["advanced-circuit"] = {"bob-titanium-plate", 200},
            ["bob-insulated-cable"] = {"bob-silicon-nitride", 100},
            {"bob-titanium-plate", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-solder", 100},
            {"bob-tinned-copper-cable", 100},
        }
    },
    {
        dependencies = {"bobplates", "bobrevamp"},
        replacements = {
            {"bob-rtg", 40},
        }
    },
    {
        dependencies = {"bobplates", "angelssmelting"},
        replacements = {
            ["bob-titanium-plate"] = {"angels-reinforced-concrete-brick", 100},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-energy-control-unit", 300},
            {"kr-imersium-beam", 300},
            {"kr-matter-cube", 300},
            {"kr-rare-metals", 300},
            {"kr-tritium", 300},
            {"kr-ai-core", 300},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-energy-control-unit", 300},
            {"kr-imersium-beam", 300},
            {"kr-matter-cube", 300},
            {"kr-rare-metals", 300},
            {"kr-tritium", 300},
            {"kr-ai-core", 300},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-fission-reactor-mk9"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 450},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["nuclear-fuel"] = {"bob-heat-pipe-4", 20},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 450},
            ["low-density-structure"] = {"bob-nitinol-alloy", 100},
            {"bob-invar-alloy", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-solder", 100},
        }
    },
    {
        dependencies = {"bobplates", "bobrevamp"},
        replacements = {
            {"bob-rtg", 40},
        }
    },
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            ["angels-gas-methane"] = {"zero"},
            {"angels-uranium-234", 20},
            {type="fluid", name="angels-gas-monochloramine", amount=100},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 100},
            {"clowns-plate-magnesium", 100},
            {"clowns-plate-depleted-uranium", 100},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-energy-control-unit", 400},
            {"kr-imersium-beam", 400},
            {"kr-matter-cube", 400},
            {"kr-rare-metals", 400},
            {"kr-tritium", 400},
            {"kr-ai-core", 400},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-energy-control-unit", 400},
            {"kr-imersium-beam", 400},
            {"kr-matter-cube", 400},
            {"kr-rare-metals", 400},
            {"kr-tritium", 400},
            {"kr-ai-core", 400},
        }
    },
})

if mods["Cold_biters"]then
    if SS["cb-enable-cold-warfare"].value == true then
        table.insert(RECIPES["par-fission-reactor-mk9"].ingredients, {type="item", name= "cb_alien_cold_artifact", amount=400})
    end
end

PAR.ingredient_prereq(RECIPES["par-fission-reactor-mk10"], {
    --Bobs
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            ["battery"] = {"bob-battery-3", 200},
            {"bob-silver-nitrate", 100},
            {"bob-nitinol-bearing", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 200},
        }
    },
    {
        dependencies = {"bobplates", "bobrevamp"},
        replacements = {
            {"bob-rtg", 80},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting", "angelspetrochem"},
        replacements = {
            {type="fluid", name="angels-gas-monochloramine", amount=100},
            {"angels-uranium-234", 20},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["bob-silver-nitrate"] = {"bob-copper-tungsten-alloy", 1000},
            {"angels-wire-platinum", 200},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-depleted-uranium", 200},
            {"clowns-plate-magnesium", 200},
            {"clowns-plate-osmium", 200},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
			["armour-control-unit"] = {"se-quantum-processor", 2},
            ["low-density-structure"] = {"se-nanomaterial", 50},
            ["processing-unit"] = {"se-naquium-processor", 2},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-energy-control-unit", 500},
            {"kr-imersium-beam", 500},
            {"kr-matter-cube", 500},
            {"kr-rare-metals", 500},
            {"kr-tritium", 500},
            {"kr-ai-core", 500},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-energy-control-unit", 500},
            {"kr-imersium-beam", 500},
            {"kr-matter-cube", 500},
            {"kr-rare-metals", 500},
            {"kr-tritium", 500},
            {"kr-ai-core", 500},
        }
    },
})

if mods["Cold_biters"]then
    if SS["cb-enable-cold-warfare"].value == true then
        table.insert(RECIPES["par-fission-reactor-mk10"].ingredients, {type="item", name= "cb_alien_cold_artifact", amount=400})
    end
end