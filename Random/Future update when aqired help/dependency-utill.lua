local replace = {}
local item_replace = {}

local function replace_exists(replace_v, prerequisites)
    for _, prereq in pairs(prerequisites) do
        if prereq == replace_v then
            return true
        end
    end
end

local function replace_prerequisites(prerequisites)
if not prerequisites then return end
local remove_prereq = {}
    for i, prereq in pairs(prerequisites) do
        if replace[prereq] then
            if not replace_exists(replace[prereq], prerequisites) then
                prerequisites[i] = replace[prereq]
            else
                remove_prereq[#remove_prereq+1]=i
            end
        end
    end
    for _, rem in pairs(remove_prereq) do
        table.remove(prerequisites,rem)
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

-- Replaces Chest content

--[[
local function replace_chestitesm(chestitems)
    if not chestitems then return end
    for _, item in pairs(chestitems) do 
]]