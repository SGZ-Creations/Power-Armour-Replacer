local SS = settings.startup
local Angels = mods["angelssmelting"]
if Angels then
    angelsmods.trigger.ores["platinum"] = true
    angelsmods.trigger.smelting_products["platinum"].ingot = true
    angelsmods.trigger.smelting_products["platinum"].plate = true
    angelsmods.trigger.smelting_products["platinum"].wire = true
    angelsmods.trigger.smelting_products["platinum"].powder = true

    angelsmods.trigger.ores["chrome"] = true
    angelsmods.trigger.smelting_products["chrome"].ingot = true
    angelsmods.trigger.smelting_products["chrome"].plate = true
    angelsmods.trigger.smelting_products["chrome"].powder = true
end

if mods["bobenemies"] and mods["angelssmelting"] then
    if SS["bobmods-enemies-enableartifacts"].value == true then
        data.raw.recipe["bob-alien-artifact"].enabled = true
    end
end