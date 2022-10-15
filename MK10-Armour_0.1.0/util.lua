local util = {}

replacements = {["iron-plate"] = "copper-plate"}

util.replace_ingredients = function(recipe, replacements)
    local ingredients = recipe.ingredients
    for _, ingredient in pairs(ingredients) do
        if replacements[ingredient[1]] then
            ingredient[1] = replacements[ingredient[1]]
        end
    end
end

return util