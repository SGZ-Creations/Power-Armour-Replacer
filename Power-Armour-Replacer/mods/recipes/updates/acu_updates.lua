local PAR = require("mods.util")
local DRR = data.raw.recipe

PAR.ingredient_prereq(DRR["armour-control-unit"], {
	{
        dependencies = {"Krastorio2-spaced-out"},
        replacements = {
            ["copper-plate"] = {"kr-rare-metals", 5},
			["iron-plate"] = {"kr-imersium-beam", 2},
        }
    },
})