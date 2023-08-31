--local replace = require("compatibilities.util")
--local item_replace = require("compatibilities.util")

-- Technology Prerequisites Converter
local replace = {
    ["modular-armor"] = "armour_1",
    ["power-armor"] = "armour_1",
    ["power-armor-2"] = "armour_2",
    ["bob-power-armor-mk3"] = "armour_3",
    ["bob-power-armor-mk4"] = "armour_4",
    ["bob-power-armor-mk5"] = "armour_5",
    ["kr-power-armor-mk3"] = "armour_3",
    ["kr-power-armor-mk4"] = "armour_4",
    ["battery-equipment"] = "battery_1",
    ["battery-mk2-equipment"] = "battery_2",
    ["bob-battery-equipment-3"] = "battery_3",
    ["bob-battery-equipment-4"] = "battery_4",
    ["bob-battery-equipment-5"] = "battery_5",
    ["bob-battery-equipment-6"] = "battery_6",
    ["exoskeleton-equipment"] = "exoskeleton_1",
    ["exoskeleton-equipment-2"] = "exoskeleton_2",
    ["exoskeleton-equipment-3"] = "exoskeleton_3",
    ["se-rtg-equipment"] = "fusion-reactor_1",
    ["se-rtg-equipment-2"] = "fusion-reactor_2",
    ["fusion-reactor-equipment"] = "fusion-reactor_1",
    ["fusion-reactor-equipment-2"] = "fusion-reactor_2",
    ["fusion-reactor-equipment-3"] = "fusion-reactor_3",
    ["fusion-reactor-equipment-4"] = "fusion-reactor_4",
    ["personal-laser-defense-equipment"] = "laser_1",
    ["personal-laser-defense-equipment-2"] = "laser_2",
    ["personal-laser-defense-equipment-3"] = "laser_3",
    ["personal-laser-defense-equipment-4"] = "laser_4",
    ["personal-laser-defense-equipment-5"] = "laser_5",
    ["personal-laser-defense-equipment-6"] = "laser_6",
    ["kr-personal-laser-defense-mk2-equipment"] = "laser_2",
    ["kr-personal-laser-defense-mk3-equipment"] = "laser_3",
    ["kr-personal-laser-defense-mk4-equipment"] = "laser_4",
    ["night-vision-equipment"] = "nv-bi_mk1",
    ["night-vision-equipment-2"] = "no-power-equipment_mk2",
    ["night-vision-equipment-3"] = "no-power-equipment_mk2",
    ["belt-immunity-equipment"] = "nv-bi_mk1",
    ["solar-panel-equipment"] = "solar_1",
    ["solar-panel-equipment-2"] = "solar_2",
    ["solar-panel-equipment-3"] = "solar_3",
    ["solar-panel-equipment-4"] = "solar_4",
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
    ["modular-armor"] = "a_mk1",
    ["power-armor"] = "a_mk1",
    ["power-armor-mk2"] = "a_mk2",
    ["bob-power-armor-mk3"] = "a_mk3",
    ["bob-power-armor-mk4"] = "a_mk4",
    ["bob-power-armor-mk5"] = "a_mk5",
    ["battery-equipment"] = "b_mk1",
    ["battery-mk2-equipment"] = "b_mk2",
    ["battery-mk3-equipment"] = "b_mk3",
    ["battery-mk4-equipment"] = "b_mk4",
    ["battery-mk5-equipment"] = "b_mk5",
    ["battery-mk6-equipment"] = "b_mk6",
    ["belt-immunity-equipment"] = "bi_mk1",
    ["exoskeleton-equipment"] = "e_mk1",
    ["exoskeleton-equipment-2"] = "e_mk2",
    ["exoskeleton-equipment-3"] = "e_mk3",
    ["fusion-reactor-equipment"] = "f_mk1",
    ["fusion-reactor-equipment-2"] = "f_mk2",
    ["fusion-reactor-equipment-3"] = "f_mk3",
    ["fusion-reactor-equipment-4"] = "f_mk4",
    ["nuclear-reactor-equipment"] = "f_mk2",
    ["personal-laser-defense-equipment"] = "l_mk1",
    ["personal-laser-defense-equipment-2"] = "l_mk2",
    ["personal-laser-defense-equipment-3"] = "l_mk3",
    ["personal-laser-defense-equipment-4"] = "l_mk4",
    ["personal-laser-defense-equipment-5"] = "l_mk5",
    ["personal-laser-defense-equipment-6"] = "l_mk6",
    ["night-vision-equipment"] = "nv_mk1",
    ["night-vision-equipment-2"] = "nv_mk2",
    ["night-vision-equipment-3"] = "nv_mk2",
    ["solar-panel-equipment"] = "p-s_mk1",
    ["solar-panel-equipment-2"] = "p-s_mk2",
    ["solar-panel-equipment3-"] = "p-s_mk3",
    ["solar-panel-equipment-4"] = "p-s_mk4",
    ["personal-roboport-equipment"] = "r_mk1",
    ["personal-roboport-mk2-equipment"] = "r_mk2",
    ["personal-roboport-mk3-equipment"] = "r_mk3",
    ["personal-roboport-mk4-equipment"] = "r_mk4",
    ["energy-shield-equipment"] = "s_mk1",
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

-- Replaces Chest content

--[[
local function replace_chestitesm(chestitems)
    if not chestitems then return end
    for _, item in pairs(chestitems) do 
]]