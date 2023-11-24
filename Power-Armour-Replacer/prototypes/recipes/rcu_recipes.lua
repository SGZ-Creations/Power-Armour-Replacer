if not data.raw.recipe["rocket-control-unit"] then
	data:extend({
		{
			type = "recipe",
			name = "rocket-control-unit",
			energy_required = 10,
			enabled = false,
			category = "crafting",
			ingredients =
			{
				{"processing-unit", 2},
				{"plastic-bar", 2},
				{"battery", 2},
			},
			results = {{"rocket-control-unit", 3}}
		},
	})
end