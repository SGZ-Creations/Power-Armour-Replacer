local util = {}

util.update_ingredients = function(recipe, replacements)
    local ingredients = recipe.ingredients
    for _, ingredient in pairs(ingredients) do
        if ingredient.type then
            local replacement = replacements[ingredient.name]
            if replacement then
                ingredient.name = replacement[1]
                ingredient.amount = replacement[2]
            end
        else
            local replacement = replacements[ingredient[1]]
            if replacement then
                ingredient[1] = replacement[1]
                ingredient[2] = replacement[2]
            end
        end
    end
    for k, new_ingredient in pairs(replacements) do
        if type(k) ~= "string" then
            ingredients[#ingredients+1] = new_ingredient
        end
    end
end

util.update_technology = function(name, replacements)
    local technology = data.raw.technology[name]
    if not technology then error("Technology with name \""..name.."\" does not exist") end
    local prerequisites = technology.prerequisites
    for i, prerequisite in pairs(prerequisites) do
        if replacements[prerequisite] then
            prerequisites[i] = replacements[prerequisite]
        end
    end
    for _, prerequisite in ipairs(replacements) do
        prerequisites[#prerequisites+1] = prerequisite
    end
end

return util