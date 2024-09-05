--local replace = require("structures.invalid-recipe-tech-replaced")
--local item_replace = require("structures.invalid-recipe-tech-replaced")

-- Technology Prerequisites Converter
local replace = {

-- Vanilla
    ["modular-armor"] = "par-armour-tech-1",
    ["power-armor"] = "par-armour-tech-1",
    ["power-armor-mk2"] = "par-armour-tech-2",
    ["battery-equipment"] = "par-battery-tech-1",
    ["battery-mk2-equipment"] = "par-battery-tech-2",
    ["energy-shield-equipment"] = "par-shield-tech-1",
    ["energy-shield-mk2-equipment"] = "par-shield-tech-2",
    ["solar-panel-equipment"] = "par-solar-panel-tech-1",
    ["exoskeleton-equipment"] = "par-exoskeleton-tech-1",
    ["personal-roboport-equipment"] = "par-roboport-tech-1",
    ["personal-roboport-mk2-equipment"] = "par-roboport-tech-2",
    ["fusion-reactor-equipment"] = "par-fusion-reactor-tech-1",
    ["belt-immunity-equipment"] = "par-night-immunity-tech-1",
    ["night-vision-equipment"] = "par-night-immunity-tech-1",
    ["personal-laser-defense-equipment"] = "par-laser-tech-1",

-- Mods
    ["bob-power-armor-mk3"] = "par-armour-tech-3",
    ["bob-power-armor-mk4"] = "par-armour-tech-4",
    ["bob-power-armor-mk5"] = "par-armour-tech-5",
    ["kr-power-armor-mk3"] = "par-armour-tech-3",
    ["kr-power-armor-mk4"] = "par-armour-tech-4",
    ["bob-battery-equipment-3"] = "par-battery-tech-3",
    ["bob-battery-equipment-4"] = "par-battery-tech-4",
    ["bob-battery-equipment-5"] = "par-battery-tech-5",
    ["bob-battery-equipment-6"] = "par-battery-tech-6",
    ["exoskeleton-equipment-2"] = "par-exoskeleton-tech-2",
    ["exoskeleton-equipment-3"] = "par-exoskeleton-tech-3",
    ["se-rtg-equipment"] = "par-fusion-reactor-tech-1",
    ["se-rtg-equipment-2"] = "par-fusion-reactor-tech-2",
    ["fusion-reactor-equipment-2"] = "par-fusion-reactor-tech-2",
    ["fusion-reactor-equipment-3"] = "par-fusion-reactor-tech-3",
    ["fusion-reactor-equipment-4"] = "par-fusion-reactor-tech-4",
    ["personal-laser-defense-equipment-2"] = "par-laser-tech-2",
    ["personal-laser-defense-equipment-3"] = "par-laser-tech-3",
    ["personal-laser-defense-equipment-4"] = "par-laser-tech-4",
    ["personal-laser-defense-equipment-5"] = "par-laser-tech-5",
    ["personal-laser-defense-equipment-6"] = "par-laser-tech-6",
    ["kr-personal-laser-defense-mk2-equipment"] = "par-laser-tech-2",
    ["kr-personal-laser-defense-mk3-equipment"] = "par-laser-tech-3",
    ["kr-personal-laser-defense-mk4-equipment"] = "par-laser-tech-4",
    ["night-vision-equipment-2"] = "par-night-immunity-tech-2",
    ["night-vision-equipment-3"] = "par-night-immunity-tech-2",
    ["solar-panel-equipment-2"] = "par-solar-panel-tech-2",
    ["solar-panel-equipment-3"] = "par-solar-panel-tech-3",
    ["solar-panel-equipment-4"] = "par-solar-panel-tech-4",
    ["personal-roboport-mk3-equipment"] = "par-roboport-tech-3",
    ["personal-roboport-mk4-equipment"] = "par-roboport-tech-4",
    ["bob-energy-shield-equipment-3"] = "par-shield-tech-3",
    ["bob-energy-shield-equipment-4"] = "par-shield-tech-4",
    ["bob-energy-shield-equipment-5"] = "par-shield-tech-5",
    ["bob-energy-shield-equipment-6"] = "par-shield-tech-6",
}
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


--Recipe Item Converter
local item_replace = {

-- Vanilla
    ["modular-armor"] = "par-armour-mk1",
    ["power-armor"] = "par-armour-mk1",
    ["power-armor-mk2"] = "par-armour-mk2",
    ["battery-equipment"] = "par-battery-mk1",
    ["battery-mk2-equipment"] = "par-battery-mk2",
    ["energy-shield-equipment"] = "par-shield-mk1",
    ["energy-shield-mk2-equipment"] = "par-shield-mk2",
    ["solar-panel-equipment"] = "par-solar-panel-mk1",
    ["exoskeleton-equipment"] = "par-exoskeleton-mk1",
    ["night-vision-equipment"] = "par-nightvision-mk1",
    ["belt-immunity-equipment"] = "par-belt-immunity-mk1",
    ["personal-roboport-equipment"] = "par-roboport-mk1",
    ["personal-roboport-mk2-equipment"] = "par-roboport-mk2",
    
-- Mods
    ["bob-power-armor-mk3"] = "par-armour-mk3",
    ["bob-power-armor-mk4"] = "par-armour-mk4",
    ["bob-power-armor-mk5"] = "par-armour-mk5",
    ["battery-mk3-equipment"] = "par-battery-mk3",
    ["battery-mk4-equipment"] = "par-battery-mk4",
    ["battery-mk5-equipment"] = "par-battery-mk5",
    ["battery-mk6-equipment"] = "par-battery-mk6",
    ["exoskeleton-equipment-2"] = "par-exoskeleton-mk2",
    ["exoskeleton-equipment-3"] = "par-exoskeleton-mk3",
    ["fusion-reactor-equipment"] = "par-fusion-reactor-mk1",
    ["fusion-reactor-equipment-2"] = "par-fusion-reactor-mk2",
    ["fusion-reactor-equipment-3"] = "par-fusion-reactor-mk3",
    ["fusion-reactor-equipment-4"] = "par-fusion-reactor-mk4",
    ["nuclear-reactor-equipment"] = "par-fusion-reactor-mk2",
    ["personal-laser-defense-equipment"] = "par-laser-mk1",
    ["personal-laser-defense-equipment-2"] = "par-laser-mk2",
    ["personal-laser-defense-equipment-3"] = "par-laser-mk3",
    ["personal-laser-defense-equipment-4"] = "par-laser-mk4",
    ["personal-laser-defense-equipment-5"] = "par-laser-mk5",
    ["personal-laser-defense-equipment-6"] = "par-laser-mk6",
    ["night-vision-equipment-2"] = "par-nightvision-mk2",
    ["night-vision-equipment-3"] = "par-nightvision-mk2",
    ["solar-panel-equipment-2"] = "par-solar-panel-mk2",
    ["solar-panel-equipment3-"] = "par-solar-panel-mk3",
    ["solar-panel-equipment-4"] = "par-solar-panel-mk4",
    ["personal-roboport-mk3-equipment"] = "par-roboport-mk3",
    ["personal-roboport-mk4-equipment"] = "par-roboport-mk4",
    ["energy-shield-mk3-equipment"] = "par-shield-mk3",
    ["energy-shield-mk4-equipment"] = "par-shield-mk4",
    ["energy-shield-mk5-equipment"] = "par-shield-mk5",
    ["energy-shield-mk6-equipment"] = "par-shield-mk6",
    ["se-rtg-equipment"] = "par-fusion-reactor-mk4",
    ["se-rtg-equipment-2"] = "par-fusion-reactor-mk7",
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

-- Replaces Chest content

--[[
local function replace_chestitesm(chestitems)
    if not chestitems then return end
    for _, item in pairs(chestitems) do 
]]