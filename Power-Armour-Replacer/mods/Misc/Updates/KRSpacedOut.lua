--SpacedOut Has this vehicle & Armour Category for equipment
---@type data.EquipmentPrototype
--local Equipment = data.raw["equipment"]

if mods["Krastorio2-spaced-out"] then
	data.raw["item"]["par-laser-mk1"].equipment.categories = {"armor", "kr-vehicle"}
end
