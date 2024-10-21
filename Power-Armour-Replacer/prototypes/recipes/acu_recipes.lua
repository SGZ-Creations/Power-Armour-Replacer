if not data.raw.recipe["rocket-control-unit"] then
	data:extend({
		{
			type = "recipe",
			name = "armour-control-unit",
			energy_required = 10,
			enabled = false,
			category = "crafting",
			ingredients = {
				{type="item", name="processing-unit", amount=2},
				{type="item", name="plastic-bar", amount=2},
				{type="item", name="battery", amount=2},
			},
			results = {{type="item", name="armour-control-unit", amount=3}}
		},
	})
end