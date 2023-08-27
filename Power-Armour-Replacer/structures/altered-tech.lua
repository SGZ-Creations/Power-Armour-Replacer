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

if mods["TeleportationEquipment"] then
  local tech_eff = data.raw.technology["teleportation-equipment"]
  tech_eff.unit.count = 1000
  tech_eff.unit.ingredients =  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
  }
end