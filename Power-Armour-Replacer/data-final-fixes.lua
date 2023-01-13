-- local function remove(type, name)
--     data.raw[type][name] = nil
-- end

-- remove("armor", "a_mk1")
-- remove("armor", "a_mk2")
-- remove("armor", "a_mk3")

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
data.raw.recipe["solar-panel-equipment"].enabled = false
data.raw.technology["personal-roboport-equipment"].enabled = false
data.raw.recipe["personal-roboport-equipment"].enabled = false
data.raw.technology["personal-laser-defense-equipment"].enabled = false
data.raw.recipe["personal-laser-defense-equipment"].enabled = false
data.raw.technology["personal-roboport-mk2-equipment"].enabled = false
data.raw.recipe["personal-roboport-mk2-equipment"].enabled = false
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
data.raw.technology["personal-roboport-equipment"].hidden = true
data.raw.recipe["personal-roboport-equipment"].hidden = true
data.raw.technology["personal-laser-defense-equipment"].hidden = true
data.raw.recipe["personal-laser-defense-equipment"].hidden = true
data.raw.technology["personal-roboport-mk2-equipment"].hidden = true
data.raw.recipe["personal-roboport-mk2-equipment"].hidden = true


if mods["Darkstar_utilities_fixed"] then
    data.raw.recipe["terra-tech-power-armor"].enabled = false
    data.raw.technology["terra-tech-power-armor-tech"].enabled = false
    data.raw.recipe["terra-tech-power-armor-mk2"].enabled = false
    data.raw.technology["terra-tech-power-armor-mk2-tech"].enabled = false
    --2. section
    data.raw.recipe["terra-tech-power-armor"].hidden = true
    data.raw.technology["terra-tech-power-armor-tech"].hidden = true
    data.raw.recipe["terra-tech-power-armor-mk2"].hidden = true
    data.raw.technology["terra-tech-power-armor-mk2-tech"].hidden = true
end

if mods["bobwarfare"] then
--armours
    data.raw.recipe["bob-power-armor-mk3"].enabled = false
    data.raw.technology["bob-power-armor-3"].enabled = false
    data.raw.recipe["bob-power-armor-mk4"].enabled = false
    data.raw.technology["bob-power-armor-4"].enabled = false
    data.raw.recipe["bob-power-armor-mk5"].enabled = false
    data.raw.technology["bob-power-armor-5"].enabled = false
-- armour section 2
    data.raw.recipe["bob-power-armor-mk3"].hidden = true
    data.raw.technology["bob-power-armor-3"].hidden = true
    data.raw.recipe["bob-power-armor-mk4"].hidden = true
    data.raw.technology["bob-power-armor-4"].hidden = true
    data.raw.recipe["bob-power-armor-mk5"].hidden = true
    data.raw.technology["bob-power-armor-5"].hidden = true
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
    data.raw.item["power-armor-mk5"].hidden = true]]
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
item.flags = item.flags or {}
table.insert(item.flags, "hidden")]]