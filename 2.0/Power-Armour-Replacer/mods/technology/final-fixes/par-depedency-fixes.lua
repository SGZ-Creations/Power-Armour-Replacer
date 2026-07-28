-- Compatibility files
local PAR = require("mods.util")
PAR.technology_dependancy
{
	["bobelectronics"] = {
	--[[
		["par-laser-tech-3"] = {
		["advanced-electronics"] = "electronics"
		},
		["par-laser-tech-5"] = {
			"advanced-electronics"
		},
		["par-battery-tech-3"] = {
			["advanced-electronics"] = "electronics"
		},
		["par-battery-tech-5"] = {
			"advanced-electronics"
		},]]
		["par-armour-tech-1"] = {
			"bob-electronics"
		},
		["par-armour-tech-3"] = {
			["advanced-circuit"] = "electronics"
		},
		["par-armour-tech-5"] = {
			["advanced-electronics"] = "advanced-electronics"
		},
		["par-armour-tech-7"] = {
			"processing-unit"
		},
		["par-armour-tech-9"] = {
			"bob-advanced-processing-unit"
		},
	},
}