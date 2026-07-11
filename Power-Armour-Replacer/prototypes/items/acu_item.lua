local SS = settings.startup
---@class data.RecipePrototype
local Recipe = data.raw["recipe"]

data:extend({
	{
		type = "item",
		name = "armour-control-unit",
		icon = "__Power-Armour-Replacer__/graphics/icons/acu/acu-icon.png",
		icon_size = 64,
		subgroup = "Par_Intermediates",
		order = "n[armour-control-unit]",
		stack_size = 500,
		weight = 2500,
	},
})

if mods["space-age"] then
	table.insert(Recipe["scrap-recycling"].results, {type = "item", name = "armour-control-unit", amount = SS["ArmourControlUnit"].value, independent_probability = 0.0001, show_details_in_recipe_tooltip = false})
end

if mods["recycler"]then
	data.raw["furnace"]["recycler"].result_inventory_size = 20
end

if mods["TIMSABA"] then
	table.insert(Recipe["scrap-recycling"].results, {type = "item", name = "armour-control-unit", amount = SS["ArmourControlUnit"].value, independent_probability = 0.0001, show_details_in_recipe_tooltip = false})
end

if mods["scrap-reprocessor"]then
	table.insert(Recipe["sr-electronic-scrap-reprocessing"].results, {type = "item", name = "armour-control-unit", amount = SS["ArmourControlUnit"].value, independent_probability = 0.0015, show_details_in_recipe_tooltip = false})
end

if mods["space-exploration"] then
	data.raw["item"]["armour-control-unit"].stack_size = 200
end