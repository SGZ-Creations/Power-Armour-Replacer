--[[
    Clean up phase of all mods adding Technolegy Recipes for Armour's & Equipment's.
    making the game less confiubg on waht to craft and hopefully not have 2-4 recipes.
    From diffrent mods giving u multiple MK3 armours in game.

    At some point should u have 2-4 mods giving u armours this mod will do a clean up & convert your previous
    Armour, Equipment to one version. Witch i want to let u modify to your likings in the end. if it ends up being to OP u can adjust it all.

    Only exception with this mod is that i won't be doping anything regarding bob's vehicle Equipment as it has nothing to do with ti
]]

--[[
if not mods["lib"] or mods["Configurable-Armour-Suits"] then
    local message = "\n---------------------------------------------------------------------------------------------------"
    message = message .. "\nPlease Make sure u have Library & Configurable Armour & Suits installed. & not conflicting with other mods."
    message = message .. "\nShould it not be installed u can get it here: https://mods.factorio.com/mod/Configurable-Armour-Suits"
    message = message .. "\nShould it not be installed u can get it here: https://github.com/SGZ-Creations?tab=repositories"
    message = message .. "\n---------------------------------------------------------------------------------------------------"
    error(message)
end
]]

local function remove(type, name)
    data.raw[type][name] = nil
end

--armours
data.raw.recipe["modular-armor"].enabled = false
data.raw.technology["modular-armor"].enabled = false
data.raw.recipe["power-armor"].enabled = false
data.raw.technology["power-armor"].enabled = false
data.raw.recipe["power-armor-mk2"].enabled = false
data.raw.technology["power-armor-mk2"].enabled = false
-- armour section 2
data.raw.recipe["modular-armor"].hidden = true
data.raw.technology["modular-armor"].hidden = true
data.raw.recipe["power-armor"].hidden = true
data.raw.technology["power-armor"].hidden = true
data.raw.recipe["power-armor-mk2"].hidden = true
data.raw.technology["power-armor-mk2"].hidden = true

--equipment
data.raw.recipe["energy-shield-equipment"].enabled = false
data.raw.technology["energy-shield-equipment"].enabled = false
data.raw.recipe["energy-shield-mk2-equipment"].enabled = false
data.raw.technology["energy-shield-mk2-equipment"].enabled = false
data.raw.recipe["fusion-reactor-equipment"].enabled = false
data.raw.technology["fusion-reactor-equipment"].enabled = false
data.raw.recipe["night-vision-equipment"].enabled = false
data.raw.technology["night-vision-equipment"].enabled = false
data.raw.recipe["battery-equipment"].enabled = false
data.raw.technology["battery-equipment"].enabled = false
data.raw.recipe["battery-mk2-equipment"].enabled = false
data.raw.technology["battery-mk2-equipment"].enabled = false
data.raw.recipe["belt-immunity-equipment"].enabled = false
data.raw.technology["belt-immunity-equipment"].enabled = false
data.raw.recipe["exoskeleton-equipment"].enabled = false
data.raw.technology["exoskeleton-equipment"].enabled = false
data.raw.recipe["personal-roboport-equipment"].enabled = false
data.raw.technology["personal-roboport-equipment"].enabled = false
data.raw.recipe["personal-laser-defense-equipment"].enabled = false
data.raw.technology["personal-laser-defense-equipment"].enabled = false
data.raw.recipe["personal-roboport-mk2-equipment"].enabled = false
data.raw.technology["personal-roboport-mk2-equipment"].enabled = false
data.raw.recipe["solar-panel-equipment"].enabled = false
data.raw.technology["solar-panel-equipment"].enabled = false

--equipment section 2
data.raw.recipe["energy-shield-equipment"].hidden = true
data.raw.technology["energy-shield-equipment"].hidden = true
data.raw.recipe["energy-shield-mk2-equipment"].hidden = true
data.raw.technology["energy-shield-mk2-equipment"].hidden = true
data.raw.recipe["fusion-reactor-equipment"].hidden = true
data.raw.technology["fusion-reactor-equipment"].hidden = true
data.raw.recipe["night-vision-equipment"].hidden = true
data.raw.technology["night-vision-equipment"].hidden = true
data.raw.recipe["battery-equipment"].hidden = true
data.raw.technology["battery-equipment"].hidden = true
data.raw.recipe["battery-mk2-equipment"].hidden = true
data.raw.technology["battery-mk2-equipment"].hidden = true
data.raw.recipe["belt-immunity-equipment"].hidden = true
data.raw.technology["belt-immunity-equipment"].hidden = true
data.raw.recipe["exoskeleton-equipment"].hidden = true
data.raw.technology["exoskeleton-equipment"].hidden = true
data.raw.recipe["solar-panel-equipment"].hidden = true
data.raw.technology["solar-panel-equipment"].hidden = true
data.raw.recipe["personal-roboport-equipment"].hidden = true
data.raw.technology["personal-roboport-equipment"].hidden = true
data.raw.recipe["personal-laser-defense-equipment"].hidden = true
data.raw.technology["personal-laser-defense-equipment"].hidden = true
data.raw.recipe["personal-roboport-mk2-equipment"].hidden = true
data.raw.technology["personal-roboport-mk2-equipment"].hidden = true


if mods["Darkstar_utilities_fixed"] then
    --[[
    remove("armor", "terra-tech-power-armor")
    remove("armor", "terra-tech-power-armor-mk2")
    remove("technology", "terra-tech-power-armor-mk2-tech")
    remove("technology", "terra-tech-power-armor-tech")
    remove("recipe", "terra-tech-power-armor")
    remove("recipe", "terra-tech-power-armor-mk2")
    ]]
    data.raw.recipe["terra-tech-power-armor"].enabled = false
    data.raw.technology["terra-tech-power-armor-tech"].enabled = false
    data.raw.recipe["terra-tech-power-armor-mk2"].enabled = false
    data.raw.technology["terra-tech-power-armor-mk2-tech"].enabled = false
    data.raw.recipe["advanced-exoskeleton-equipment"].enabled = false
    data.raw.technology["advanced-exoskeleton-equipment"].enabled = false
    --2. section
    data.raw.recipe["terra-tech-power-armor"].hidden = true
    data.raw.technology["terra-tech-power-armor-tech"].hidden = true
    data.raw.recipe["terra-tech-power-armor-mk2"].hidden = true
    data.raw.technology["terra-tech-power-armor-mk2-tech"].hidden = true
    data.raw.recipe["advanced-exoskeleton-equipment"].hidden = true
    data.raw.technology["advanced-exoskeleton-equipment"].hidden = true
end

if mods[""] then
--armours
--[[
    remove("recipe", "bob-power-armor-mk3")
    remove("recipe", "bob-power-armor-mk4")
    remove("recipe", "bob-power-armor-5")
    remove("armor", "bob-power-armor-3")
    remove("armor", "bob-power-armor-mk4")
    remove("armor", "bob-power-armor-5")
    remove("technology", "bob-power-armor-mk3")
    remove("technology", "bob-power-armor-mk4")
    remove("technology", "bob-power-armor-5")
]]
-- Armours 1 Enabled
data.raw.recipe["bob-power-armor-mk3"].enabled = false
data.raw.technology["bob-power-armor-3"].enabled = false
data.raw.recipe["bob-power-armor-mk4"].enabled = false
data.raw.technology["bob-power-armor-4"].enabled = false
data.raw.recipe["bob-power-armor-mk5"].enabled = false
data.raw.technology["bob-power-armor-5"].enabled = false
-- Armours 2 Hidden
data.raw.recipe["bob-power-armor-mk3"].hidden = true
data.raw.technology["bob-power-armor-3"].hidden = true
data.raw.recipe["bob-power-armor-mk4"].hidden = true
data.raw.technology["bob-power-armor-4"].hidden = true
data.raw.recipe["bob-power-armor-mk5"].hidden = true
data.raw.technology["bob-power-armor-5"].hidden = true
end

if mods["bobequipment"] then

-- Equipments 1 Enabled
    data.raw.recipe["exoskeleton-equipment-2"].enabled = false
    data.raw.technology["exoskeleton-equipment-2"].enabled = false
    data.raw.recipe["exoskeleton-equipment-3"].enabled = false
    data.raw.technology["exoskeleton-equipment-3"].enabled = false
    data.raw.recipe["night-vision-equipment-2"].enabled = false
    data.raw.technology["night-vision-equipment-2"].enabled = false
    data.raw.recipe["night-vision-equipment-3"].enabled = false
    data.raw.technology["night-vision-equipment-3"].enabled = false
    data.raw.recipe["solar-panel-equipment-2"].enabled = false
    data.raw.technology["solar-panel-equipment-2"].enabled = false
    data.raw.recipe["solar-panel-equipment-3"].enabled = false
    data.raw.technology["solar-panel-equipment-3"].enabled = false
    data.raw.recipe["solar-panel-equipment-4"].enabled = false
    data.raw.technology["solar-panel-equipment-4"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-2"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-2"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-3"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-3"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-4"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-4"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-5"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-5"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-6"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-6"].enabled = false
    data.raw.recipe["battery-mk3-equipment"].enabled = false
    data.raw.technology["bob-battery-equipment-3"].enabled = false
    data.raw.recipe["battery-mk4-equipment"].enabled = false
    data.raw.technology["bob-battery-equipment-4"].enabled = false
    data.raw.recipe["battery-mk5-equipment"].enabled = false
    data.raw.technology["bob-battery-equipment-5"].enabled = false
    data.raw.recipe["battery-mk6-equipment"].enabled = false
    data.raw.technology["bob-battery-equipment-6"].enabled = false
    data.raw.recipe["personal-roboport-equipment"].enabled = false
    data.raw.recipe["personal-roboport-mk3-equipment"].enabled = false
    data.raw.recipe["personal-roboport-mk4-equipment"].enabled = false
--[[    data.raw.recipe[""].enabled = false
    data.raw.technology[""].enabled = false
    data.raw.recipe[""].enabled = false
    data.raw.technology[""].enabled = false
    data.raw.recipe[""].enabled = false
    data.raw.technology[""].enabled = false
    data.raw.recipe[""].enabled = false
    data.raw.technology[""].enabled = false
]]

-- Equipments 2 Hidden
    data.raw.recipe["exoskeleton-equipment-2"].hidden = true
    data.raw.technology["exoskeleton-equipment-2"].hidden = true
    data.raw.recipe["exoskeleton-equipment-3"].hidden = true
    data.raw.technology["exoskeleton-equipment-3"].hidden = true
    data.raw.recipe["night-vision-equipment-2"].hidden = true
    data.raw.technology["night-vision-equipment-2"].hidden = true
    data.raw.recipe["night-vision-equipment-3"].hidden = true
    data.raw.technology["night-vision-equipment-3"].hidden = true
    data.raw.recipe["solar-panel-equipment-2"].hidden = true
    data.raw.technology["solar-panel-equipment-2"].hidden = true
    data.raw.recipe["solar-panel-equipment-3"].hidden = true
    data.raw.technology["solar-panel-equipment-3"].hidden = true
    data.raw.recipe["solar-panel-equipment-4"].hidden = true
    data.raw.technology["solar-panel-equipment-4"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-2"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-2"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-3"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-3"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-4"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-4"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-5"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-5"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-6"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-6"].hidden = true
    data.raw.recipe["battery-mk3-equipment"].hidden = true
    data.raw.technology["bob-battery-equipment-3"].hidden = true
    data.raw.recipe["battery-mk4-equipment"].hidden = true
    data.raw.technology["bob-battery-equipment-4"].hidden = true
    data.raw.recipe["battery-mk5-equipment"].hidden = true
    data.raw.technology["bob-battery-equipment-5"].hidden = true
    data.raw.recipe["battery-mk6-equipment"].hidden = true
    data.raw.technology["bob-battery-equipment-6"].hidden = true
    data.raw.technology["personal-roboport-equipment"].hidden = false
    data.raw.recipe["personal-roboport-equipment"].hidden = true
    data.raw.recipe["personal-roboport-mk3-equipment"].hidden = true
    data.raw.recipe["personal-roboport-mk4-equipment"].hidden = true
--[[    data.raw.recipe[""].hidden = true
    data.raw.technology[""].hidden = true
    data.raw.recipe[""].hidden = true
    data.raw.technology[""].hidden = true
    data.raw.recipe[""].hidden = true
    data.raw.technology[""].hidden = true
    data.raw.recipe[""].hidden = true
    data.raw.technology[""].hidden = true
]]
end

if mods["RampantArsenal"] then
--armours
    data.raw.recipe["power-armor-mk3-armor-rampant-arsenal"].enabled = false
    data.raw.technology["rampant-arsenal-technology-power-armor-mk3"].enabled = false
    data.raw.recipe["mk3-battery-rampant-arsenal"].enabled = false
    data.raw.technology["rampant-arsenal-technology-battery-equipment-3"].enabled = false
    data.raw.recipe["mk3-shield-rampant-arsenal"].enabled = false
    data.raw.technology["rampant-arsenal-technology-shield-equipment-2"].enabled = false
-- armour section 2
    data.raw.recipe["power-armor-mk3-armor-rampant-arsenal"].hidden = true
    data.raw.technology["rampant-arsenal-technology-power-armor-mk3"].hidden = true
    data.raw.recipe["mk3-battery-rampant-arsenal"].hidden = true
    data.raw.technology["rampant-arsenal-technology-battery-equipment-3"].hidden = true
    data.raw.recipe["mk3-shield-rampant-arsenal"].hidden = true
    data.raw.technology["rampant-arsenal-technology-shield-equipment-2"].hidden = true
end

if mods["custom_power_armor_fix"] then
--armours
    data.raw.recipe["power-armor-mk3"].enabled = false
    data.raw.technology["power-armor-mk3"].enabled = false
    data.raw.recipe["power-armor-mk4"].enabled = false
    data.raw.technology["power-armor-mk4"].enabled = false
    data.raw.recipe["power-armor-mk5"].enabled = false
    data.raw.technology["power-armor-mk5"].enabled = false
--armour section 2
    data.raw.recipe["power-armor-mk3"].hidden = true
    data.raw.technology["power-armor-mk3"].hidden = true
    data.raw.recipe["power-armor-mk4"].hidden = true
    data.raw.technology["power-armor-mk4"].hidden = true
    data.raw.recipe["power-armor-mk5"].hidden = true
    data.raw.technology["power-armor-mk5"].hidden = true
--armour.item
--[[
    data.raw.item["power-armor-mk3"].hidden = true
    data.raw.item["power-armor-mk4"].hidden = true
    data.raw.item["power-armor-mk5"].hidden = true
]]
end

if mods["Power Armor MK3"] then
    data.raw.recipe["pamk3-pamk3"].hidden = true
    data.raw.recipe["pamk3-pamk4"].hidden = true
    data.raw.recipe["pamk3-esmk3"].hidden = true
    data.raw.recipe["pamk3-se"].hidden = true
    data.raw.recipe["pamk3-inff"].hidden = true
    data.raw.recipe["pamk3-esmk3"].hidden = true
--technology
    data.raw.technology["pamk3-pamk3"].hidden = true
    data.raw.technology["pamk3-pamk4"].hidden = true
    data.raw.technology["pamk3-esmk3"].hidden = true
    data.raw.technology["pamk3-se"].hidden = true
end

if mods["PowerAndArmor"] then
--technologies
    data.raw.technology["PaA-armor-upgrades"].enabled = false
    data.raw.technology["PaA-armor-upgrades"].hidden = true
    data.raw.technology["PaA-mk3-power-armor"].enabled = false
    data.raw.technology["PaA-mk3-power-armor"].hidden = true
    data.raw.technology["PaA-mk4-power-armor"].enabled = false
    data.raw.technology["PaA-mk4-power-armor"].hidden = true
    data.raw.technology["PaA-mk2-fusion-reactor-equipment"].enabled = false
    data.raw.technology["PaA-mk2-fusion-reactor-equipment"].hidden = true
    data.raw.technology["PaA-mk3-energy-shield-equipment"].enabled = false
    data.raw.technology["PaA-mk3-energy-shield-equipment"].hidden = true
    data.raw.technology["PaA-mk2-exoskeleton-equipment"].enabled = false
    data.raw.technology["PaA-mk2-exoskeleton-equipment"].hidden = true
    data.raw.technology["PaA-mk2-night-vision-equipment"].enabled = false
    data.raw.technology["PaA-mk2-night-vision-equipment"].hidden = true
    data.raw.technology["PaA-mk3-personal-roboport-equipment"].enabled = false
    data.raw.technology["PaA-mk3-personal-roboport-equipment"].hidden = true
    data.raw.technology["PaA-mk3-battery-equipment"].enabled = false
    data.raw.technology["PaA-mk3-battery-equipment"].hidden = true
    data.raw.technology["PaA-mk2-personal-laser-defense-equipment"].enabled = false
    data.raw.technology["PaA-mk2-personal-laser-defense-equipment"].hidden = true
    data.raw.technology["PaA-mk3-personal-laser-defense-equipment"].enabled = false
    data.raw.technology["PaA-mk3-personal-laser-defense-equipment"].hidden = true
--recipes
    data.raw.recipe["PaA-power-armor-mk3"].enabled = false
    data.raw.recipe["PaA-power-armor-mk3"].hidden = true
    data.raw.recipe["PaA-power-armor-mk4"].enabled = false
    data.raw.recipe["PaA-power-armor-mk4"].hidden = true
    data.raw.recipe["PaA-power-armor-mk2-upgrade"].enabled = false
    data.raw.recipe["PaA-power-armor-mk2-upgrade"].hidden = true
    data.raw.recipe["PaA-power-armor-mk3-upgrade"].enabled = false
    data.raw.recipe["PaA-power-armor-mk3-upgrade"].hidden = true
    data.raw.recipe["PaA-fusion-reactor-mk2-equipment"].enabled = false
    data.raw.recipe["PaA-fusion-reactor-mk2-equipment"].hidden = true
    data.raw.recipe["PaA-energy-shield-mk3-equipment"].enabled = false
    data.raw.recipe["PaA-energy-shield-mk3-equipment"].hidden = true
    data.raw.recipe["PaA-exoskeleton-mk2-equipment"].enabled = false
    data.raw.recipe["PaA-exoskeleton-mk2-equipment"].hidden = true
    data.raw.recipe["PaA-night-vision-mk2-equipment"].enabled = false
    data.raw.recipe["PaA-night-vision-mk2-equipment"].hidden = true
    data.raw.recipe["PaA-personal-roboport-mk3-equipment"].enabled = false
    data.raw.recipe["PaA-personal-roboport-mk3-equipment"].hidden = true
    data.raw.recipe["PaA-personal-dockingport-mk3-equipment"].enabled = false
    data.raw.recipe["PaA-personal-dockingport-mk3-equipment"].hidden = true
    data.raw.recipe["PaA-battery-mk3-equipment"].enabled = false
    data.raw.recipe["PaA-battery-mk3-equipment"].hidden = true
    data.raw.recipe["PaA-personal-laser-defense-mk2-equipment"].enabled = false
    data.raw.recipe["PaA-personal-laser-defense-mk2-equipment"].hidden = true
    data.raw.recipe["PaA-personal-laser-defense-mk3-equipment"].enabled = false
    data.raw.recipe["PaA-personal-laser-defense-mk3-equipment"].hidden = true
-- items
--[[
    data.raw.item["PaA-power-armor-mk3"].hidden = true
    data.raw.item["PaA-power-armor-mk4"].hidden = true
    data.raw.item["PaA-fusion-reactor-mk2-equipment"].hidden = true
    data.raw.item["PaA-energy-shield-mk3-equipment"].hidden = true
    data.raw.item["PaA-exoskeleton-mk2-equipment"].hidden = true
    data.raw.item["PaA-night-vision-mk2-equipment"].hidden = true
    data.raw.item["PaA-personal-roboport-mk3-equipment"].hidden = true
    data.raw.item["PaA-personal-dockingport-mk3-equipment"].hidden = true
    data.raw.item["PaA-battery-mk3-equipment"].hidden = true
    data.raw.item["PaA-personal-laser-defense-mk2-equipment"].hidden = true
    data.raw.item["PaA-personal-laser-defense-mk3-equipment"].hidden = true]]
end

--[[
local function convert_prototype(destination, source)
    if destination.type ~= source.type then error("trying to replace prototypes that don't match")

    local dr = data.raw

    local new_thing_name = source.name
    local overwrite_name = destination.name

    --local typeof = type -- ! Lua Function name type !
    local type = destination.type


    dr[type][PaA-power-armor-mk3] = nil

    --overwrite the prototype itself and hope it works
    source.name = overwrite_name
    dr[type][a_mk3] = source
end

    --keep overwrite item or no?
    --destination = nil --clear argument so we don't use it

    --we need to find SOURCE things, remove them, and overwrite DEST
    --item-specific? equipments and take results for SOURCE?

    --recipes that result in SOURCE?
    --recipes that have ingredient SOURCE?
    --technologies that unlock SOURCE?


local function convert_prototype(destination, source)
    if destination.type ~= source.type then error("trying to replace prototypes that don't match")

    local dr = data.raw

    local new_thing_name = source.name
    local overwrite_name = destination.name

    --local typeof = type -- ! Lua Function name type !
    local type = destination.type


    dr[type][new_thing_name] = nil

    --overwrite the prototype itself and hope it works
    source.name = overwrite_name
    dr[type][overwrite_name] = source
end
    --keep overwrite item or no?
    --destination = nil --clear argument so we don't use it

    --we need to find SOURCE things, remove them, and overwrite DEST
    --item-specific? equipments and take results for SOURCE?

    --recipes that result in SOURCE?
    --recipes that have ingredient SOURCE?
    --technologies that unlock SOURCE?]]