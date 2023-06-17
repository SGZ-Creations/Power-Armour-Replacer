--[[
    Clean up phase of all mods adding technology Recipes for Armour's & Equipment's.
    making the game less confusing on waht to craft and hopefully not have 2-4 recipes.
    From diffrent mods giving u multiple "MK3 armours" in game.

    At some point should u have, 2-4 mods giving u armours this mod will hopefully do a clean up & convert your previous Armour, Equipment to one version. 
    Witch i want to let u modify to your likings in the end. If it ends up being to OP u can adjust it all.

    Only exception with this mod is that i won't be duping anything regarding bob's vehicle Equipment as it has nothing to do with this.
]]
--[[
local function remove(type, name)
    data.raw[type][name] = nil
end
]]
--Enabled
    data.raw.recipe["power-armor"].enabled = false
    data.raw.recipe["modular-armor"].enabled = false
    data.raw.recipe["power-armor-mk2"].enabled = false

    data.raw.technology["modular-armor"].enabled = false
    data.raw.technology["power-armor"].enabled = false
    data.raw.technology["power-armor-mk2"].enabled = false

--Hidden
    data.raw.recipe["modular-armor"].hidden = true
    data.raw.recipe["power-armor"].hidden = true
    data.raw.recipe["power-armor-mk2"].hidden = true

    data.raw.technology["modular-armor"].hidden = true
    data.raw.technology["power-armor"].hidden = true
    data.raw.technology["power-armor-mk2"].hidden = true

--Enabled
    data.raw.technology["energy-shield-equipment"].enabled = false
    data.raw.technology["energy-shield-mk2-equipment"].enabled = false
    data.raw.technology["fusion-reactor-equipment"].enabled = false
    data.raw.technology["night-vision-equipment"].enabled = false
    data.raw.technology["battery-equipment"].enabled = false
    data.raw.technology["battery-mk2-equipment"].enabled = false
    data.raw.technology["belt-immunity-equipment"].enabled = false
    data.raw.technology["exoskeleton-equipment"].enabled = false
    data.raw.technology["personal-laser-defense-equipment"].enabled = false
    data.raw.technology["personal-roboport-equipment"].enabled = false
    data.raw.technology["personal-roboport-mk2-equipment"].enabled = false
    data.raw.technology["solar-panel-equipment"].enabled = false

    data.raw.recipe["solar-panel-equipment"].enabled = false
    data.raw.recipe["energy-shield-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk2-equipment"].enabled = false
    data.raw.recipe["fusion-reactor-equipment"].enabled = false
    data.raw.recipe["night-vision-equipment"].enabled = false
    data.raw.recipe["belt-immunity-equipment"].enabled = false
    data.raw.recipe["battery-equipment"].enabled = false
    data.raw.recipe["battery-mk2-equipment"].enabled = false
    data.raw.recipe["exoskeleton-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment"].enabled = false
    data.raw.recipe["personal-roboport-equipment"].enabled = false
    data.raw.recipe["personal-roboport-mk2-equipment"].enabled = false

--Hidden
    data.raw.technology["fusion-reactor-equipment"].hidden = true
    data.raw.technology["energy-shield-equipment"].hidden = true
    data.raw.technology["night-vision-equipment"].hidden = true
    data.raw.technology["energy-shield-mk2-equipment"].hidden = true
    data.raw.technology["exoskeleton-equipment"].hidden = true
    data.raw.technology["belt-immunity-equipment"].hidden = true
    data.raw.technology["battery-equipment"].hidden = true
    data.raw.technology["battery-mk2-equipment"].hidden = true
    data.raw.technology["solar-panel-equipment"].hidden = true
    data.raw.technology["personal-roboport-equipment"].hidden = true
    data.raw.technology["personal-roboport-mk2-equipment"].hidden = true
    data.raw.technology["personal-laser-defense-equipment"].hidden = true

    data.raw.recipe["energy-shield-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk2-equipment"].hidden = true
    data.raw.recipe["fusion-reactor-equipment"].hidden = true
    data.raw.recipe["night-vision-equipment"].hidden = true
    data.raw.recipe["battery-equipment"].hidden = true
    data.raw.recipe["battery-mk2-equipment"].hidden = true
    data.raw.recipe["belt-immunity-equipment"].hidden = true
    data.raw.recipe["exoskeleton-equipment"].hidden = true
    data.raw.recipe["solar-panel-equipment"].hidden = true
    data.raw.recipe["personal-roboport-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment"].hidden = true
    data.raw.recipe["personal-roboport-mk2-equipment"].hidden = true


if mods["Darkstar_utilities_fixed"] then
--Enabled
    data.raw.technology["terra-tech-power-armor-tech"].enabled = false
    data.raw.technology["terra-tech-power-armor-mk2-tech"].enabled = false
    data.raw.technology["advanced-exoskeleton-equipment"].enabled = false

    data.raw.recipe["terra-tech-power-armor"].enabled = false
    data.raw.recipe["terra-tech-power-armor-mk2"].enabled = false
    data.raw.recipe["advanced-exoskeleton-equipment"].enabled = false
    --Hidden
    data.raw.technology["terra-tech-power-armor-tech"].hidden = true
    data.raw.technology["terra-tech-power-armor-mk2-tech"].hidden = true
    data.raw.technology["advanced-exoskeleton-equipment"].hidden = true

    data.raw.recipe["terra-tech-power-armor"].hidden = true
    data.raw.recipe["terra-tech-power-armor-mk2"].hidden = true
    data.raw.recipe["advanced-exoskeleton-equipment"].hidden = true
end

if mods["bobwarfare"] then
--Enabled
    data.raw.recipe["bob-power-armor-mk3"].enabled = false
    data.raw.recipe["bob-power-armor-mk4"].enabled = false
    data.raw.recipe["bob-power-armor-mk5"].enabled = false

    data.raw.technology["bob-power-armor-3"].enabled = false
    data.raw.technology["bob-power-armor-4"].enabled = false
    data.raw.technology["bob-power-armor-5"].enabled = false

--Hidden
    data.raw.recipe["bob-power-armor-mk3"].hidden = true
    data.raw.recipe["bob-power-armor-mk4"].hidden = true
    data.raw.recipe["bob-power-armor-mk5"].hidden = true

    data.raw.technology["bob-power-armor-3"].hidden = true
    data.raw.technology["bob-power-armor-4"].hidden = true
    data.raw.technology["bob-power-armor-5"].hidden = true
end

if mods["bobequipment"] then
--Enabled
    data.raw.technology["bob-battery-equipment-3"].enabled = false
    data.raw.technology["bob-battery-equipment-4"].enabled = false
    data.raw.technology["bob-battery-equipment-5"].enabled = false
    data.raw.technology["bob-battery-equipment-6"].enabled = false
    data.raw.technology["exoskeleton-equipment-2"].enabled = false
    data.raw.technology["exoskeleton-equipment-3"].enabled = false
    data.raw.technology["solar-panel-equipment-2"].enabled = false
    data.raw.technology["solar-panel-equipment-3"].enabled = false
    data.raw.technology["solar-panel-equipment-4"].enabled = false
    data.raw.technology["night-vision-equipment-2"].enabled = false
    data.raw.technology["night-vision-equipment-3"].enabled = false
    data.raw.technology["fusion-reactor-equipment-2"].enabled = false
    data.raw.technology["fusion-reactor-equipment-3"].enabled = false
    data.raw.technology["fusion-reactor-equipment-4"].enabled = false
    data.raw.technology["bob-energy-shield-equipment-3"].enabled = false
    data.raw.technology["bob-energy-shield-equipment-4"].enabled = false
    data.raw.technology["bob-energy-shield-equipment-5"].enabled = false
    data.raw.technology["bob-energy-shield-equipment-6"].enabled = false
    data.raw.technology["personal-roboport-mk3-equipment"].enabled = false
    data.raw.technology["personal-roboport-mk4-equipment"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-2"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-3"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-4"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-5"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-6"].enabled = false
    --data.raw.technology[""].enabled = false

    data.raw.recipe["battery-mk3-equipment"].enabled = false
    data.raw.recipe["battery-mk4-equipment"].enabled = false
    data.raw.recipe["battery-mk5-equipment"].enabled = false
    data.raw.recipe["battery-mk6-equipment"].enabled = false
    data.raw.recipe["exoskeleton-equipment-2"].enabled = false
    data.raw.recipe["exoskeleton-equipment-3"].enabled = false
    data.raw.recipe["solar-panel-equipment-2"].enabled = false
    data.raw.recipe["solar-panel-equipment-3"].enabled = false
    data.raw.recipe["solar-panel-equipment-4"].enabled = false
    data.raw.recipe["night-vision-equipment-2"].enabled = false
    data.raw.recipe["night-vision-equipment-3"].enabled = false
    data.raw.recipe["fusion-reactor-equipment-2"].enabled = false
    data.raw.recipe["fusion-reactor-equipment-3"].enabled = false
    data.raw.recipe["fusion-reactor-equipment-4"].enabled = false
    data.raw.recipe["energy-shield-mk3-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk4-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk5-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk6-equipment"].enabled = false
    data.raw.recipe["personal-roboport-mk3-equipment"].enabled = false
    data.raw.recipe["personal-roboport-mk4-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-2"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-3"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-4"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-5"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-6"].enabled = false
    --data.raw.recipe[""].enabled = false
    --data.raw.recipe[""].enabled = false
    --data.raw.recipe[""].enabled = false
    --data.raw.recipe[""].enabled = false

--Hidden
    data.raw.technology["bob-battery-equipment-3"].hidden = true
    data.raw.technology["bob-battery-equipment-4"].hidden = true
    data.raw.technology["bob-battery-equipment-5"].hidden = true
    data.raw.technology["bob-battery-equipment-6"].hidden = true
    data.raw.technology["solar-panel-equipment-2"].hidden = true
    data.raw.technology["solar-panel-equipment-3"].hidden = true
    data.raw.technology["solar-panel-equipment-4"].hidden = true
    data.raw.technology["exoskeleton-equipment-2"].hidden = true
    data.raw.technology["exoskeleton-equipment-3"].hidden = true
    data.raw.technology["night-vision-equipment-2"].hidden = true
    data.raw.technology["night-vision-equipment-3"].hidden = true
    data.raw.technology["fusion-reactor-equipment-2"].hidden = true
    data.raw.technology["fusion-reactor-equipment-3"].hidden = true
    data.raw.technology["fusion-reactor-equipment-4"].hidden = true
    data.raw.technology["bob-energy-shield-equipment-3"].hidden = true
    data.raw.technology["bob-energy-shield-equipment-4"].hidden = true
    data.raw.technology["bob-energy-shield-equipment-5"].hidden = true
    data.raw.technology["bob-energy-shield-equipment-6"].hidden = true
    data.raw.technology["personal-roboport-mk3-equipment"].hidden = true
    data.raw.technology["personal-roboport-mk4-equipment"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-2"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-3"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-4"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-5"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-6"].hidden = true

    data.raw.recipe["battery-mk3-equipment"].hidden = true
    data.raw.recipe["battery-mk4-equipment"].hidden = true
    data.raw.recipe["battery-mk5-equipment"].hidden = true
    data.raw.recipe["battery-mk6-equipment"].hidden = true
    data.raw.recipe["solar-panel-equipment-2"].hidden = true
    data.raw.recipe["solar-panel-equipment-3"].hidden = true
    data.raw.recipe["solar-panel-equipment-4"].hidden = true
    data.raw.recipe["exoskeleton-equipment-2"].hidden = true
    data.raw.recipe["exoskeleton-equipment-3"].hidden = true
    data.raw.recipe["night-vision-equipment-2"].hidden = true
    data.raw.recipe["night-vision-equipment-3"].hidden = true
    data.raw.recipe["fusion-reactor-equipment-2"].hidden = true
    data.raw.recipe["fusion-reactor-equipment-3"].hidden = true
    data.raw.recipe["fusion-reactor-equipment-4"].hidden = true
    data.raw.recipe["energy-shield-mk3-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk4-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk5-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk6-equipment"].hidden = true
    data.raw.recipe["personal-roboport-mk3-equipment"].hidden = true
    data.raw.recipe["personal-roboport-mk4-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-2"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-3"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-4"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-5"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-6"].hidden = true
end

if mods["Krastorio2"] and mods["space-exploration"] then
--Hidden
    data.raw.recipe["power-armor-mk3"].hidden = true
    data.raw.recipe["power-armor-mk4"].hidden = true
    data.raw.recipe["portable-generator"].hidden = true
    data.raw.recipe["additional-engine"].hidden = true
    data.raw.recipe["advanced-additional-engine"].hidden = true
    data.raw.recipe["nuclear-reactor-equipment"].hidden = true
    data.raw.recipe["antimatter-reactor-equipment"].hidden = true
    data.raw.recipe["personal-roboport-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-mk2-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-mk3-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-mk4-equipment"].hidden = true
    --data.raw.recipe[""].hidden = true

    data.raw.technology["kr-power-armor-mk3"].hidden = true
    data.raw.technology["kr-power-armor-mk4"].hidden = true
    data.raw.technology["kr-portable-generator"].hidden = true
    data.raw.technology["kr-battery-mk3-equipment"].hidden = true
    data.raw.technology["kr-nuclear-reactor-equipment"].hidden = true
    data.raw.technology["kr-antimatter-reactor-equipment"].hidden = true
    data.raw.technology["kr-advanced-exoskeleton-equipment"].hidden = true
    data.raw.technology["kr-superior-exoskeleton-equipment"].hidden = true
    data.raw.technology["kr-imersite-night-vision-equipment"].hidden = true
    data.raw.technology["kr-personal-laser-defense-mk2-equipment"].hidden = true
    data.raw.technology["kr-personal-laser-defense-mk3-equipment"].hidden = true
    data.raw.technology["kr-personal-laser-defense-mk4-equipment"].hidden = true
    data.raw.technology["kr-advanced-additional-engine"].hidden = true
    --data.raw.technology[""].hidden = true

--Enabled
    data.raw.recipe["power-armor-mk3"].enabled = false
    data.raw.recipe["power-armor-mk4"].enabled = false
    data.raw.recipe["portable-generator"].enabled = false
    data.raw.recipe["additional-engine"].enabled = false
    data.raw.recipe["advanced-additional-engine"].enabled = false
    data.raw.recipe["nuclear-reactor-equipment"].enabled = false
    data.raw.recipe["antimatter-reactor-equipment"].enabled = false
    data.raw.recipe["personal-roboport-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-mk2-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-mk3-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-mk4-equipment"].enabled = false
    --data.raw.recipe[""].enabled = false

    data.raw.technology["kr-power-armor-mk3"].enabled = false
    data.raw.technology["kr-power-armor-mk4"].enabled = false
    data.raw.technology["battery-equipment"].enabled = false
    data.raw.technology["kr-portable-generator"].enabled = false
    data.raw.technology["kr-battery-mk3-equipment"].enabled = false
    data.raw.technology["kr-nuclear-reactor-equipment"].enabled = false
    data.raw.technology["kr-antimatter-reactor-equipment"].enabled = false
    data.raw.technology["kr-imersite-solar-panel-equipment"].enabled = false
    data.raw.technology["kr-imersite-night-vision-equipment"].enabled = false
    data.raw.technology["kr-advanced-exoskeleton-equipment"].enabled = false
    data.raw.technology["kr-superior-exoskeleton-equipment"].enabled = false
    data.raw.technology["kr-personal-laser-defense-mk2-equipment"].enabled = false
    data.raw.technology["kr-personal-laser-defense-mk3-equipment"].enabled = false
    data.raw.technology["kr-personal-laser-defense-mk4-equipment"].enabled = false
    data.raw.technology["kr-advanced-additional-engine"].enabled = false
    --data.raw.technology[""].enabled = false
    
    elseif mods["Krastorio2"] then
--Hidden
    data.raw.recipe["power-armor-mk3"].hidden = true
    data.raw.recipe["power-armor-mk4"].hidden = true
    data.raw.recipe["portable-generator"].hidden = true
    data.raw.recipe["additional-engine"].hidden = true
    data.raw.recipe["advanced-additional-engine"].hidden = true
    data.raw.recipe["nuclear-reactor-equipment"].hidden = true
    data.raw.recipe["antimatter-reactor-equipment"].hidden = true
    data.raw.recipe["personal-roboport-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk3-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk4-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-mk2-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-mk3-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-mk4-equipment"].hidden = true
    --data.raw.recipe[""].hidden = true

    data.raw.technology["kr-power-armor-mk3"].hidden = true
    data.raw.technology["kr-power-armor-mk4"].hidden = true
    data.raw.technology["kr-portable-generator"].hidden = true
    data.raw.technology["kr-battery-mk3-equipment"].hidden = true
    data.raw.technology["kr-nuclear-reactor-equipment"].hidden = true
    data.raw.technology["kr-antimatter-reactor-equipment"].hidden = true
    data.raw.technology["kr-advanced-exoskeleton-equipment"].hidden = true
    data.raw.technology["kr-superior-exoskeleton-equipment"].hidden = true
    data.raw.technology["kr-imersite-night-vision-equipment"].hidden = true
    data.raw.technology["kr-energy-shield-mk3-equipment"].hidden = true
    data.raw.technology["kr-energy-shield-mk4-equipment"].hidden = true
    data.raw.technology["kr-personal-laser-defense-mk2-equipment"].hidden = true
    data.raw.technology["kr-personal-laser-defense-mk3-equipment"].hidden = true
    data.raw.technology["kr-personal-laser-defense-mk4-equipment"].hidden = true
    data.raw.technology["kr-advanced-additional-engine"].hidden = true
    --data.raw.technology[""].hidden = true

--Enabled
    data.raw.recipe["power-armor-mk3"].enabled = false
    data.raw.recipe["power-armor-mk4"].enabled = false
    data.raw.recipe["portable-generator"].enabled = false
    data.raw.recipe["additional-engine"].enabled = false
    data.raw.recipe["advanced-additional-engine"].enabled = false
    data.raw.recipe["nuclear-reactor-equipment"].enabled = false
    data.raw.recipe["antimatter-reactor-equipment"].enabled = false
    data.raw.recipe["personal-roboport-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk3-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk4-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-mk2-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-mk3-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-mk4-equipment"].enabled = false
    --data.raw.recipe[""].enabled = false

    data.raw.technology["kr-power-armor-mk3"].enabled = false
    data.raw.technology["kr-power-armor-mk4"].enabled = false
    data.raw.technology["kr-portable-generator"].enabled = false
    data.raw.technology["kr-battery-mk3-equipment"].enabled = false
    data.raw.technology["kr-nuclear-reactor-equipment"].enabled = false
    data.raw.technology["kr-antimatter-reactor-equipment"].enabled = false
    data.raw.technology["kr-energy-shield-mk3-equipment"].enabled = false
    data.raw.technology["kr-energy-shield-mk4-equipment"].enabled = false
    data.raw.technology["kr-imersite-solar-panel-equipment"].enabled = false
    data.raw.technology["kr-imersite-night-vision-equipment"].enabled = false
    data.raw.technology["kr-advanced-exoskeleton-equipment"].enabled = false
    data.raw.technology["kr-superior-exoskeleton-equipment"].enabled = false
    data.raw.technology["kr-personal-laser-defense-mk2-equipment"].enabled = false
    data.raw.technology["kr-personal-laser-defense-mk3-equipment"].enabled = false
    data.raw.technology["kr-personal-laser-defense-mk4-equipment"].enabled = false
    data.raw.technology["kr-advanced-additional-engine"].enabled = false
    --data.raw.technology[""].enabled = false
end

if mods["space-exploration"] then
--Enabled
    data.raw.recipe["energy-shield-mk3-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk4-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk5-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk6-equipment"].enabled = false
    data.raw.recipe["personal-roboport-equipment"].enabled = false
    --data.raw.recipe[""].enabled = false
    --data.raw.recipe[""].enabled = false

    data.raw.technology["energy-shield-mk3-equipment"].enabled = false
    data.raw.technology["energy-shield-mk4-equipment"].enabled = false
    data.raw.technology["energy-shield-mk5-equipment"].enabled = false
    data.raw.technology["energy-shield-mk6-equipment"].enabled = false
    data.raw.technology["kr-battery-mk3-equipment"].enabled = false
    --data.raw.technology[""].enabled = false
    --data.raw.technology[""].enabled = false

--Hidden
    --data.raw.technology[""].hidden = true

    data.raw.recipe["personal-roboport-equipment"].hidden = true
    --data.raw.recipe[""].hidden = true
end

if mods["RampantArsenal"] then
-- Enabled 
    data.raw.technology["rampant-arsenal-technology-power-armor-mk3"].enabled = false
    data.raw.technology["rampant-arsenal-technology-battery-equipment-3"].enabled = false
    data.raw.technology["rampant-arsenal-technology-shield-equipment-2"].enabled = false
    data.raw.technology["rampant-arsenal-technology-generator-equipment-2"].enabled = false
    data.raw.technology["rampant-arsenal-technology-generator-equipment-3"].enabled = false
    --data.raw.technology[""].enabled = true

    data.raw.recipe["mk3-battery-rampant-arsenal"].enabled = false
    data.raw.recipe["mk3-shield-rampant-arsenal"].enabled = false
    data.raw.recipe["mk3-generator-rampant-arsenal"].enabled = false
    data.raw.recipe["nuclear-generator-rampant-arsenal"].enabled = false
    data.raw.recipe["power-armor-mk3-armor-rampant-arsenal"].enabled = false
    --data.raw.recipe[""].enabled = false

-- Hidden    
    data.raw.technology["rampant-arsenal-technology-power-armor-mk3"].hidden = true
    data.raw.technology["rampant-arsenal-technology-battery-equipment-3"].hidden = true
    data.raw.technology["rampant-arsenal-technology-shield-equipment-2"].hidden = true
    data.raw.technology["rampant-arsenal-technology-generator-equipment-2"].hidden = true
    data.raw.technology["rampant-arsenal-technology-generator-equipment-3"].hidden = true
    --data.raw.technology[""].hidden = true
    --data.raw.technology[""].hidden = true

    data.raw.recipe["mk3-shield-rampant-arsenal"].hidden = true
    data.raw.recipe["mk3-battery-rampant-arsenal"].hidden = true
    data.raw.recipe["mk3-generator-rampant-arsenal"].hidden = true
    data.raw.recipe["nuclear-generator-rampant-arsenal"].hidden = true
    data.raw.recipe["power-armor-mk3-armor-rampant-arsenal"].hidden = true
    --data.raw.recipe[""].hidden = true
    --data.raw.recipe[""].hidden = true
end

if mods["custom_power_armor_fix"] then
--Enabled
    data.raw.recipe["power-armor-mk3"].enabled = false
    data.raw.recipe["power-armor-mk4"].enabled = false
    data.raw.recipe["power-armor-mk5"].enabled = false

    data.raw.technology["power-armor-mk4"].enabled = false
    data.raw.technology["power-armor-mk3"].enabled = false
    data.raw.technology["power-armor-mk5"].enabled = false

--Hidden
    data.raw.recipe["power-armor-mk3"].hidden = true
    data.raw.recipe["power-armor-mk4"].hidden = true
    data.raw.recipe["power-armor-mk5"].hidden = true

    data.raw.technology["power-armor-mk3"].hidden = true
    data.raw.technology["power-armor-mk4"].hidden = true
    data.raw.technology["power-armor-mk5"].hidden = true
end

if mods["Power Armor MK3"] then
    --Hidden
    data.raw.recipe["pamk3-pamk3"].hidden = true
    data.raw.recipe["pamk3-pamk4"].hidden = true
    data.raw.recipe["pamk3-esmk3"].hidden = true
    data.raw.recipe["pamk3-se"].hidden = true
    data.raw.recipe["pamk3-inff"].hidden = true
    data.raw.recipe["pamk3-esmk3"].hidden = true

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