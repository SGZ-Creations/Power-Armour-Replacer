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
            {type="fluid", name="kr-mineral-water", amount=250},
            {"kr-energy-control-unit", 250},
            {"kr-automation-core", 250},
			{"kr-imersium-beam", 250},
            {"kr-iron-beam", 250},
            {"kr-silicon", 250},
            {"kr-glass", 250},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-energy-control-unit", 250},
            {"kr-automation-core", 250},
			{"kr-imersium-beam", 250},
            {"kr-ai-core", 250},
            {"kr-silicon", 250},
            {"kr-glass", 250},
        }
    },
})
PAR.ingredient_prereq(RECIPES["par-nightvision-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"bob-advanced-processing-unit", 200},
            {"bob-rubber", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"bob-advanced-processing-unit", 200},
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
            ["processing-unit"] = {"se-naquium-processor", 20},
			["advanced-circuit"] = {"se-quantum-processor", 20},
			["rocket-fuel"] = {"zero"},
            ["petroleum-gas"] = {"zero"},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            {"kr-energy-control-unit", 500},
            {"kr-automation-core", 500},
			{"kr-imersium-beam", 500},
            {"kr-matter-cube", 500},
            {"kr-ai-core", 500},
            {"kr-silicon", 500},
            {"kr-glass", 500},
        }
    },
    {
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            {"kr-energy-control-unit", 500},
            {"kr-automation-core", 500},
			{"kr-imersium-beam", 500},
            {"kr-matter-cube", 500},
            {"kr-ai-core", 500},
            {"kr-silicon", 500},
            {"kr-glass", 500},
        }
    },
})
if mods["Cold_biters"]then
    if SS["cb-enable-cold-warfare"].value == true then
        table.insert(RECIPES["par-nightvision-mk2"].ingredients, {type="item", name= "cb_alien_cold_artifact", amount=500})
    end
end