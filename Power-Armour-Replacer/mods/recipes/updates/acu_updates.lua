local PAR = require("mods.util")
local Recipe = data.raw.recipe

PAR.ingredient_prereq(Recipe["armour-control-unit"], {
	{
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["copper-plate"] = {"kr-rare-metals", 5},
			["iron-plate"] = {"kr-imersium-beam", 2},
        }
    },
})
PAR.ingredient_prereq(Recipe["armour-control-unit"], {
	{
        dependencies = {"bobplates"},
        replacements = {
            ["copper-plate"] = {"bob-brass-alloy", 5},
			["iron-plate"] = {"bob-invar-alloy", 5},
            ["plastic-bar"] = {"bob-aluminium-plate", 5},
            {"bob-silver-plate", 5},
        }
    }
})