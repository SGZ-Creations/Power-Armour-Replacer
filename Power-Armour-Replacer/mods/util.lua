local PAR = {}
-- USE PAR rather than utility

--Recipe Compatibility Generator
PAR.update_ingredients = function(recipe, replacements)
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

PAR.ingredient_prereq = function(recipe, replacements, setting)
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
        PAR.update_ingredients(recipe, replacement.replacements)
        ::next_replacement::
    end
end

PAR.update_technology = function(name, replacements)
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

PAR.technology_dependancy = function(replacements)
    for dependency, technologies in pairs(replacements) do
        if type(dependency) == "table" then
            for _, mod in pairs(dependency) do
                if not mods[mod] then goto continue end
            end
        else
            if not mods[dependency] then goto continue end
        end
        for technology, prerequisites in pairs(technologies) do
            PAR.update_technology(technology, prerequisites)
        end
        ::continue::
    end
end
-------------------------------------------------------------------
-- Space Age recycling shenanigans --------------------------------
-------------------------------------------------------------------
-- only allows these new functions when quality is enabled
if mods["quality"] then
-- update recycling icon    
    PAR.update_rec_recipe_icon= function(recipe_name, icon_name, size)
    --duplicate of function bobmods.lib.recipe.update_recycling_recipe_icon(recipe_name, icon_name, size) from boblib
        local target_recipe = data.raw.recipe[recipe_name]
        local image_size = size or 64
        if type(icon_name) == "string" then
            if target_recipe then
                target_recipe.icons[2].icon = icon_name
                target_recipe.icons[2].icon_size = image_size
                target_recipe.icons[2].scale = 0.4 / (image_size / 64)
            else
                log("Recycling recipe " .. recipe_name .. " not found")
            end
        else
        log("Invalid icon input, expected string")
        end
    end
    --get icon type function for the below
    PAR.get_item_type = function(name)
        local item_type = nil
        if type(name) == "string" then
            for type_name, _ in pairs(defines.prototypes["item"]) do
                if data.raw[type_name] and data.raw[type_name][name] then
                    item_type = type_name
                end
            end
            if data.raw.fluid and data.raw.fluid[name] then
                item_type = "fluid"
            end
        else
            log("Item name is not a string")
        end
        return item_type
    end

    --update recycle recipe based on current actual recipe
    PAR.update_rec_recipe_results = function(recipe_name)
    -- check if table and re-parse as single
        if type(recipe_name) == "table" then
            for _, single_recipe in pairs(recipe_name) do
                PAR.update_rec_recipe_results(single_recipe)
            end
        end
    --start function
        if type(recipe_name) == "string" then
            local target_recipe_name = recipe_name .. "-recycling"
            local source_recipe = data.raw.recipe[recipe_name]
            local target_recipe = data.raw.recipe[target_recipe_name]
            if source_recipe then
                if target_recipe then
                    local new_time = source_recipe.energy_required or 0.5
                    local source_output_amount = 1
                    target_recipe.energy_required = new_time / 16
                    target_recipe.results = {}
                    for _, source_results in pairs(source_recipe.results) do
                        if source_results.name == recipe_name then
                            source_output_amount = source_results.amount
                        end
                    end
                    for i,_ in pairs(source_recipe.ingredients) do
                        if source_recipe.ingredients[i].type == "item" then
                            table.insert(target_recipe.results, {
                                type = "item",
                                name = source_recipe.ingredients[i].name,
                                amount = source_recipe.ingredients[i].amount / source_output_amount / 4,
                                extra_count_fraction = source_recipe.ingredients[i].amount / source_output_amount % 4 / 4,
                            })
                        end
                    end

                    --Tries to find replacement icon if item of same name exists. If not, icon replacement will have do be done manually if desired.
                    local item_type = PAR.get_item_type(recipe_name)
                    if item_type and data.raw[item_type][recipe_name] then
                        if data.raw[item_type][recipe_name].icons then
                            target_recipe.icons = { { icon = "__quality__/graphics/icons/recycling.png" } }
                            for _, icon_replacement in pairs(data.raw[item_type][recipe_name].icons) do
                                local image_size = icon_replacement.icon_size or 64
                                local image_scale = icon_replacement.scale or 1
                                table.insert(target_recipe.icons, {
                                    icon = icon_replacement.icon,
                                    icon_size = image_size,
                                    scale = 0.4 * image_scale / (image_size / 64),
                                    shift = util.mul_shift(icon_replacement.shift, 0.8),
                                    tint = icon_replacement.tint,
                                })
                            end
                        table.insert(target_recipe.icons, { icon = "__quality__/graphics/icons/recycling-top.png" })
                        end
                    end
                else
                    log("Recycling recipe " .. target_recipe_name .. " not found")
                end
            else
            log("error with finding recipe for ".. recipe_name)
            end
        end
    end
end

return PAR