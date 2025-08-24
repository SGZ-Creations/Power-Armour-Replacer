---@Class RecipePrototype
local Recipe = data.raw.recipe

function Remove(recipe_name, ingredient_name)
    for i, ingredient in pairs(Recipe[recipe_name].ingredients) do
        if ingredient.name == ingredient_name then
            table.remove(Recipe[recipe_name].ingredients, i)
        end
    end
end

if mods["boblogistics"]and mods["bobplates"] then
    Remove("par-roboport-mk9", "bob-tinned-copper-cable")
end