local PAR = require("mods.util")
local RECIPES = data.raw["recipe"]
local SS = settings.startup
PAR.ingredient_prereq(RECIPES["par-shield-mk1"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 25},
            ["stone-brick"] = {"bob-rubber", 25},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 25},
            ["stone-brick"] = {"bob-rubber", 25},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["iron-plate"] = {"bob-tinned-copper-cable", 25},
            ["copper-plate"] = {"bob-solder", 25},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting",},
        replacements = {
            {"angels-solid-carbon", 25},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["bob-rubber"] = {"bob-lead-plate", 25},
        }
    },
    --Pyanodon
    {
        dependencies = {"pyalienlife",},
        replacements = {
        }
    },
    {
        dependencies = {"pypetroleumhandling",},
        replacements = {
            ["steel-plate"] = {"small-parts-01", 25},
        }
    },
    {
        dependencies = {"pyalternativeenergy",},
        replacements = {
            ["electronic-circuit"] = {"battery-mk00", 25},
        }
    },
    {
        dependencies = {"pyrawores",},
        replacements = {
            ["copper-plate"] = {"tinned-cable", 25},
            ["wood"] = {"titanium-plate", 25},
            ["stone-brick"] = {"solder", 25},
            {"aluminium-plate", 25},
        }
    },
    {
        dependencies = {"pyhightech",},
        replacements = {
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"kr-steel-beam", 25},
            ["copper-plate"] = {"kr-iron-beam", 25},
            ["stone-brick"] = {"kr-sand", 25},
            {"kr-automation-core", 25},
            {"kr-glass", 25},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-shield-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 50},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 50},
            ["steel-plate"] = {"bob-steel-bearing", 50},
            ["iron-plate"] = {"bob-bronze-alloy", 50},
            ["engine-unit"] = {"bob-silver-plate", 50},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting",},
        replacements = {
            ["bob-silver-plate"] = {"bob-steel-gear-wheel", 50},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates",},
        replacements = {
            ["bob-silver-plate"] = {"bob-steel-gear-wheel", 50},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"kr-steel-beam", 50},
            ["copper-plate"] = {"kr-iron-beam", 50},
            {"kr-automation-core", 50},
            {"kr-glass", 50},
            {"kr-sand", 50},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-shield-mk3"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"bob-insulated-cable", 75},
            ["electronic-circuit"] = {"electronic-circuit", 75},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 75},
            ["advanced-circuit"] = {"bob-invar-alloy", 75},
            {"bob-invar-alloy", 75},
            {"bob-rubber", 75},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["battery"] = {"bob-tinned-copper-cable", 75},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-bronze-alloy", 75},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"kr-steel-beam", 75},
            {"kr-electronic-components", 75},
            {"kr-automation-core", 75},
            {"kr-rare-metals", 75},
            {"kr-silicon", 75},
            {"kr-glass", 75},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-shield-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 100},
            ["small-lamp"] = {"bob-insulated-cable", 100},
            ["plastic-bar"] = {"bob-resin", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 100},
            ["steel-plate"] = {"bob-silicon-plate", 100},
            ["small-lamp"] = {"bob-silicon-wafer", 100},
            ["plastic-bar"] = {"bob-brass-alloy", 100},
            ["bob-resin"] = {"bob-brass-alloy", 100},
            ["battery"] = {"bob-silver-plate", 100},
            {"bob-silicon-wafer", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-silver-plate"] = {"angels-wire-silver", 100},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"kr-steel-beam", 100},
            {"kr-electronic-components", 100},
            {"kr-automation-core", 100},
            {"kr-rare-metals", 100},
            {"kr-silicon", 100},
            {"kr-glass", 100},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-shield-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"advanced-circuit", 125},
            {"bob-insulated-cable", 125},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electric-engine-unit"] = {"bob-nickel-plate", 125},
            ["advanced-circuit"] = {"advanced-circuit", 125},
            ["steel-plate"] = {"bob-glass", 125},
            {"bob-silver-plate", 125},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 125},
            {"bob-tinned-copper-cable", 125},
            {"bob-battery-2", 125},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-silver-plate"] = {"angels-wire-silver", 125},
            ["electric-engine-unit"] = {"engine-unit", 125},
            {"angels-plate-chrome", 125},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-lithium-sulfur-battery", 125},
            {"kr-imersium-beam", 125},
            {"kr-rare-metals", 125},
            {"kr-silicon", 125},
            {"kr-ai-core", 125},
            {"kr-glass", 125},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-shield-mk6"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 150},
            ["uranium-235"] = {"bob-cobalt-steel-bearing", 150},
            ["nuclear-fuel"] = {"bob-titanium-plate", 150},
            ["battery"] = {"lithium-plate", 150},
            {"bob-aluminium-plate", 150},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 150},
            {"bob-solder", 150},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting", "bobelectronics", "bobplates"},
        replacements = {
            ["bob-solder"] = {"angels-wire-silver", 150},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-lithium-sulfur-battery", 150},
            {"kr-energy-control-unit", 150},
            {"kr-imersium-beam", 150},
            {"kr-matter-cube", 150},
            {"kr-rare-metals", 150},
            {"kr-silicon", 150},
            {"kr-ai-core", 150},
            {"kr-glass", 150},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-shield-mk7"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 200},
            ["uranium-238"] = {"bob-insulated-cable", 200},
            ["solid-fuel"] = {"bob-resin", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["solid-fuel"] = {"bob-titanium-gear-wheel", 200},
            ["processing-unit"] = {"processing-unit", 200},
            ["uranium-238"] = {"bob-battery-2", 200},
            {"bob-titanium-gear-wheel", 200},
            {"bob-silicon-nitride", 200},
            {"bob-battery-2", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["uranium-238"] = {"bob-solder", 200},
            ["bob-insulated-cable"] = {"bob-solder", 200},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-solder"] = {"angels-plate-platinum", 200},
        }
    },
    --Pyanodon
    {
        dependencies = {"pycoalprocessing", "pyhightech", "pyrawores",},
        replacements = {
            ["solid-fuel"] = {"re-magnet", 200},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-lithium-sulfur-battery", 200},
            {"kr-energy-control-unit", 200},
            {"kr-imersium-beam", 200},
            {"kr-matter-cube", 200},
            {"kr-rare-metals", 200},
            {"kr-silicon", 200},
            {"kr-ai-core", 200},
            {"kr-glass", 200},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-shield-mk8"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 300},
            ["uranium-235"] = {"bob-resin", 300},
            ["lubricant"] = {"zero"},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"processing-unit", 300},
            {"bob-copper-tungsten-alloy", 300},
            {"bob-cobalt-steel-alloy", 300},
            {"bob-silicon-nitride", 300},
            ["lubricant"] = {"zero"},
        }
    },
    {
        dependencies = {"bobrevamp", "angelssmelting"},
        replacements = {
            {"bob-heat-shield-tile", 300},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["plastic-bar"] = {"low-density-structure", 300},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            ["bob-resin"] = {"clowns-plate-osmium", 300},
            {"clowns-plate-magnesium", 300},
            {"clowns-plate-osmium", 300},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-lithium-sulfur-battery", 300},
            {"kr-energy-control-unit", 300},
            {"kr-imersium-beam", 300},
            {"kr-matter-cube", 300},
            {"kr-rare-metals", 300},
            {"kr-silicon", 300},
            {"kr-ai-core", 300},
            {"kr-glass", 300},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-shield-mk9"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 400},
            ["uranium-235"] = {"bob-insulated-cable", 400},
            ["petroleum-gas"] = {"zero"},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 400},
            ["uranium-235"] = {"bob-copper-tungsten-alloy", 400},
            ["battery"] = {"bob-battery-3", 400},
            ["petroleum-gas"] = {"zero"},
            {"bob-nitinol-bearing", 400},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["bob-insulated-cable"] = {"bob-solder", 400},
            {"bob-gilded-copper-cable", 400},
        }
    },
    --Angels
    {
        dependencies = {"bobrevamp", "angelssmelting"},
        replacements = {
            {"bob-heat-shield-tile", 400},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-gilder-copper-cable"] = {"angels-wire-platinum", 400},
            {"angels-wire-silver", 400},
            {"angels-ingot-chrome", 400},
        }
    },
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            ["angels-gas-methane"] = {"zero"},
            {type="fluid", name="angels-gas-monochloramine", amount=400},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-depleted-uranium", 400},
            {"clowns-plate-osmium", 400},
            {"clowns-plate-magnesium", 400},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-lithium-sulfur-battery", 400},
            {"kr-energy-control-unit", 400},
            {"kr-imersium-beam", 400},
            {"kr-matter-cube", 400},
            {"kr-rare-metals", 400},
            {"kr-silicon", 400},
            {"kr-ai-core", 400},
            {"kr-glass", 400},
        }
    },
})

if mods["Cold_biters"]then
    if SS["cb-enable-cold-warfare"].value == true then
        table.insert(RECIPES["par-shield-mk9"].ingredients, {type="item", name= "cb_alien_cold_artifact", amount=400})
    end
end

PAR.ingredient_prereq(RECIPES["par-shield-mk10"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            ["sulfuric-acid"] = {"zero"},
            {"bob-rubber", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            {"bob-nitinol-gear-wheel", 500},
            ["sulfuric-acid"] = {"zero"},
            {"bob-battery-3", 580},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["bob-rubber"] = {"bob-gilded-copper-cable", 500},
            {"bob-tinned-copper-cable", 500},
            {"bob-solder", 500},
        }
    },
    {
        dependencies = {"bobrevamp", "angelssmelting"},
        replacements = {
            {"bob-heat-shield-tile", 500},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-gilded-copper-cable"] = {"angels-wire-silver", 500},
            ["bob-solder"] = {"angels-wire-platinum", 500},
            {"angels-ingot-chrome", 500},
        }
    },
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            ["angels-liquid-sulfuric-acid"] = {"zero"},
            {type="fluid", name="angels-gas-monochloramine", amount=500},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-depleted-uranium", 500},
            {"clowns-plate-magnesium", 500},
            {"clowns-plate-osmium", 500},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-lithium-sulfur-battery", 500},
            {"kr-energy-control-unit", 500},
            {"kr-imersium-beam", 500},
            {"kr-matter-cube", 500},
            {"kr-rare-metals", 500},
            {"kr-silicon", 500},
            {"kr-ai-core", 500},
            {"kr-glass", 500},
        }
    },
})
if mods["Cold_biters"]then
    if SS["cb-enable-cold-warfare"].value == true then
        table.insert(RECIPES["par-shield-mk10"].ingredients, {type="item", name= "cb_alien_cold_artifact", amount=500})
    end
end