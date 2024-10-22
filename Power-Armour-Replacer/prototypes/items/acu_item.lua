if not data.raw.item["rocket-control-unit"] then
	data:extend({
		{
			type = "item",
			name = "armour-control-unit",
			icon = "__Power-Armour-Replacer__/graphics/icons/acu/acu-icon.png",
			icon_size = 64, icon_mipmaps = 4,
			subgroup = "intermediate-product",
			order = "n[armour-control-unit]",
			stack_size = 500,
			weight = 2500,
		},
	})
end