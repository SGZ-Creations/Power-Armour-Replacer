data:extend({
	{
		type = "recipe",
		name = "armour-control-unit",
		category = "electronics-or-handcrafting",
		energy_required = 10,
		enabled = false,
		ingredients = {
			{type="item", name="advanced-circuit", amount=4},
			{type="item", name="plastic-bar", amount=3},
			{type="item", name="battery", amount=3},
		},
		results = {{type="item", name="armour-control-unit", amount=4}}
	},
})

if mods["space-age"] then
	data:extend({
		{
			type = "recipe",
			name = "armour-control-unit-2",
            category = "electronics-or-assembling",
			auto_recycle = false,
			energy_required = 10,
			enabled = false,
			ingredients = {
				{type="item", name="tungsten-plate", amount=5},
				{type="item", name="superconductor", amount=5},
				{type="item", name="carbon-fiber", amount=5},
			},
			results = {{type="item", name="armour-control-unit", amount=8}}
		},
	})
end