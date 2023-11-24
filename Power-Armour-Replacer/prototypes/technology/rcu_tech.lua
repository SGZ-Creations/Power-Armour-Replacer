if not data.raw.technology["rocket-control-unit"] then
	data:extend({
		{
			type = "technology",
			name = "rocket-control-unit",
			icon_size = 256, icon_mipmaps = 4,
			icon = "__Power-Armour-Replacer__/texture/tech/rocket-control-unit.png",
			effects = {
				type = "unlock-recipe",
				recipe = "rocket-control-unit"
			},
			prerequisites = {"utility-science-pack", "speed-module"},
			unit = {
			count = 500,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 45
			},
			order = "k-a"
		},
	})
end