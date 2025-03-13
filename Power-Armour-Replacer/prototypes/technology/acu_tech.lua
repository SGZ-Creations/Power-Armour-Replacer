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
			count = 25,
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
	table.insert(DRT["armour-control-unit"].effects, {type = "unlock-recipe", recipe = "armour-control-unit-2"})
end