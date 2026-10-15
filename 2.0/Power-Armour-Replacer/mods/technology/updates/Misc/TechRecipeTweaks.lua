local Tech = data.raw["technology"]
local Recipe = data.raw["recipe"]

Tech["heavy-armor"].research_trigger = {type ="craft-item", item ="light-armor"}
Tech["heavy-armor"].prerequisites = {"par-light-armour-tech"}
Tech["heavy-armor"].unit = nil

if mods["Power Armor MK3"] then
	Recipe["pamk3-lvest"].enabled = false
	table.insert(Tech["par-light-armour-tech"].effects, {type = "unlock-recipe", recipe = "pamk3-lvest"})

	Tech["heavy-armor"].research_trigger = {type ="craft-item", item ="pamk3-lvest"}
	Tech["heavy-armor"].unit = nil
	Tech["par-armour-tech-1"].research_trigger = {type ="craft-item", item ="pamk3-hvest"}
	Tech["par-armour-tech-1"].unit = nil
end