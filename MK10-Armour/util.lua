local util = {}

util.update_ingredients = function(recipe, replacements)
    local ingredients = recipe.ingredients
    for k, ingredient in pairs(ingredients) do
        if type(k) == "string" then
            local name = ingredient[1] or ingredient["name"]
            if replacements[name] then
                ingredient = replacements[name]
            end
        else
            ingredients[#ingredients+1] = ingredient
        end
    end
end

return util