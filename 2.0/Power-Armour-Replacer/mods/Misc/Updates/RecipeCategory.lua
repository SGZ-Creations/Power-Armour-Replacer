---@class data.RecipePrototype
local Recipe = data.raw["recipe"]

if mods["TeleportationEquipment"]then
	Recipe["teleportation-equipment"].category = "par-electronic-hands"
end
if mods["Power Armor MK3"]then
	Recipe["pamk3-pdd"].category = "par-electronic-hands"
end
if mods["incendiary-arsenal"] and mods["space-age"]then
	Recipe["mech-armor-fireproof"].category = "par-electronic-hands"
end