---@class data.TechnologyPrototype.type
local Tech = data.raw["technology"]

if mods["pypostprocessing"]then
	Tech["military"].research_trigger = {type ="craft-item", item = "sulfur", count = 20}
	Tech["military"].prerequisites = {"fluid-processing-machines-1"}
	Tech["military"].unit = nil
	Tech["heavy-armor"].prerequisites = {"par-light-armour-tech"}
	Tech["par-light-armour-tech"].research_trigger = {type ="craft-item", item ="submachine-gun"}
	Tech["steel-axe"].effects = {{type = "character-mining-speed", modifier = 1}}
	if mods["TeleportationEquipment"] then
		Tech["teleportation-equipment"].prerequisites = {"par-armour-tech-2",}
		Tech["teleportation-equipment"].unit.ingredients = {}
		table.insert(Tech["teleportation-equipment"].unit.ingredients, {"automation-science-pack", 1})
		table.insert(Tech["teleportation-equipment"].unit.ingredients, {"py-science-pack-1", 1})
	end
end

local PAR = require("mods.util")
PAR.technology_dependancy
{
	["pyalternativeenergy"] = {
		["par-armour-tech-3"] = {
			["advanced-circuit"] = "machine-components-mk01",
			"alloys-mk02",
		},
	},
	["pyhightech"] = {
		["par-armour-tech-2"] = {
			"aluminium-mk01",
			"chromium-mk01",
		},
		["par-armour-tech-5"] = {
			["processing-unit"] = "machine-components-mk02",
		},
	},
}