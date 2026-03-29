---@class data.TechnologyPrototype.type
local Tech = data.raw["technology"]

if mods["aai-industry"]and mods["bobplates"] then
	Tech["sand-processing"].research_trigger = {type ="craft-item", item ="motor", count = 50}
	Tech["sand-processing"].unit = nil

	Tech["glass-processing"].research_trigger = {type ="craft-item", item ="sand", count = 100}
	Tech["glass-processing"].unit = nil
end