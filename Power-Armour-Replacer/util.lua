local util = {}

--Recipe Compatibility Generator

util.update_ingredients = function(recipe, replacements)
    local ingredients = recipe.ingredients
    local remove = {}
    local not_crafting = false
    for i, ingredient in pairs(ingredients) do
        if ingredient.type then
            local replacement = replacements[ingredient.name]
            if replacement then
                ingredient.name = replacement[1]
                ingredient.amount = replacement[2]
                --where type exists, check if fluid
                if ingredient.type == "fluid" then
                    --trigger category change
                    not_crafting = true
                end
            end
        else
            local replacement = replacements[ingredient[1]]
            if replacement then
                ingredient[1] = replacement[1]
                ingredient[2] = replacement[2]
            end
        end
        if ingredient[1] == "" or ingredient.name == "" then
            remove[#remove+1]=i
        end
    end
    for k, new_ingredient in pairs(replacements) do
        if type(k) ~= "string" then
            ingredients[#ingredients+1] = new_ingredient
        end
    end
    for _, remove_ingredient in pairs(remove) do
        table.remove(ingredients,remove_ingredient)
    end
    --check if category == default, change it
    if not_crafting and recipe.category == "crafting" then
        recipe.category = "crafting-with-fluid"
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

-- Technology Prerequisites Converter
local replace = {
    ["night-vision-equipment"] = "nv-bi_mk1",
    ["belt-immunity-equipment"] = "nv-bi_mk1",
    ["modular-armor"] = "armour_1",
    ["power-armor"] = "armour_2",
    ["power-armor-2"] = "armour_3",
    ["kr-power-armor-mk3"] = "armour_3",
    ["kr-power-armor-mk4"] = "armour_4",
    ["solar-panel-equipment"] = "solar_1",
    ["personal-laser-defense-equipment"] = "laser_1",
    ["kr-personal-laser-defense-mk2-equipment"] = "laser_2",
    ["kr-personal-laser-defense-mk3-equipment"] = "laser_3",
    ["kr-personal-laser-defense-mk4-equipment"] = "laser_4",
    ["personal-roboport-equipment"] = "roboport_1",
    ["personal-roboport-mk2-equipment"] = "roboport_2",
    ["personal-roboport-mk3-equipment"] = "roboport_3",
    ["personal-roboport-mk4-equipment"] = "roboport_4",
    ["energy-shield-equipment"] = "shield_1",
    ["energy-shield-mk2-equipment"] = "shield_2",
    ["bob-energy-shield-equipment-3"] = "shield_3",
    ["bob-energy-shield-equipment-4"] = "shield_4",
    ["bob-energy-shield-equipment-5"] = "shield_5",
    ["bob-energy-shield-equipment-6"] = "shield_6",
    ["fusion-reactor-equipment"] = "fusion-reactor_1",
    ["fusion-reactor-equipment-2"] = "fusion-reactor_2",
    ["fusion-reactor-equipment-3"] = "fusion-reactor_3",
    ["fusion-reactor-equipment-4"] = "fusion-reactor_4",
    ["exoskeleton-equipment"] = "exoskeleton_1",
    ["exoskeleton-equipment-2"] = "exoskeleton_2",
    ["exoskeleton-equipment-3"] = "exoskeleton_3",
}

local function replace_prerequisites(prerequisites)
    if not prerequisites then return end
    for i, prereq in pairs(prerequisites) do
        if replace[prereq] then
            prerequisites[i] = replace[prereq]
        end
    end
end

for _, technology in pairs(data.raw.technology) do
    if technology.normal then
        replace_prerequisites(technology.normal.prerequisites)
    end
    if technology.expensive then
        replace_prerequisites(technology.expensive.prerequisites)
    end
    replace_prerequisites(technology.prerequisites)
end


--Recipe Item Converter

local item_replace = {
    ["night-vision-equipment"] = "nv_mk1",
    ["belt-immunity-equipment"] = "bi_mk1",
    ["fusion-reactor-equipment"] = "f_mk1",
    ["fusion-reactor-equipment-2"] = "f_mk2",
    ["fusion-reactor-equipment-3"] = "f_mk3",
    ["fusion-reactor-equipment-4"] = "f_mk4",
    ["nuclear-reactor-equipment"] = "f_mk2",
    ["exoskeleton-equipment"] = "e_mk1",
    ["exoskeleton-equipment-2"] = "e_mk2",
    ["exoskeleton-equipment-3"] = "e_mk3",
    ["battery-equipment"] = "b_mk1",
    ["energy-shield-mk2-equipment"] = "s_mk2",
    ["energy-shield-mk3-equipment"] = "s_mk3",
    ["energy-shield-mk4-equipment"] = "s_mk4",
    ["energy-shield-mk5-equipment"] = "s_mk5",
    ["energy-shield-mk6-equipment"] = "s_mk6",
   --[""] = "",
}

local function replace_ingredients(ingredients)
    if not ingredients then return end
    for _, item in pairs(ingredients) do
        if item.type and item.type == "fluid" then goto continue end
        local item_name = item[1] or item.name
        if item_replace[item_name] then
            if item.name then
                item.name = item_replace[item_name]
            else
                item[1] = item_replace[item_name]
            end
        end
        ::continue::
    end
end

for _, recipe in pairs(data.raw.recipe) do
    if recipe.normal then
        replace_ingredients(recipe.normal.ingredients)
    end
    if recipe.expensive then
        replace_ingredients(recipe.expensive.ingredients)
    end
    replace_ingredients(recipe.ingredients)
end

return util