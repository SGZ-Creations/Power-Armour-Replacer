if mods["TeleportationEquipment"] then
    local tech_eff = data.raw.technology["teleportation-equipment"]
    if not mods["exotic-industries"] then tech_eff.unit.count = 1000 end
    tech_eff.unit.ingredients =  {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
    }
end
