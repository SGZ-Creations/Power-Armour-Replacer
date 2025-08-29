data:extend({
	{
		type = "recipe",
		name = "armour-control-unit",
		category = "electronics-or-handcrafting",
		energy_required = 10,
		enabled = false,
		ingredients = {
			{type="item", name="advanced-circuit", amount=4},
			{type="item", name="plastic-bar", amount=2},
			{type="item", name="iron-plate", amount=2},
			{type="item", name="copper-wire", amount=5},
			{type="item", name="battery", amount=2},
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
				{type="item", name="quantum-processor", amount=2},
				{type="item", name="tungsten-plate", amount=8},
				{type="item", name="superconductor", amount=8},
				{type="item", name="carbon-fiber", amount=8},
			},
			results = {{type="item", name="armour-control-unit", amount=16}}
		},
	})
end