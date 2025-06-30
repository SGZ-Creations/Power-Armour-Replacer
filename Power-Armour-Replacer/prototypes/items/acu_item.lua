---@class LuaSettings
local SS = settings.startup
---@class data.RecipePrototype
local Recipe = data.raw["recipe"]

data:extend({
	{
		type = "item",
		name = "armour-control-unit",
		icon = "__Power-Armour-Replacer__/graphics/icons/acu/acu-icon.png",
		icon_size = 64,
		subgroup = "intermediate-product",
		order = "n[armour-control-unit]",
		stack_size = 500,
		weight = 2500,
	},
})


if mods["space-age"] then
	table.insert(Recipe["scrap-recycling"].results, {type = "item", name = "armour-control-unit", amount = SS["ArmourControlUnit"].value, probability = 0.15, show_details_in_recipe_tooltip = false})
end