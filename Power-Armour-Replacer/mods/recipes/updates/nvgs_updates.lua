local util = require("mods.util")
util.ingredient_prereq(data.raw.recipe["par-nightvision-mk1"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            {"electronic-circuit", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["small-lamp"] = {"bob-steel-bearing", 50},
            ["iron-gear-wheel"] = {"bob-carbon", 35},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"tinned-copper-cable", 50},
        }
    },
    -- Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            ["copper-cable"] = {"angels-wire-silver", 100},
            {"bob-silicon-wafers", 45},
        }
    },
    {
        dependencies = {"angelspetrochem"},
        replacements = {
            ["lubricant"] = {"hydrogen", 250},
            ["bob-carbon"] = {"solid-bob-carbon", 150},
        }
    },
    -- SE-K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 25},
            ["small-lamp"] = {"iron-beam", 25},
            ["lubricant"] = {"mineral-water", 100},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            --["electronic-circuit"] = {"automation-core", 15},
            ["lubricant"] = {"", 0},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["par-nightvision-mk2"], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["advanced-circuit"] = {"insulated-cable", 240},
            ["processing-unit"] = {"bob-rubber", 200},
            ["nuclear-fuel"] = {"bob-advanced-processing-unit", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"bob-advanced-processing-unit", 200},
            ["nuclear-fuel"] = {"bob-titanium-plate", 200},
            ["processing-unit"] = {"bob-copper-tungsten-alloy", 200},
            {"bob-copper-tungsten-alloy", 200},
            {"bob-titanium-plate", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"gilded-copper-cable", 260},
        }
    },
    {
        dependencies = {"bobrevamp", "bobplates"},
        replacements = {
            ["petroleum-gas"] = {"dinitrogen-tetroxide", 300},
        }
    },
    --Angels
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
            ["petroleum-gas"] = {"liquid-polyethylene", 300},
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
			["rocket-fuel"] = {"", 0},
            ["petroleum-gas"] = {"", 0},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
			["nuclear-fuel"] = {"matter-cube", 2},
            {"ai-core", 10},
            {"matter-cube", 2},
        }
    },
})