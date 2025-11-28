data:extend({
	{
		type = "recipe-category",
		name = "electronics-or-handcrafting"
	}
})
table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "electronics-or-handcrafting")
table.insert(data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories, "electronics-or-handcrafting")
table.insert(data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories, "electronics-or-handcrafting")
table.insert(data.raw["character"]["character"].crafting_categories, "electronics-or-handcrafting")

if mods["space-age"] then
	table.insert(data.raw["assembling-machine"]["electromagnetic-plant"].crafting_categories, "electronics-or-handcrafting")
end

--[[
for _, recipe_name in pairs({"recipe-name-1", "recipe-name-2"}) do
	local recipe = data.raw.recipe[recipe_name]
	if recipe then
		recipe.additional_categories = { "electronics", "handcrafting" }
	end
end

for _, recipe_name in pairs({"recipe-name-1", "recipe-name-2"}) do
	local recipe = data.raw.recipe[recipe_name]
	if recipe then
		recipe.additional_categories = { "electronics", "handcrafting", "electronics-or-handcrafting", "castra-electronics-or-handcrafting",}
	end
end
]]