---@class data.RecipePrototype
local Recipe = data.raw["recipe"]

if mods["TeleportationEquipment"]then
	Recipe["teleportation-equipment"].category = "electronics-or-handcrafting"
end
if mods["Power Armor MK3"]then
	Recipe["pamk3-pdd"].category = "electronics-or-handcrafting"
end