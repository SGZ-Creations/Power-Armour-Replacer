local PAR = require("mods.util")
---@class ProtypeRecipe
local RECIPES = data.raw["recipe"]
---@class LuaSettings
local SS = settings.startup

PAR.ingredient_prereq(RECIPES["par-armour-mk1"], {
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
            ["electronic-circuit"] = {"bob-basic-circuit-board", 100},
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
            ["bob-resin"] = {"bob-solder", 100},
            {"bob-tinned-copper-cable", 55},
        }
    },
    --Angels
    {
        dependencies = {"bobplates", "angelssmelting"},
        replacements = {
            ["bob-glass"] = {"angels-solid-carbon", 100},
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
            ["stone-brick"] = {"bob-solder", 30},
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
            ["steel-plate"] = {"kr-steel-gear-wheel", 45},
            ["electronic-circuit"] = {"kr-automation-core", 10},
        }
    },
})

if mods["bobenemies"] then
    if SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk2"].ingredients, {type="item", name= "bob-alien-artifact", amount=100})
    end
end

PAR.ingredient_prereq(RECIPES["par-armour-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"bob-basic-circuit-board", 200},
            {"bob-insulated-cable", 50},
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
            ["bob-insulated-cable"] = {"bob-solder", 50},
            {"bob-tinned-copper-cable", 55},
        }
    },--[[
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"bob-alien-artifact", 200}
        }
    },]]
    --Angels
    {
        dependencies = {"bobplates", "angelssmelting"},
        replacements = {
            ["bob-silver-plate"] = {"angels-solid-carbon", 100},
            ["bob-rubber"] = {"iron-gear-wheel", 40},
        }
    },
    {
        dependencies = {"Bio_Industries", "angelssmelting"},
        replacements = {
            ["iron-gear-wheel"] = {"bob-rubber", 20},
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
            ["steel-plate"] = {"kr-steel-gear-wheel", 50},
            ["electronic-circuit"] = {"kr-automation-core", 5},
        }
    },
})

if mods["bobenemies"] then
    if SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk3"].ingredients, {type="item", name= "bob-alien-artifact", amount=100})
    end
    if SS["bobmods-enemies-enablenewartifacts"].value == true and SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk3"].ingredients, {type="item", name= "bob-alien-artifact-orange", amount=100})
        table.insert(RECIPES["par-armour-mk3"].ingredients, {type="item", name= "bob-alien-artifact-purple", amount=100})
        table.insert(RECIPES["par-armour-mk3"].ingredients, {type="item", name= "bob-alien-artifact-yellow", amount=100})
        table.insert(RECIPES["par-armour-mk3"].ingredients, {type="item", name= "bob-alien-artifact-green", amount=100})
        table.insert(RECIPES["par-armour-mk3"].ingredients, {type="item", name= "bob-alien-artifact-blue", amount=100})
        table.insert(RECIPES["par-armour-mk3"].ingredients, {type="item", name= "bob-alien-artifact-red", amount=100})
    end
end

PAR.ingredient_prereq(RECIPES["par-armour-mk3"], {
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
    --[[
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"bob-alien-artifact", 300},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enablenewartifacts",
        replacements = {
            {"bob-alien-artifact-red", 100},
        }
    },]]
    -- Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["bob-cobalt-steel-alloy"] = {"bob-lead-plate", 100},
            ["bob-zinc-plate"] = {"angels-clay-brick", 125},
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
            ["engine-unit"] = {"kr-rare-metals", 50},
            ["advanced-circuit"] = {"kr-electronic-components", 55},
        }
    },
})


if mods["bobenemies"] then
    if SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk4"].ingredients, {type="item", name= "bob-alien-artifact", amount=100})
    end
    if SS["bobmods-enemies-enablenewartifacts"].value == true and SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk4"].ingredients, {type="item", name= "bob-alien-artifact-red", amount=100})
        table.insert(RECIPES["par-armour-mk4"].ingredients, {type="item", name= "bob-alien-artifact-orange", amount=100})
        table.insert(RECIPES["par-armour-mk4"].ingredients, {type="item", name= "bob-alien-artifact-purple", amount=100})
        table.insert(RECIPES["par-armour-mk4"].ingredients, {type="item", name= "bob-alien-artifact-yellow", amount=100})
        table.insert(RECIPES["par-armour-mk4"].ingredients, {type="item", name= "bob-alien-artifact-green", amount=100})
        table.insert(RECIPES["par-armour-mk4"].ingredients, {type="item", name= "bob-alien-artifact-blue", amount=100})
    end
end

PAR.ingredient_prereq(RECIPES["par-armour-mk4"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 400},
            ["plastic-bar"] = {"bob-insulated-cable", 180},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"electronic-circuit", 400},
            ["engine-unit"] = {"bob-silicon-plate", 160},
            ["iron-gear-wheel"] = {"bob-silver-plate", 120},
            ["copper-plate"] = {"bob-cobalt-steel-alloy", 150},
            {"bob-invar-alloy", 100},
        }
    },
    --[[
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"bob-alien-artifact", 400},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"bob-alien-artifact-red", 200},
        }
    },]]
    -- Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["engine-unit"] = {"angels-concrete-brick", 135},
            ["bob-silicon-plate"] = {"angels-concrete-brick", 135},
            {"angels-wire-silver", 55},
        }
    },
    {
        dependencies = {"angelssmelting", "bobplates", "bobelectronics"},
        replacements = {
            ["bob-cobalt-steel-alloy"] = {"bob-solder", 200},
        }
    },
    --Pyanodon
    {
        dependencies = {"pyalternativeenergy",},
        replacements = {
            ["iron-gear-wheel"] = {"mechanical-parts-01", 10},
            ["advanced-circuit"] = {"electronics-mk01", 10},
            ["engine-unit"] = {"controler-mk01", 10},
            ["plastic-bar"] = {"zero"},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["engine-unit"] = {"kr-rare-metals", 60},
            ["advanced-circuit"] = {"kr-electronic-components", 65},
        }
    },
})

if mods["bobenemies"] then
    if SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk5"].ingredients, {type="item", name= "bob-alien-artifact", amount=100})
    end
    if SS["bobmods-enemies-enablenewartifacts"].value == true and SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk5"].ingredients, {type="item", name= "bob-alien-artifact-red", amount=100})
        table.insert(RECIPES["par-armour-mk5"].ingredients, {type="item", name= "bob-alien-artifact-orange", amount=100})
        table.insert(RECIPES["par-armour-mk5"].ingredients, {type="item", name= "bob-alien-artifact-purple", amount=100})
        table.insert(RECIPES["par-armour-mk5"].ingredients, {type="item", name= "bob-alien-artifact-yellow", amount=100})
        table.insert(RECIPES["par-armour-mk5"].ingredients, {type="item", name= "bob-alien-artifact-green", amount=100})
        table.insert(RECIPES["par-armour-mk5"].ingredients, {type="item", name= "bob-alien-artifact-blue", amount=100})
    end
end

PAR.ingredient_prereq(RECIPES["par-armour-mk5"], {
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
            {"bob-sapphire-5", 50},
            {"bob-ruby-5", 50},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["engine-unit"] = {"bob-gilded-copper-cable", 500},
        }
    },
    --[[
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"bob-alien-artifact", 500},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = ("bobmods-enemies-enableartifacts", "")
        replacements = {
            {"bob-alien-artifact-red", 300},
        }
    },
    ]]
    -- Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["electric-engine-unit"] = {"angels-wire-platinum", 155},
            ["bob-silver-plate"] = {"angels-wire-silver", 55},
        }
    },
    --248K
    {
        dependencies = {"248k"},
        replacements = {
            ["uranium-235"] = {"fi_materials_glass", 400},
        }
    },
})


if mods["bobenemies"] then
    if SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk6"].ingredients, {type="item", name= "bob-alien-artifact", amount=100})
    end
    if SS["bobmods-enemies-enablenewartifacts"].value == true and SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk6"].ingredients, {type="item", name= "bob-alien-artifact-red", amount=100})
        table.insert(RECIPES["par-armour-mk6"].ingredients, {type="item", name= "bob-alien-artifact-orange", amount=100})
        table.insert(RECIPES["par-armour-mk6"].ingredients, {type="item", name= "bob-alien-artifact-purple", amount=100})
        table.insert(RECIPES["par-armour-mk6"].ingredients, {type="item", name= "bob-alien-artifact-yellow", amount=100})
        table.insert(RECIPES["par-armour-mk6"].ingredients, {type="item", name= "bob-alien-artifact-green", amount=100})
        table.insert(RECIPES["par-armour-mk6"].ingredients, {type="item", name= "bob-alien-artifact-blue", amount=100})
        if mods["bobplates"] then
            Remove("par-armour-mk6", "bob-alien-artifact-blue")
            Remove("par-armour-mk6", "bob-alien-artifact-orange")
            table.insert(RECIPES["par-armour-mk6"].ingredients, {type="item", name= "bob-alien-blue-alloy", amount=100})
            table.insert(RECIPES["par-armour-mk6"].ingredients, {type="item", name= "bob-alien-orange-alloy", amount=100})
        end
    end
end

PAR.ingredient_prereq(RECIPES["par-armour-mk6"], {
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
            {"bob-sapphire-5", 100},
            {"bob-ruby-5", 100},
        }
    },--[[
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
            {"bob-alien-artifact", 500},
            {"bob-alien-artifact-red", 400},
        }
    },]]
    --Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            ["processing-unit"] = {"plastic-bar", 100},
            ["bob-gold-plate"] = {"bob-cobalt-steel-alloy", 100},
            {"bob-gilded-copper-cable", 55},
        }
    },
})

if mods["bobenemies"] then
    if SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk7"].ingredients, {type="item", name= "bob-alien-artifact", amount=100})
    end
    if SS["bobmods-enemies-enablenewartifacts"].value == true and SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk7"].ingredients, {type="item", name= "bob-alien-artifact-red", amount=100})
        table.insert(RECIPES["par-armour-mk7"].ingredients, {type="item", name= "bob-alien-artifact-orange", amount=100})
        table.insert(RECIPES["par-armour-mk7"].ingredients, {type="item", name= "bob-alien-artifact-purple", amount=100})
        table.insert(RECIPES["par-armour-mk7"].ingredients, {type="item", name= "bob-alien-artifact-yellow", amount=100})
        table.insert(RECIPES["par-armour-mk7"].ingredients, {type="item", name= "bob-alien-artifact-green", amount=100})
        table.insert(RECIPES["par-armour-mk7"].ingredients, {type="item", name= "bob-alien-artifact-blue", amount=100})
        if mods["bobplates"] then
            Remove("par-armour-mk7", "bob-alien-artifact-blue")
            Remove("par-armour-mk7", "bob-alien-artifact-orange")
            table.insert(RECIPES["par-armour-mk7"].ingredients, {type="item", name= "bob-alien-blue-alloy", amount=100})
            table.insert(RECIPES["par-armour-mk7"].ingredients, {type="item", name= "bob-alien-orange-alloy", amount=100})
        end
    end
end

PAR.ingredient_prereq(RECIPES["par-armour-mk7"], {
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
            {"bob-sapphire-5", 50},
            {"bob-ruby-5", 50},
            {"bob-emerald-5", 50},
            {"bob-amethyst-5", 50},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"bob-gilded-copper-cable", 250},
            {"bob-solder", 150},
        }
    },--[[
    {
        dependencies = {"bobenemies", "bobplates"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"bob-alien-orange-alloy", 100},
        }
    },
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"bob-alien-artifact", 700},
            {"bob-alien-artifact-red", 500},
        }
    },]]
    --Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            {"bob-glass", 50},
        }
    },
})

if mods["bobenemies"] then
    if SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk8"].ingredients, {type="item", name= "bob-alien-artifact", amount=100})
    end
    if SS["bobmods-enemies-enablenewartifacts"].value == true and SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk8"].ingredients, {type="item", name= "bob-alien-artifact-red", amount=100})
        table.insert(RECIPES["par-armour-mk8"].ingredients, {type="item", name= "bob-alien-artifact-orange", amount=100})
        table.insert(RECIPES["par-armour-mk8"].ingredients, {type="item", name= "bob-alien-artifact-purple", amount=100})
        table.insert(RECIPES["par-armour-mk8"].ingredients, {type="item", name= "bob-alien-artifact-yellow", amount=100})
        table.insert(RECIPES["par-armour-mk8"].ingredients, {type="item", name= "bob-alien-artifact-green", amount=100})
        table.insert(RECIPES["par-armour-mk8"].ingredients, {type="item", name= "bob-alien-artifact-blue", amount=100})
        if mods["bobplates"] then
            Remove("par-armour-mk8", "bob-alien-artifact-blue")
            Remove("par-armour-mk8", "bob-alien-artifact-orange")
            table.insert(RECIPES["par-armour-mk8"].ingredients, {type="item", name= "bob-alien-blue-alloy", amount=100})
            table.insert(RECIPES["par-armour-mk8"].ingredients, {type="item", name= "bob-alien-orange-alloy", amount=100})
        end
    end
end

PAR.ingredient_prereq(RECIPES["par-armour-mk8"], {
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
            {"bob-sapphire-5", 100},
            {"bob-ruby-5", 100},
            {"bob-emerald-5", 100},
            {"bob-amethyst-5", 100},
        }
    },
    {
        dependencies = {"bobrevamp"},
        replacements = {
            {"bob-heat-shield-tile", 200},
        }
    },--[[
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"bob-alien-artifact", 800},
            {"bob-alien-artifact-red", 600},
        }
    },]]
})

if mods["Cold_biters"]then
    if SS["cb-enable-cold-warfare"].value == true then
        table.insert(RECIPES["par-armour-mk9"].ingredients, {type="item", name= "cb_alien_cold_artifact", amount=400})
    end
end

if mods["bobenemies"] then
    if SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk9"].ingredients, {type="item", name= "bob-alien-artifact", amount=100})
    end
    if SS["bobmods-enemies-enablenewartifacts"].value == true and SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk9"].ingredients, {type="item", name= "bob-alien-artifact-red", amount=100})
        table.insert(RECIPES["par-armour-mk9"].ingredients, {type="item", name= "bob-alien-artifact-orange", amount=100})
        table.insert(RECIPES["par-armour-mk9"].ingredients, {type="item", name= "bob-alien-artifact-purple", amount=100})
        table.insert(RECIPES["par-armour-mk9"].ingredients, {type="item", name= "bob-alien-artifact-yellow", amount=100})
        table.insert(RECIPES["par-armour-mk9"].ingredients, {type="item", name= "bob-alien-artifact-green", amount=100})
        table.insert(RECIPES["par-armour-mk9"].ingredients, {type="item", name= "bob-alien-artifact-blue", amount=100})
        if mods["bobplates"] then
            Remove("par-armour-mk9", "bob-alien-artifact-blue")
            Remove("par-armour-mk9", "bob-alien-artifact-orange")
            table.insert(RECIPES["par-armour-mk9"].ingredients, {type="item", name= "bob-alien-blue-alloy", amount=100})
            table.insert(RECIPES["par-armour-mk9"].ingredients, {type="item", name= "bob-alien-orange-alloy", amount=100})
        end
    end
end

PAR.ingredient_prereq(RECIPES["par-armour-mk9"], {
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
    },--[[
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"bob-alien-artifact", 900},
            {"bob-alien-artifact-red", 700},
        }
    },
    {
        dependencies = {"bobenemies", "bobplates"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"bob-alien-orange-alloy", 200},
        }
    },]]
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            {"angels-reinforced-concrete-brick", 200},
        }
    },
    --[[
    --Cold Bitters
    {
        dependencies = {"Cold_biters"},
        setting = "cb-enable-cold-warfare",
        replacements = {
            {"cb_alien_cold_artifact", 400},
        }
    },
    ]]
    -- SE K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["lubricant"] = {"zero"},
            ["solar-panel"] = {"zero"},
            {"se-heavy-assembly", 30},
			{"se-quantum-processor", 10},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["lubricant"] = {"zero"},
			{"kr-lithium-sulfur-battery", 450},
        }
    },
})

if mods["Cold_biters"]then
    if SS["cb-enable-cold-warfare"].value == true then
        table.insert(RECIPES["par-armour-mk10"].ingredients, {type="item", name= "cb_alien_cold_artifact", amount=500})
    end
end

if mods["bobenemies"] then
    if SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk10"].ingredients, {type="item", name= "bob-alien-artifact", amount=100})
    end
    if SS["bobmods-enemies-enablenewartifacts"].value == true and SS["bobmods-enemies-enableartifacts"].value == true then
        table.insert(RECIPES["par-armour-mk10"].ingredients, {type="item", name= "bob-alien-artifact-red", amount=100})
        table.insert(RECIPES["par-armour-mk10"].ingredients, {type="item", name= "bob-alien-artifact-orange", amount=100})
        table.insert(RECIPES["par-armour-mk10"].ingredients, {type="item", name= "bob-alien-artifact-purple", amount=100})
        table.insert(RECIPES["par-armour-mk10"].ingredients, {type="item", name= "bob-alien-artifact-yellow", amount=100})
        table.insert(RECIPES["par-armour-mk10"].ingredients, {type="item", name= "bob-alien-artifact-green", amount=100})
        table.insert(RECIPES["par-armour-mk10"].ingredients, {type="item", name= "bob-alien-artifact-blue", amount=100})
        if mods["bobplates"] then
            Remove("par-armour-mk10", "bob-alien-artifact-blue")
            Remove("par-armour-mk10", "bob-alien-artifact-orange")
            table.insert(RECIPES["par-armour-mk10"].ingredients, {type="item", name= "bob-alien-blue-alloy", amount=100})
            table.insert(RECIPES["par-armour-mk10"].ingredients, {type="item", name= "bob-alien-orange-alloy", amount=100})
        end
    end
end

PAR.ingredient_prereq(RECIPES["par-armour-mk10"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["processing-unit"] = {"bob-advanced-processing-unit", 1000},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            --{type="fluid", name="carbon-dioxide", amount=500},-- Adding fluid just works Thanks PEZ Then it must have broken again due to being disabled.
            ["processing-unit"] = {"bob-advanced-processing-unit", 1000},
            ["low-density-structure"] = {"bob-copper-tungsten-alloy", 500},
            {"bob-nitinol-alloy", 600},
            {"bob-nitinol-bearing", 600},
            {"bob-sapphire-5", 100},
            {"bob-ruby-5", 100},
            {"bob-emerald-5", 100},
            {"bob-amethyst-5", 100},
            {"bob-topaz-5", 100},
            {"bob-diamond-5", 100},
        }
    },--[[
    {
        dependencies = {"bobenemies"},
        setting = "bobmods-enemies-enableartifacts",
        replacements = {
            {"bob-alien-artifact", 1000},
            {"bob-alien-artifact-red", 800},
        }
    },]]
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
    --[[
    --Cold Bitters
    {
        dependencies = {"Cold_biters"},
        setting = "cb-enable-cold-warfare",
        replacements = {
            {"cb_alien_cold_artifact", 500},
        }
    },
    ]]
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
            ["processing-unit"] = {"zero"},
            ["advanced-circuit"] = {"zero"},
            ["low-density-structure"] = {"zero"},
            {"se-nanomaterial", 200},
            {"se-heavy-assembly", 50},
            {"se-naquium-processor", 20},
			{"se-quantum-processor", 20},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["processing-unit"] = {"zero"},
            ["advanced-circuit"] = {"zero"},
            ["low-density-structure"] = {"zero"},
			{"kr-lithium-sulfur-battery", 500},
            {"kr-energy-control-unit", 100},
			{"kr-imersium-beam", 500},
            {"kr-matter-cube", 20},
            {"kr-ai-core", 10},
        }
    },
})