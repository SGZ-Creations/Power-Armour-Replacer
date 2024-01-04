if mods["Nanobots"] then
    local tech_eff = data.raw.technology["no-power-equipment_mk2"].effects
    table.insert(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-feeder"})
    table.insert(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-nanointerface"})
    table.insert(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-launcher"})
    table.insert(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-trees"})
    table.insert(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-items"})
end

if mods["Krastorio2"] then
    local tech_eff = data.raw.technology["roboport_6"].effects
    table.insert(tech_eff,{type="unlock-recipe",recipe="vehicle-roboport"})
end


if mods["IndustrialRevolution3"] then
    local tech_eff = data.raw.technology["roboport_3"].effects
    table.insert(tech_eff,{type="unlock-recipe",recipe="construction-robot"})
    --table.insert(tech_eff,{type="unlock-recipe",recipe=""})
end