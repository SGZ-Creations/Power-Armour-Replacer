---@class data.TechnologyPrototype.type
local Tech = data.raw["technology"]
---@class data.RecipePrototype.type
local Recipe = data.raw["recipe"]

Tech["heavy-armor"].research_trigger = {type ="craft-item", item ="light-armor", count = 1}
Tech["heavy-armor"].unit = nil

if mods["Power Armor MK3"] then
	Recipe["pamk3-lvest"].enabled = false
	table.insert(Tech["par-light-tech"].effects, {type = "unlock-recipe", recipe = "pamk3-lvest"})

	Tech["heavy-armor"].research_trigger = {type ="craft-item", item ="pamk3-lvest", count = 1}
	Tech["heavy-armor"].unit = nil
	Tech["par-armour-tech-1"].research_trigger = {type ="craft-item", item ="pamk3-hvest", count = 1}
	Tech["par-armour-tech-1"].unit = nil
end

Tech["steel-processing"].research_trigger = {type ="craft-item", item ="stone-furnace", count = 10}
Tech["steel-processing"].unit = nil

Tech["military"].research_trigger = {type ="craft-item", item ="firearm-magazine", count = 20}
Tech["military"].unit = nil