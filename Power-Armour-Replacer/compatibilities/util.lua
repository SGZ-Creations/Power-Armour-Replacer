local util = {}

--Recipe Compatibility Generator

util.update_ingredients = function(recipe, replacements)
    local ingredients = recipe.ingredients  --original list to be replaced
    local remove = {} -- local table to trim ingredients after the replacements (to maintain order)
    local not_crafting = false -- trigger for crafting cat change
    for i, ingredient in pairs(ingredients) do -- for each line of ingredients list
        if ingredient.name then -- check if name type in original list
            local replacement = replacements[ingredient.name] --if replacement maps
            if replacement and replacement.type then
                ingredient = replacement -- copy all of the sub-table
                if replacement.type == "fluid" then
                    not_crafting = true --trigger category change
                end
            elseif replacement then -- if original = named, replacement not
                ingredient.name = replacement[1] --set the name to entry 1
                ingredient.amount = replacement[2] --set amount to entry 2
            end
        else
            local replacement = replacements[ingredient[1]]
            if replacement and replacement.type then
                ingredient = replacement -- copy all of the sub-table
                if replacement.type == "fluid" then
                    not_crafting = true --trigger category change
                end
            elseif replacement then
                ingredient = replacement -- copy all of the sub-table
            end
        end
        if ingredient[1] == "" or ingredient.name == "" then
            remove[#remove+1]=i
        end
    end
    for k, new_ingredient in pairs(replacements) do --if new, and not replacement
        if type(k) ~= "string" then
            ingredients[#ingredients+1] = new_ingredient                    
            if new_ingredient.type and new_ingredient.type == "fluid" then
                not_crafting = true --trigger category change
            end
        end
    end
    for _, remove_ingredient in pairs(remove) do
        table.remove(ingredients,remove_ingredient)
    end
    --check if category == default, change it
    if not_crafting then
        if recipe.category == "crafting" then
            recipe.category = "crafting-with-fluid"
        elseif recipe.category == nil then
            recipe.category = "crafting-with-fluid"
        end
    end
end

--Technology Compatibility Generator

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

util.ingredient_prereq = function(recipe, replacements, setting)
    local setting_val = settings.startup[setting] and settings.startup[setting].value or nil
    for _, replacement in pairs(replacements) do
        for _, dependency in pairs(replacement.dependencies) do
            if not mods[dependency] then
                goto next_replacement
            end
            if setting and setting_val ~= true then
                goto next_replacement
            end
        end
        util.update_ingredients(recipe, replacement.replacements)
        ::next_replacement::
    end
end

util.technology_dependancy = function(replacements)
    for dependency, technologies in pairs(replacements) do
        if type(dependency) == "table" then
            for _, mod in pairs(dependency) do
                if not mods[mod] then goto continue end
            end
        else
            if not mods[dependency] then goto continue end
        end
        for technology, prerequisites in pairs(technologies) do
            util.update_technology(technology, prerequisites)
        end
        ::continue::
    end
end
return util