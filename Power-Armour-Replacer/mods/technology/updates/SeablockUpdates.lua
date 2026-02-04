---@class RecipePrototype
local Recipe = data.raw.recipe
---@class data.TechnologyPrototype
local Tech = data.raw["technology"]


if mods["SeaBlock"]then
	Tech["military"].research_trigger = {type ="craft-item", item ="angels-slag", count = 200}

	Tech["steam-power"].research_trigger = {type ="craft-fluid", fluid ="angels-gas-hydrogen", amount = 1000}
	Tech["steam-power"].unit = nil

	Tech["angels-bio-processing-brown"].research_trigger = {type ="craft-item", item ="angels-ore-crusher", count = 2}
	Tech["angels-bio-processing-brown"].unit = nil

	Tech["angels-water-washing-1"].research_trigger = {type ="craft-item", item ="angels-wood-charcoal", count = 50}
	Tech["angels-water-washing-1"].unit = nil

	Tech["angels-bio-wood-processing-2"].research_trigger = {type ="craft-item", item ="angels-algae-farm", count = 5}
	Tech["angels-bio-wood-processing-2"].unit = nil

	Tech["angels-sulfur-processing-1"].research_trigger = {type ="craft-item", item ="chemical-plant", count = 2}
	Tech["angels-sulfur-processing-1"].unit = nil

	Tech["angels-slag-processing-1"].research_trigger = {type ="craft-item", item ="angels-washing-plant", count = 5}
	Tech["angels-slag-processing-1"].unit = nil

	--Expensive in angels ~Free in SeaBlock

	Tech["angels-ore-crushing"].research_trigger = {type ="craft-item", item ="angels-electrolyser", count = 5}
	Tech["angels-basic-chemistry"].research_trigger = {type ="craft-item", item ="assembling-machine-1", count = 4}
end