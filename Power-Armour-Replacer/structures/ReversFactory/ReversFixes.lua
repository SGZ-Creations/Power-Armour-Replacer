local Armour = data.raw["armor"]
local Recipe = data.raw["recipe"]


Recipe["modular-armor-recycling"].ingredients = {{type ="item", name ="par-armour-mk1", amount=1}}
Recipe["bob-power-armor-mk3-recycling"].ingredients = {{type ="item", name ="par-armour-mk3", amount=1}}
Recipe["bob-power-armor-mk4-recycling"].ingredients = {{type ="item", name ="par-armour-mk4", amount=1}}
Recipe["bob-power-armor-mk5-recycling"].ingredients = {{type ="item", name ="par-armour-mk5", amount=1}}


Recipe["modular-armor-recycling"].results = {{type ="item", name ="par-armour-mk1", amount=1}}
Recipe["bob-power-armor-mk3-recycling"].results = {{type ="item", name ="par-armour-mk3", amount=1}}
Recipe["bob-power-armor-mk4-recycling"].results = {{type ="item", name ="par-armour-mk4", amount=1}}
Recipe["bob-power-armor-mk5-recycling"].results = {{type ="item", name ="par-armour-mk5", amount=1}}


if mods["reverse-factory"] then

    table.insert(rf.custom_recycle, {"armor", "par-armour-mk1", "modular-armor"})
    table.insert(rf.custom_recycle, {"item", "par-armour-mk1", "modular-armor"})

    if (mods["bobswarefare"] or mods["bobequipment"]) then
        if Armour["bob-power-armor-mk3"] and Recipe["bob-power-armor-mk3"] then
            table.insert(rf.custom_recycle, {"armor", "par-armour-mk3", "par-armour-mk3"})
        end
        if Armour["bob-power-armor-mk4"] and Recipe["bob-power-armor-mk4"] then
            table.insert(rf.custom_recycle, {"armor", "par-armour-mk4", "par-armour-mk4"})
            table.insert(rf.custom_recycle, {"item", "par-armour-mk4", "par-armour-mk4"})
        end
        if Armour["bob-power-armor-mk5"] and Recipe["bob-power-armor-mk5"] then
            table.insert(rf.custom_recycle, {"armor", "par-armour-mk5", "par-armour-mk5"})
        end
    end
end
