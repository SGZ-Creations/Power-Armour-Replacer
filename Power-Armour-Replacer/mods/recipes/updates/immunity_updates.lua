local util = require("mods.util")
--Compatibility section
util.ingredient_prereq(data.raw.recipe["par-belt-immunity-mk1"], {
    {
        dependencies = {"bobelectronics",},
        replacements = {
			{"electronic-circuit", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-plate"] = {"steel-bearing", 150},
            {"carbon", 40},
        }
    },
    -- Angels
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            ["lubricant"] = {"hydrogen", 250},
        }
    },
    --248K
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
        ["battery"] = {"lithium-ion-battery", 35},
        }
    },
    {
        dependencies = {"248k"},
        replacements = {
        ["battery"] = {"el_lithium_battery", 35},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 20},
            ["lubricant"] = {"mineral-water", 100},
        }
    },
    --SE
    {
        dependencies = {"space-exploration"},
        replacements = {
            --["electronic-circuit"] = {"automation-core", 10},
            ["lubricant"] = {"", 0},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["par-belt-immunity-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["nuclear-fuel"] = {"advanced-processing-unit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["nuclear-fuel"] = {"advanced-processing-unit", 200},
            ["sulfur"] = {"tungsten-plate", 200},
            {"cobalt-steel-alloy", 200},
        }
    },
    {
        dependencies = {"bobrevamp", "bobplates"},
        replacements = {
            ["sulfuric-acid"] = {"dinitrogen-tetroxide", 300},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 260},
        }
    },
    {
        dependencies = {"angelssmelting"},
        replacements = {
            {"angels-plate-chrome", 300},
        }
    },
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            ["dinitrogen-tetroxide"] = {"liquid-polyethylene", 300},
            ["sulfuric-acid"] = {"liquid-polyethylene", 300},
        }
    },
    --248K
    {
        dependencies = {"248k"},
        replacements = {
            {"fi_materials_titan", 350},
            {"gr_materials_circuit", 100},
            {"fu_materials_KFK", 100},
        }
    },
    {
        dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
        replacements = {
            ["fi_materials_titan"] = {"titanium-plate", 350},
        }
    },
    -- SE K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["low-density-structure"] = {"se-nanomaterial", 50},
            ["processing-unit"] = {"se-naquium-processor", 2},
			["advanced-circuit"] = {"se-quantum-processor", 2},
            ["rocket-fuel"] = {"", 0},
            ["sulfuric-acid"] = {"", 0},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["nuclear-fuel"] = {"matter-cube", 2},
            ["sulfur"] = {"ai-core", 10},
            {"matter-cube", 2},
        }
    },
})