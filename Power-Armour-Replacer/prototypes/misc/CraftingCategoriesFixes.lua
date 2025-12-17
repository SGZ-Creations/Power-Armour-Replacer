---@class data.RecipePrototype
local Recipe = data.raw.recipe

if mods["bobclasses"] and mods["castra"]then
	table.insert(data.raw["character"]["character"].crafting_categories, "castra-crafting")
	table.insert(data.raw["character"]["character"].crafting_categories, "castra-electronics-or-handcrafting")
	table.insert(data.raw["character"]["bob-character-balanced-2"].crafting_categories, "castra-electronics-or-handcrafting")
	table.insert(data.raw["character"]["bob-character-fighter"].crafting_categories, "castra-electronics-or-handcrafting")
	table.insert(data.raw["character"]["bob-character-fighter-2"].crafting_categories, "castra-electronics-or-handcrafting")
	table.insert(data.raw["character"]["bob-character-builder"].crafting_categories, "castra-electronics-or-handcrafting")
	table.insert(data.raw["character"]["bob-character-builder-2"].crafting_categories, "castra-electronics-or-handcrafting")

	Recipe["par-armour-mk1"].category = "castra-electronics-or-handcrafting"
	Recipe["par-armour-mk2"].category = "castra-electronics-or-handcrafting"
	Recipe["par-armour-mk3"].category = "castra-electronics-or-handcrafting"
	Recipe["par-armour-mk4"].category = "castra-electronics-or-handcrafting"
	Recipe["par-armour-mk5"].category = "castra-electronics-or-handcrafting"

	Recipe["par-battery-mk1"].category = "castra-electronics-or-handcrafting"
	Recipe["par-battery-mk2"].category = "castra-electronics-or-handcrafting"
	Recipe["par-battery-mk3"].category = "castra-electronics-or-handcrafting"
	Recipe["par-battery-mk4"].category = "castra-electronics-or-handcrafting"
	Recipe["par-battery-mk5"].category = "castra-electronics-or-handcrafting"

	Recipe["par-fission-reactor-mk1"].category = "castra-electronics-or-handcrafting"
	Recipe["par-fission-reactor-mk2"].category = "castra-electronics-or-handcrafting"
	Recipe["par-fission-reactor-mk3"].category = "castra-electronics-or-handcrafting"
	Recipe["par-fission-reactor-mk4"].category = "castra-electronics-or-handcrafting"
	Recipe["par-fission-reactor-mk5"].category = "castra-electronics-or-handcrafting"

	Recipe["par-laser-mk1"].category = "castra-electronics-or-handcrafting"
	Recipe["par-laser-mk2"].category = "castra-electronics-or-handcrafting"
	Recipe["par-laser-mk3"].category = "castra-electronics-or-handcrafting"
	Recipe["par-laser-mk4"].category = "castra-electronics-or-handcrafting"
	Recipe["par-laser-mk5"].category = "castra-electronics-or-handcrafting"

	Recipe["par-roboport-mk1"].category = "castra-electronics-or-handcrafting"
	Recipe["par-roboport-mk2"].category = "castra-electronics-or-handcrafting"
	Recipe["par-roboport-mk3"].category = "castra-electronics-or-handcrafting"
	Recipe["par-roboport-mk4"].category = "castra-electronics-or-handcrafting"
	Recipe["par-roboport-mk5"].category = "castra-electronics-or-handcrafting"

	Recipe["par-shield-mk1"].category = "castra-electronics-or-handcrafting"
	Recipe["par-shield-mk2"].category = "castra-electronics-or-handcrafting"
	Recipe["par-shield-mk3"].category = "castra-electronics-or-handcrafting"
	Recipe["par-shield-mk4"].category = "castra-electronics-or-handcrafting"
	Recipe["par-shield-mk5"].category = "castra-electronics-or-handcrafting"

	Recipe["par-solar-panel-mk1"].category = "castra-electronics-or-handcrafting"
	Recipe["par-solar-panel-mk2"].category = "castra-electronics-or-handcrafting"
	Recipe["par-solar-panel-mk3"].category = "castra-electronics-or-handcrafting"
	Recipe["par-solar-panel-mk4"].category = "castra-electronics-or-handcrafting"
	Recipe["par-solar-panel-mk5"].category = "castra-electronics-or-handcrafting"

	Recipe["par-exoskeleton-mk1"].category = "castra-electronics-or-handcrafting"
	Recipe["par-exoskeleton-mk2"].category = "castra-electronics-or-handcrafting"

	Recipe["light-armor"].category = "castra-electronics-or-handcrafting"
	Recipe["heavy-armor"].category = "castra-electronics-or-handcrafting"

	if mods["Power Armor MK3"]then
		Recipe["pamk3-lvest"].category = "castra-electronics-or-handcrafting"
		Recipe["pamk3-hvest"].category = "castra-electronics-or-handcrafting"
	end
	if mods["TeleportationEquipment"]then
		Recipe["teleportation-equipment"].category = "castra-electronics-or-handcrafting"
	end
end