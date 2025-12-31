local PAR = require("mods.util")
---@class ProtypeRecipe
local RECIPES = data.raw["recipe"]
---@class LuaSettings
local SS = settings.startup

PAR.ingredient_prereq(RECIPES["par-nightvision-mk1"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"electronic-circuit", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {type="fluid", name="bob-hydrogen", amount=250},
            {"bob-tinned-copper-cable", 50},
            {"bob-silicon-wafer", 45},
            {"bob-rubber", 200},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting", "bobplates"},
        replacements = {
            {"angels-wire-silver", 100},
        }
    },
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            {"angels-solid-carbon", 150},
        }
    },
    -- SE-K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 25},
            {"kr-iron-beam", 25},
            {type="fluid", name="kr-mineral-water", amount=100},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-nightvision-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"bob-advanced-processing-unit", 200},
            ["nuclear-fuel"] = {"bob-rubber", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"bob-advanced-processing-unit", 200},
            ["nuclear-fuel"] = {"bob-titanium-plate", 200},
            {"bob-copper-tungsten-alloy", 200},
            {"bob-cobalt-steel-alloy", 200},
            {"bob-titanium-plate", 200},
            {"bob-glass", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"bob-gilded-copper-cable", 260},
        }
    },
    {
        dependencies = {"bobrevamp", "bobplates"},
        replacements = {
            {type="fluid", name="bob-ferric-chloride-solution", amount=300},
        }
    },
    --Angels
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            ["bob-ferric-chloride-solution"] = {type="fluid", name="angels-liquid-polyethylene", amount=300},
            {type="fluid", name="angels-liquid-polyethylene", amount=300},
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
            ["low-density-structure"] = {"se-nanomaterial", 50},
            ["processing-unit"] = {"se-naquium-processor", 2},
			["advanced-circuit"] = {"se-quantum-processor", 2},
			["rocket-fuel"] = {"zero"},
            ["petroleum-gas"] = {"zero"},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
			["nuclear-fuel"] = {"kr-matter-cube", 2},
            {"kr-ai-core", 10},
            {"kr-matter-cube", 2},
        }
    },
})
if mods["Cold_biters"]then
    if SS["cb-enable-cold-warfare"].value == true then
        table.insert(RECIPES["par-nightvision-mk2"].ingredients, {type="item", name= "cb_alien_cold_artifact", amount=500})
    end
end