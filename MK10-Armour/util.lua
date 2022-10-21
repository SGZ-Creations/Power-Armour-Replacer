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