if not data.raw.item["rocket-control-unit"] then
	data:extend({
		{
			type = "item",
			name = "rocket-control-unit",
			icon = "__Power-Armour-Replacer__/graphics/icons/rcu/rcu-icon.png",
			icon_size = 64, icon_mipmaps = 4,
			subgroup = "intermediate-product",
			order = "n[rocket-control-unit]",
			stack_size = 200
		},
	})
end