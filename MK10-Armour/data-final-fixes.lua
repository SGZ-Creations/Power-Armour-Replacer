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
-- armour section 2
    data.raw.recipe["power-armor-mk3-armor-rampant-arsenal"].hidden = true
    data.raw.technology["rampant-arsenal-technology-power-armor-mk3"].hidden = true
end

if mods ["custom_power_armor_fix"] then
--armours
    data.raw.recipe["power-armor-mk3"].enabled = false
    data.raw.technology["power-armor-mk3"].enabled = false
    data.raw.recipe["power-armor-mk4"].enabled = false
    data.raw.technology["power-armor-mk4"].enabled = false
    data.raw.recipe["power-armor-mk5"].enabled = false
    data.raw.technology["power-armor-mk5"].enabled = false
-- armour section 2
    data.raw.recipe["power-armor-mk3"].hidden = true
    data.raw.technology["power-armor-mk3"].hidden = true
    data.raw.recipe["power-armor-mk4"].hidden = true
    data.raw.technology["power-armor-mk4"].hidden = true
    data.raw.recipe["power-armor-mk5"].hidden = true
    data.raw.technology["power-armor-mk5"].hidden = true
end