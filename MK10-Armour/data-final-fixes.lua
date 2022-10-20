--armours
data.raw.recipe["modular-armor"].enabled = false
data.raw.technology["modular-armor"].enabled = false
data.raw.recipe["power-armor"].enabled = false
data.raw.technology["power-armor"].enabled = false
data.raw.recipe["power-armor-mk2"].enabled = false
data.raw.technology["power-armor-mk2"].enabled = false
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

if mods["Darkstar_utilities_fixed"] then
    data.raw.recipe["terra-tech-power-armor"].enabled = false
    data.raw.technology["terra-tech-power-armor-tech"].enabled = false
    data.raw.recipe["terra-tech-power-armor-mk2"].enabled = false
    data.raw.technology["terra-tech-power-armor-mk2-tech"].enabled = false
end

if mods["angelsrefining"] then
    data.raw.recipe["modular-armor"].enabled = false
    data.raw.technology["modular-armor"].enabled = false
    data.raw.recipe["power-armor"].enabled = false
    data.raw.technology["power-armor"].enabled = false
    data.raw.recipe["power-armor-mk2"].enabled = false
    data.raw.technology["power-armor-mk2"].enabled = false
end