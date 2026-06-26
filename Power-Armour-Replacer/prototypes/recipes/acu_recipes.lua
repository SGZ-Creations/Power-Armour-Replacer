data:extend({
	{
		type = "recipe",
		name = "armour-control-unit",
		categories = {"par-electronic-hands"},
		energy_required = 10,
		enabled = false,
		ingredients = {
			{type="item", name="advanced-circuit", amount=4},
			{type="item", name="copper-plate", amount=2},
			{type="item", name="plastic-bar", amount=2},
			{type="item", name="iron-plate", amount=2},
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
			categories = {"par-electronics"},
			auto_recycle = false,
			energy_required = 10,
			enabled = false,
			ingredients = {
				{type="item", name="processing-unit", amount=20},
				{type="item", name="tungsten-plate", amount=10},
				{type="item", name="superconductor", amount=10},
				{type="item", name="carbon-fiber", amount=10},
			},
			results = {{type="item", name="armour-control-unit", amount=32}}
		},
	})
end