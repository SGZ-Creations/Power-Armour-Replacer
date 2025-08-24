local util = {}
--https://github.com/modded-factorio/bobsmods/blob/main/boblibrary/recipe-functions.lua
--https://github.com/modded-factorio/bobsmods/blob/main/bobelectronics/data-updates.lua

--Recipe Compatibility Generator
util.update_ingredients = function(recipe, replacements)
    local ingredients = recipe.ingredients  --original list to be replaced
    local remove = {} -- local table to trim ingredients after the replacements (to maintain order)
    local not_crafting = false -- trigger for crafting cat change
    for i, ingredient in pairs(ingredients) do -- for each line of ingredients list--[[{1,{ingredient.type,ingredient.name,ingredient.amount},}]]
        local replacement = replacements[ingredient.name]--[[replacement = name{replacement[1],replacement[2]}]]
        if replacement then
            if replacement[1]=="zero" then
                remove[#remove+1]=i
            else
                ingredient.name = replacement[1]
                ingredient.amount = replacement[2]
                --where type exists, check if fluid
                if ingredient.type == "fluid" then
                    not_crafting = true
                end
            end
        end
    end
    for k, new_ingredient in pairs(replacements) do --if new, and not replacement
        if type(k) ~= "string" then
            local ingtype = "item"
            local name = new_ingredient[1] or new_ingredient.name
            local amt = new_ingredient[2] or new_ingredient.amount
            if new_ingredient.type and new_ingredient.type == "fluid" then
                ingtype = "fluid"
                not_crafting = true --trigger category change
            end
            ingredients[#ingredients+1] = {type=ingtype,name=name ,amount=amt}
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

util.update_technology = function(name, replacements)
    local technology = data.raw.technology[name]
    if not technology then
        log("Technology with name \""..name.."\" does not exist")
    return nil end
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