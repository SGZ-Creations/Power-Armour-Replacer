---@class data.TechnologyPrototype
local Tech = data.raw["technology"]


if mods["metal-and-stars"] then
	Tech["prototype-mech-armor"].dependencies = {"par-armour-tech-3", "productivity-module-2", "overclock-module-2"}
end