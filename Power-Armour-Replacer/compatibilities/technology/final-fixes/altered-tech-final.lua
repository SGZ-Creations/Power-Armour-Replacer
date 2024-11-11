if mods["Nanobots"] then
    local tech_eff = data.raw.technology["par-night-immunity-tech-2"].effects
    table.insert(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-feeder"})
    table.insert(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-nanointerface"})
    table.insert(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-launcher"})
    table.insert(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-trees"})
    table.insert(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-items"})
end

if mods["Krastorio2"] then
    local tech_eff = data.raw.technology["par-roboport-tech-6"].effects
    table.insert(tech_eff,{type="unlock-recipe",recipe="vehicle-roboport"})
end