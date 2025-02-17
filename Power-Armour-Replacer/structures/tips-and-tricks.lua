--[[
	dependencies = {""},
	starting_status = "unlocked",
	is_title = true,
	consecutive = false,
]]
data:extend({
	{
		type = "tips-and-tricks-item-category",
		name = "configurable-armour-suits",
		order = "1Y-[Configurable-Armour-Suits]"
	},
	{
		type = "tips-and-tricks-item",
		name = "configurable-armour-suits",
		category = "configurable-armour-suits",
		is_title = true,
		order = "1AA",
		starting_status = "unlocked",
	},
	{
		type = "tips-and-tricks-item",
		name = "par_cas-info",
		category = "configurable-armour-suits",
		image = "__Power-Armour-Replacer__/graphics/tips/tips-settings.png",
		indent = 1,
		order = "1AB",
		starting_status = "unlocked",
	},
})

data:extend({
	{
		type = "tips-and-tricks-item-category",
		name = "power-armour-replacer",
		order = "2Z-[Power-Armour-Replacer]"
	},
	{
		type = "tips-and-tricks-item",
		name = "power-armour-replacer",
		category = "power-armour-replacer",
		is_title = true,
		order = "2AA",
		starting_status = "unlocked",
	},
	{
		type = "tips-and-tricks-item",
		name = "par_info",
		category = "power-armour-replacer",
		dependencies = {"par_cas-info"},
		order = "2AC",
		indent = 1,
		trigger = {
			type = "craft-item",
			item = "par-armour-mk1",
			event_type = "crafting-finished",
			count = 1,
		},
	},
	{
		type = "tips-and-tricks-item",
		name = "par_base-info",
		category = "power-armour-replacer",
		dependencies = {"par_info"},
		order = "2AB",
		indent = 1,
		starting_status = "unlocked",
	},
})

if mods["Power Armor MK3"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_power_armor_mk3-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			starting_status = "unlocked",
			order = "3AA",
			indent = 2,
		},
	})
end

if mods["space-exploration"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_k2-se-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			starting_status = "unlocked",
			order = "3AA",
			indent = 2,
		},
	})
end