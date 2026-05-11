local Angels = mods["angelssmelting"]
local angelsmods
if Angels then
    angelsmods.trigger.ores["platinum"] = true
    angelsmods.trigger.smelting_products["platinum"].ingot = true
    angelsmods.trigger.smelting_products["platinum"].plate = true
    angelsmods.trigger.smelting_products["platinum"].wire = true
    angelsmods.trigger.smelting_products["platinum"].powder = true
end