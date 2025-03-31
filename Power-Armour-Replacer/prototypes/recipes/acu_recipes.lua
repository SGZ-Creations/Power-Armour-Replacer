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
--[[
if not data.raw.recipe["heavy-armor"].ingredients == {type="item", name="light-armor", amount=1}then
	table.insert(data.raw.recipe["heavy-armor"].ingredients, {type="item", name="light-armor", amount=1})
elseif data.raw.recipe["heavy-armor"].ingredients == {type="item", name="light-armor", amount=1}then return end
]]
data.raw.recipe["heavy-armor"].ingredients = {
	{type="item", name="light-armor", amount=1},
	{type="item", name="steel-plate", amount=40},
	{type="item", name="copper-plate", amount=100},
}