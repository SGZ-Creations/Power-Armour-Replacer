if not data.raw.technology["rocket-control-unit"] then
	data:extend({
		{
			type = "technology",
			name = "rocket-control-unit",
			icon_size = 256, icon_mipmaps = 4,
			icon = "__Power-Armour-Replacer__/texture/tech/rcu.png",
			effects = {
				type = "unlock-recipe",
				recipe = "rocket-control-unit"
			},
			prerequisites = {"chemical-science-pack"},
			unit = {
			count = 500,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 45
			},
			order = "k-a"
		},
	})
end