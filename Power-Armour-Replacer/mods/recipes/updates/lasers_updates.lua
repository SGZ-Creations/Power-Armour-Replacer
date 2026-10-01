local PAR = require("mods.util")
local RECIPES = data.raw["recipe"]
local SS = settings.startup
PAR.ingredient_prereq(RECIPES["par-laser-mk1"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 25},
            ["copper-plate"] = {"copper-cable", 25},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-steel-bearing", 25},
            {"bob-rubber", 25},
        }
    },
    {
        dependencies = {"bobplates", "bobelectronics"},
        replacements = {
            {"bob-solder", 25},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-rubber"] = {"bob-steel-gear-wheel", 25},
            ["iron-plate"] = {"angels-solid-carbon", 25},
        }
    },
    {
        dependencies = {"bobplates", "Bio_Industries", "angelssmelting"},
        replacements = {
            ["bob-rubber"] = {"bob-rubber", 25},
        }
    },
    --Pyanodon
    {
        dependencies = {"pyalienlife"},
        replacements = {
            ["steel-plate"] = {"plastic-bar", 25},
        }
    },
    {
        dependencies = {"pypetroleumhandling",},
        replacements = {
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
            ["stone-brick"] = {"zinc-plate", 25},
        }
    },
    {
        dependencies = {"pyhightech",},
        replacements = {
            ["wood"] = {"formica", 25},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"kr-steel-beam", 25},
            ["iron-plate"] = {"kr-iron-beam", 25},
            ["copper-plate"] = {"kr-glass", 25},
            {"kr-automation-core", 25},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-laser-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 50},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["engine-unit"] = {"bob-lead-plate", 50},
            ["copper-plate"] = {"bob-glass", 50},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-tinned-copper-cable", 50},
            {"bob-insulated-cable", 50},
        }
    },
    --BioIndustries
    {
        dependencies = {"Bio_Industries", "bobplates"},
        replacements = {
            ["bob-insulated-cable"] = {"bob-rubber", 50},
        }
    },
    --Angels
    {
        dependencies = {"bobplates", "angelssmelting"},
        replacements = {
            ["bob-glass"] = {"bob-bronze-alloy", 50},
            ["bob-insulated-cable"] = {"bob-solder", 50},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["kr-automation-core"] = {"kr-automation-core", 50},
            ["engine-unit"] = {"kr-steel-beam", 50},
            ["copper-plate"] = {"kr-glass", 50},
            {"electronic-circuit", 50},
            {"kr-iron-beam", 50},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-laser-mk3"], {
    --Bob's
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["battery"] = {"bob-insulated-cable", 75},
            {"electronic-circuit", 75},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"bob-invar-alloy", 75},
            ["plastic-bar"] = {"bob-brass-alloy", 75},
            {"electronic-circuit", 75},
            {"bob-glass", 75},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"heat-pipe", 75},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["steel-plate"] = {"kr-steel-beam", 75},
            ["iron-plate"] = {"kr-iron-beam", 75},
            {"kr-electronic-components", 75},
            {"kr-automation-core", 75},
            {"kr-rare-metals", 75},
            {"kr-glass", 75},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-laser-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 100},
            ["iron-gear-wheel"] = {"bob-brass-alloy", 100},
            ["pipe"] = {"bob-nickel-plate", 100},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"heat-pipe", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-solder", 100},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-gold-plate"] = {"angels-wire-silver", 100},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-solid-white-phosphorus", 100},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-gear-wheel"] = {"kr-iron-beam", 100},
            ["steel-plate"] = {"kr-steel-beam", 100},
            {"kr-electronic-components", 100},
            {"kr-automation-core", 100},
            {"kr-rare-metals", 100},
            {"kr-glass", 100},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-laser-mk5"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"advanced-circuit", 125},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["sulfur"] = {"bob-silicon-wafer", 125},
            ["plastic-bar"] = {"bob-ruby-5", 125},
            {"advanced-circuit", 125},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["heat-pipe"] = {"bob-heat-pipe-2", 125},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-gilded-copper-cable", 125},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 125},
            {"bob-invar-alloy", 125},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-solid-white-phosphorus", 125},
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
})

PAR.ingredient_prereq(RECIPES["par-laser-mk6"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            {"bob-titanium-plate", 150},
            {"bob-sapphire-5", 150},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            ["heat-pipe"] = {"bob-heat-pipe-2", 150},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-tinned-copper-cable", 150},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["engine-unit"] = {"angels-plate-platinum", 150},
            ["sulfur"] = {"angels-mono-silicon", 150},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-solid-white-phosphorus", 150},
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
            {"kr-ai-core", 150},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-laser-mk7"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"bob-insulated-cable", 200},
            {"processing-unit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electric-engine-unit"] = {"bob-brass-alloy", 200},
            {"bob-cobalt-steel-gear-wheel", 200},
            {"bob-emerald-5", 200},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"bob-heat-pipe-3", 200 },
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            {"bob-heat-shield-tile", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-gilded-copper-cable", 200},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {type="fluid", name="clowns-liquid-dimethylmercury", amount=200},
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
            {"kr-ai-core", 200},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-laser-mk8"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"bob-insulated-cable", 300},
            {"processing-unit", 300},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["plastic-bar"] = {"bob-titanium-plate", 300},
            {"bob-amethyst-5", 300},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"bob-heat-pipe-3", 300},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            {"bob-heat-shield-tile", 300},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["bob-insulated-cable"] = {"angels-wire-platinum", 300},
        }
    },
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {type="fluid", name="clowns-liquid-dimethylmercury", amount=300},
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
            {"kr-ai-core", 300},
        }
    },
})

if mods["Cold_biters"]then
    if SS["cb-enable-cold-warfare"].value == true then
        table.insert(RECIPES["par-laser-mk9"].ingredients, {type="item", name= "cb_alien_cold_artifact", amount=400})
    end
end

PAR.ingredient_prereq(RECIPES["par-laser-mk9"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 400},
            ["advanced-circuit"] = {"bob-rubber", 400},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 400},
            ["advanced-circuit"] = {"bob-aluminium-plate", 400},
            ["steel-plate"] = {"bob-nitinol-bearing", 400},
            {"bob-nitinol-gear-wheel", 400},
            ["sulfur"] = {"bob-topaz-5", 400},
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"bob-heat-pipe-4", 400},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            ["plastic-bar"] = {"bob-heat-shield-tile", 400},
            {"bob-heat-shield-tile", 400},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"bob-copper-tungsten-alloy", 400},
            ["bob-rubber"] = {"bob-rubber", 400},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 400},
            {"clowns-plate-depleted-uranium", 400},
            {type="fluid", name="clowns-liquid-dimethylmercury", amount=400},
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
            {"kr-ai-core", 400},
        }
    },
})

if mods["Cold_biters"]then
    if SS["cb-enable-cold-warfare"].value == true then
        table.insert(RECIPES["par-laser-mk10"].ingredients, {type="item", name= "cb_alien_cold_artifact", amount=500})
    end
end

PAR.ingredient_prereq(RECIPES["par-laser-mk10"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            ["advanced-circuit"] = {"bob-insulated-cable", 500}
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 500},
            ["sulfur"] = {"bob-cobalt-steel-alloy", 500},
            ["advanced-circuit"] = {"bob-nitinol-alloy", 500},
            {"bob-nitinol-alloy", 500},
            {"bob-diamond-5", 500},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["bob-insulated-cable"] = {"bob-gilded-copper-cable", 500}
        }
    },
    {
        dependencies = {"bobpower"},
        replacements = {
            {"bob-heat-pipe-4", 500},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            {"bob-heat-shield-tile", 500},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-wire-silver", 500},
            {"angels-wire-platinum", 500},
        }
    },
    --Clowns
    {
        dependencies = {"Clowns-Processing"},
        replacements = {
            {"clowns-plate-osmium", 500},
            {"clowns-plate-depleted-uranium", 500},
            {type="fluid", name="clowns-liquid-dimethylmercury", amount=500},
        }
    },
    {
        dependencies = {"extendedangels"},
        replacements = {
            {"angels-titanium-concrete-brick", 500},
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
            {"kr-ai-core", 500},
        }
    },
})