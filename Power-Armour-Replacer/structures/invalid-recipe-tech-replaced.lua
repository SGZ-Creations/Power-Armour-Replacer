--local replace = require("compatibilities.util")
--local item_replace = require("compatibilities.util")

-- Technology Prerequisites Converter
local replace = {
    ["modular-armor"] = "par-armour-tech-1",
    ["power-armor"] = "par-armour-tech-1",
    ["power-armor-mk2"] = "par-armour-tech-2",
    ["bob-power-armor-mk3"] = "par-armour-tech-3",
    ["bob-power-armor-mk4"] = "par-armour-tech-4",
    ["bob-power-armor-mk5"] = "par-armour-tech-5",
    ["kr-power-armor-mk3"] = "par-armour-tech-3",
    ["kr-power-armor-mk4"] = "par-armour-tech-4",
    ["battery-equipment"] = "par-battery-tech-1",
    ["battery-mk2-equipment"] = "par-battery-tech-2",
    ["bob-battery-equipment-3"] = "par-battery-tech-3",
    ["bob-battery-equipment-4"] = "par-battery-tech-4",
    ["bob-battery-equipment-5"] = "par-battery-tech-5",
    ["bob-battery-equipment-6"] = "par-battery-tech-6",
    ["exoskeleton-equipment"] = "par-exoskeleton-tech-1",
    ["exoskeleton-equipment-2"] = "par-exoskeleton-tech-2",
    ["exoskeleton-equipment-3"] = "par-exoskeleton-tech-3",
    ["se-rtg-equipment"] = "par-fusion-reactor-tech-1",
    ["se-rtg-equipment-2"] = "par-fusion-reactor-tech-2",
    ["fusion-reactor-equipment"] = "par-fusion-reactor-tech-1",
    ["fusion-reactor-equipment-2"] = "par-fusion-reactor-tech-2",
    ["fusion-reactor-equipment-3"] = "par-fusion-reactor-tech-3",
    ["fusion-reactor-equipment-4"] = "par-fusion-reactor-tech-4",
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
    ["modular-armor"] = "par-armour-mk1",
    ["power-armor"] = "par-armour-mk1",
    ["power-armor-mk2"] = "par-armour-mk2",
    ["bob-power-armor-mk3"] = "par-armour-mk3",
    ["bob-power-armor-mk4"] = "par-armour-mk4",
    ["bob-power-armor-mk5"] = "par-armour-mk5",
    ["battery-equipment"] = "par-battery-mk1",
    ["battery-mk2-equipment"] = "par-battery-mk2",
    ["battery-mk3-equipment"] = "par-battery-mk3",
    ["battery-mk4-equipment"] = "par-battery-mk4",
    ["battery-mk5-equipment"] = "par-battery-mk5",
    ["battery-mk6-equipment"] = "par-battery-mk6",
    ["belt-immunity-equipment"] = "bi_mk1",
    ["exoskeleton-equipment"] = "par-exoskelton-mk1",
    ["exoskeleton-equipment-2"] = "par-exoskelton-mk2",
    ["exoskeleton-equipment-3"] = "par-exoskelton-mk3",
    ["fusion-reactor-equipment"] = "par-fusion-reactor-mk1",
    ["fusion-reactor-equipment-2"] = "par-fusion-reactor-mk2",
    ["fusion-reactor-equipment-3"] = "par-fusion-reactor-mk3",
    ["fusion-reactor-equipment-4"] = "par-fusion-reactor-mk4",
    ["nuclear-reactor-equipment"] = "par-fusion-reactor-mk2",
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