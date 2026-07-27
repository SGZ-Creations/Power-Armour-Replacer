data:extend({
	{
		type = "technology",
		name = "armour-control-unit-1",
		icon = "__Power-Armour-Replacer__/graphics/technology/acu/acu-tech.png",
		icon_size = 256,
		effects = {
			{
				type = "unlock-recipe",
				recipe = "armour-control-unit"
			}
		},
		prerequisites = {"chemical-science-pack"},
		unit = {
			count = 200,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack",   1},
				{"chemical-science-pack",   1},
			},
			time = 45
		},
	},
})
if mods["space-age"]then
	data:extend({
		{
			type = "technology",
			name = "armour-control-unit-2",
			icon = "__Power-Armour-Replacer__/graphics/technology/acu/acu-tech.png",
			icon_size = 256,
			effects = {
				{
					type = "unlock-recipe",
					recipe = "armour-control-unit-2"
				}
			},
			prerequisites = {"armour-control-unit-1", "tungsten-steel", "carbon-fiber", "electromagnetic-plant", "cryogenic-science-pack"},
			unit = {
				count = 200,
				ingredients = {
					{"automation-science-pack", 	 5},
					{"logistic-science-pack",   	 5},
					{"chemical-science-pack",   	 5},
					{"space-science-pack", 			 5},
					{"metallurgic-science-pack",     5},
					{"electromagnetic-science-pack", 5},
					{"cryogenic-science-pack",       5},
				},
				time = 45
			},
		},
	})
end