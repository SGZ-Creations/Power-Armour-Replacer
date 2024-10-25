local util = require("compatibilities.util")

util.technology_dependancy
{
	["space-age"] = {
		["mech-armor"] = {
			["par-armour-tech-2"] = "par-armour-tech-5",
		}
	},

	["mech-armor"] = {
		["mech-armor"] = {
			["par-armour-tech-2"] = "par-armour-tech-5",
		}
	},
}