if not data.raw.recipe["rocket-control-unit"] then
	data:extend({
		{
			type = "recipe",
			name = "armour-control-unit",
			energy_required = 10,
			enabled = false,
			category = "crafting",
			ingredients = {
				{"processing-unit", 2},
				{"plastic-bar", 2},
				{"battery", 2},
			},
			results = {{"armour-control-unit", 3}}
		},
	})
end