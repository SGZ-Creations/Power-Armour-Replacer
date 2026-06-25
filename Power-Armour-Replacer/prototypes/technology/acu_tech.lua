local DRT = data.raw["technology"]
data:extend({
	{
		type = "technology",
		name = "armour-control-unit",
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
			count = 125,
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
		prerequisites = {"armour-control-unit"},
		unit = {
			count = 125,
			ingredients = {
				{"automation-science-pack", 	 5},
				{"logistic-science-pack",   	 5},
				{"chemical-science-pack",   	 5},
				{"space-science-pack", 			 5},
				{"metallurgic-science-pack",     5},
				{"agricultural-science-pack",    5},
				{"electromagnetic-science-pack", 5},
			},
			time = 45
		},
	},
})
	--table.insert(DRT["armour-control-unit"].effects, {type = "unlock-recipe", recipe = "armour-control-unit-2"})
end