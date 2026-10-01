local SS = settings.startup
local Angels = mods["angelssmelting"]
local Clowns = mods["Clowns-Processing"]
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

    angelsmods.trigger.ores["manganese"] = true
    angelsmods.trigger.smelting_products["manganese"].ingot = true
    angelsmods.trigger.smelting_products["manganese"].plate = true
    angelsmods.trigger.smelting_products["manganese"].powder = true
end

if mods["bobenemies"] and mods["angelssmelting"] then
    if SS["bobmods-enemies-enableartifacts"].value == true then
        data.raw.recipe["bob-alien-artifact"].enabled = true
    end
end