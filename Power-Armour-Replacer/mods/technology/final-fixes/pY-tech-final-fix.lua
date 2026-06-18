---@class data.TechnologyPrototype.type
local Tech = data.raw["technology"]

if mods["pypostprocessing"]then
	Tech["military"].research_trigger = {type ="craft-item", item = "sulfur", count = 20}
	Tech["military"].prerequisites = {"fluid-processing-machines-1"}
	Tech["military"].unit = nil
	Tech["heavy-armor"].prerequisites = {"par-light-armour-tech"}
	Tech["par-light-armour-tech"].research_trigger = {type ="craft-item", item ="submachine-gun"}
	Tech["steel-axe"].effects = {{type = "character-mining-speed", modifier = 1}}
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