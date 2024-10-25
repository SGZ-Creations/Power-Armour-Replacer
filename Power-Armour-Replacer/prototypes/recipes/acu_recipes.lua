if not data.raw.recipe["rocket-control-unit"] then
	data:extend({
		{
			type = "recipe",
			name = "armour-control-unit",
			energy_required = 10,
			enabled = false,
			category = "crafting",
			ingredients = {
				{type="item", name="advanced-circuit", amount=4},
				{type="item", name="plastic-bar", amount=3},
				{type="item", name="battery", amount=3},
			},
			results = {{type="item", name="armour-control-unit", amount=4}}
		},
	})
end