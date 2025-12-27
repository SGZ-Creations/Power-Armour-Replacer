--[[
	Armour, Skeleton, Nightvision, BeltImmunity.
]]
local Tech = data.raw["technology"]
local Recipe = data.raw["recipe"]
if mods["space-age"] then
	Recipe["mech-armor"].category = "electronics-or-assembling"

	table.insert(Tech["par-armour-tech-5"].unit.ingredients, {"space-science-pack", 1})

	table.insert(Tech["par-armour-tech-6"].unit.ingredients, {"space-science-pack",           2})
	table.insert(Tech["par-armour-tech-6"].unit.ingredients, {"metallurgic-science-pack",     1})
	table.insert(Tech["par-armour-tech-6"].unit.ingredients, {"agricultural-science-pack",    1})
	table.insert(Tech["par-armour-tech-6"].unit.ingredients, {"electromagnetic-science-pack", 1})

	table.insert(Tech["par-armour-tech-7"].unit.ingredients, {"space-science-pack", 			 3})
	table.insert(Tech["par-armour-tech-7"].unit.ingredients, {"metallurgic-science-pack",     2})
	table.insert(Tech["par-armour-tech-7"].unit.ingredients, {"agricultural-science-pack",    2})
	table.insert(Tech["par-armour-tech-7"].unit.ingredients, {"electromagnetic-science-pack", 2})
	table.insert(Tech["par-armour-tech-7"].unit.ingredients, {"cryogenic-science-pack",       1})

	table.insert(Tech["par-armour-tech-8"].unit.ingredients, {"space-science-pack",           4})
	table.insert(Tech["par-armour-tech-8"].unit.ingredients, {"metallurgic-science-pack",     3})
	table.insert(Tech["par-armour-tech-8"].unit.ingredients, {"agricultural-science-pack",    3})
	table.insert(Tech["par-armour-tech-8"].unit.ingredients, {"electromagnetic-science-pack", 3})
	table.insert(Tech["par-armour-tech-8"].unit.ingredients, {"cryogenic-science-pack",       2})

	table.insert(Tech["par-armour-tech-9"].unit.ingredients, {"space-science-pack",      	 5})
	table.insert(Tech["par-armour-tech-9"].unit.ingredients, {"metallurgic-science-pack",     4})
	table.insert(Tech["par-armour-tech-9"].unit.ingredients, {"agricultural-science-pack",    4})
	table.insert(Tech["par-armour-tech-9"].unit.ingredients, {"electromagnetic-science-pack", 4})
	table.insert(Tech["par-armour-tech-9"].unit.ingredients, {"cryogenic-science-pack",       3})
	table.insert(Tech["par-armour-tech-9"].unit.ingredients, {"promethium-science-pack",      1})

	table.insert(Tech["par-armour-tech-10"].unit.ingredients, {"space-science-pack", 		  6})
	table.insert(Tech["par-armour-tech-10"].unit.ingredients, {"metallurgic-science-pack",     5})
	table.insert(Tech["par-armour-tech-10"].unit.ingredients, {"agricultural-science-pack",    5})
	table.insert(Tech["par-armour-tech-10"].unit.ingredients, {"electromagnetic-science-pack", 5})
	table.insert(Tech["par-armour-tech-10"].unit.ingredients, {"cryogenic-science-pack",       4})
	table.insert(Tech["par-armour-tech-10"].unit.ingredients, {"promethium-science-pack",      2})

	table.insert(Tech["par-exoskeleton-tech-3"].unit.ingredients, {"space-science-pack",           1})
	table.insert(Tech["par-exoskeleton-tech-3"].unit.ingredients, {"metallurgic-science-pack",     1})
	table.insert(Tech["par-exoskeleton-tech-3"].unit.ingredients, {"agricultural-science-pack",    1})
	table.insert(Tech["par-exoskeleton-tech-3"].unit.ingredients, {"electromagnetic-science-pack", 1})

	table.insert(Tech["par-exoskeleton-tech-4"].unit.ingredients, {"space-science-pack",           1})
	table.insert(Tech["par-exoskeleton-tech-4"].unit.ingredients, {"metallurgic-science-pack",     1})
	table.insert(Tech["par-exoskeleton-tech-4"].unit.ingredients, {"agricultural-science-pack",    1})
	table.insert(Tech["par-exoskeleton-tech-4"].unit.ingredients, {"electromagnetic-science-pack", 1})
	table.insert(Tech["par-exoskeleton-tech-4"].unit.ingredients, {"cryogenic-science-pack",       1})

	table.insert(Tech["par-exoskeleton-tech-5"].unit.ingredients, {"space-science-pack",           1})
	table.insert(Tech["par-exoskeleton-tech-5"].unit.ingredients, {"metallurgic-science-pack",     1})
	table.insert(Tech["par-exoskeleton-tech-5"].unit.ingredients, {"agricultural-science-pack",    1})
	table.insert(Tech["par-exoskeleton-tech-5"].unit.ingredients, {"electromagnetic-science-pack", 1})
	table.insert(Tech["par-exoskeleton-tech-5"].unit.ingredients, {"cryogenic-science-pack",       1})
	table.insert(Tech["par-exoskeleton-tech-5"].unit.ingredients, {"promethium-science-pack",      1})

	table.insert(Tech["par-night-immunity-tech-2"].unit.ingredients, {"space-science-pack",           1})
	table.insert(Tech["par-night-immunity-tech-2"].unit.ingredients, {"metallurgic-science-pack",     1})
	table.insert(Tech["par-night-immunity-tech-2"].unit.ingredients, {"agricultural-science-pack",    1})
	table.insert(Tech["par-night-immunity-tech-2"].unit.ingredients, {"electromagnetic-science-pack", 1})

	table.insert(Tech["par-battery-tech-5"].unit.ingredients, {"space-science-pack", 1})

	table.insert(Tech["par-battery-tech-6"].unit.ingredients, {"space-science-pack",        2})
	table.insert(Tech["par-battery-tech-6"].unit.ingredients, {"agricultural-science-pack", 1})

	table.insert(Tech["par-battery-tech-7"].unit.ingredients, {"space-science-pack",        3})
	table.insert(Tech["par-battery-tech-7"].unit.ingredients, {"agricultural-science-pack", 2})
	table.insert(Tech["par-battery-tech-7"].unit.ingredients, {"cryogenic-science-pack",    1})

	table.insert(Tech["par-battery-tech-8"].unit.ingredients, {"space-science-pack",        4})
	table.insert(Tech["par-battery-tech-8"].unit.ingredients, {"agricultural-science-pack", 3})
	table.insert(Tech["par-battery-tech-8"].unit.ingredients, {"cryogenic-science-pack",    2})

	table.insert(Tech["par-battery-tech-9"].unit.ingredients, {"space-science-pack",        5})
	table.insert(Tech["par-battery-tech-9"].unit.ingredients, {"agricultural-science-pack", 4})
	table.insert(Tech["par-battery-tech-9"].unit.ingredients, {"cryogenic-science-pack",    3})
	table.insert(Tech["par-battery-tech-9"].unit.ingredients, {"promethium-science-pack",   1})

	table.insert(Tech["par-battery-tech-10"].unit.ingredients, {"space-science-pack",        6})
	table.insert(Tech["par-battery-tech-10"].unit.ingredients, {"agricultural-science-pack", 5})
	table.insert(Tech["par-battery-tech-10"].unit.ingredients, {"cryogenic-science-pack",    4})
	table.insert(Tech["par-battery-tech-10"].unit.ingredients, {"promethium-science-pack",   2})

	table.insert(Tech["par-solar-panel-tech-5"].unit.ingredients, {"space-science-pack", 1})

	table.insert(Tech["par-solar-panel-tech-6"].unit.ingredients, {"space-science-pack",        2})
	table.insert(Tech["par-solar-panel-tech-6"].unit.ingredients, {"agricultural-science-pack", 1})

	table.insert(Tech["par-solar-panel-tech-7"].unit.ingredients, {"space-science-pack",        3})
	table.insert(Tech["par-solar-panel-tech-7"].unit.ingredients, {"agricultural-science-pack", 2})
	table.insert(Tech["par-solar-panel-tech-7"].unit.ingredients, {"cryogenic-science-pack",    1})

	table.insert(Tech["par-solar-panel-tech-8"].unit.ingredients, {"space-science-pack",        4})
	table.insert(Tech["par-solar-panel-tech-8"].unit.ingredients, {"agricultural-science-pack", 3})
	table.insert(Tech["par-solar-panel-tech-8"].unit.ingredients, {"cryogenic-science-pack",    2})

	table.insert(Tech["par-solar-panel-tech-9"].unit.ingredients, {"space-science-pack",        5})
	table.insert(Tech["par-solar-panel-tech-9"].unit.ingredients, {"agricultural-science-pack", 4})
	table.insert(Tech["par-solar-panel-tech-9"].unit.ingredients, {"cryogenic-science-pack",    3})
	table.insert(Tech["par-solar-panel-tech-9"].unit.ingredients, {"promethium-science-pack",   1})

	table.insert(Tech["par-solar-panel-tech-10"].unit.ingredients, {"space-science-pack",        6})
	table.insert(Tech["par-solar-panel-tech-10"].unit.ingredients, {"agricultural-science-pack", 5})
	table.insert(Tech["par-solar-panel-tech-10"].unit.ingredients, {"cryogenic-science-pack",    4})
	table.insert(Tech["par-solar-panel-tech-10"].unit.ingredients, {"promethium-science-pack",   2})

	table.insert(Tech["par-laser-tech-5"].unit.ingredients, {"space-science-pack", 1})

	table.insert(Tech["par-laser-tech-6"].unit.ingredients, {"space-science-pack",       2})
	table.insert(Tech["par-laser-tech-6"].unit.ingredients, {"metallurgic-science-pack", 1})

	table.insert(Tech["par-laser-tech-7"].unit.ingredients, {"space-science-pack",       3})
	table.insert(Tech["par-laser-tech-7"].unit.ingredients, {"metallurgic-science-pack", 2})
	table.insert(Tech["par-laser-tech-7"].unit.ingredients, {"cryogenic-science-pack",   1})

	table.insert(Tech["par-laser-tech-8"].unit.ingredients, {"space-science-pack",       4})
	table.insert(Tech["par-laser-tech-8"].unit.ingredients, {"metallurgic-science-pack", 3})
	table.insert(Tech["par-laser-tech-8"].unit.ingredients, {"cryogenic-science-pack",   2})

	table.insert(Tech["par-laser-tech-9"].unit.ingredients, {"space-science-pack",       5})
	table.insert(Tech["par-laser-tech-9"].unit.ingredients, {"metallurgic-science-pack", 4})
	table.insert(Tech["par-laser-tech-9"].unit.ingredients, {"cryogenic-science-pack",   3})
	table.insert(Tech["par-laser-tech-9"].unit.ingredients, {"promethium-science-pack",  1})

	table.insert(Tech["par-laser-tech-10"].unit.ingredients, {"space-science-pack",       6})
	table.insert(Tech["par-laser-tech-10"].unit.ingredients, {"metallurgic-science-pack", 5})
	table.insert(Tech["par-laser-tech-10"].unit.ingredients, {"cryogenic-science-pack",   4})
	table.insert(Tech["par-laser-tech-10"].unit.ingredients, {"promethium-science-pack",  2})

	table.insert(Tech["par-roboport-tech-5"].unit.ingredients, {"space-science-pack", 1})

	table.insert(Tech["par-roboport-tech-6"].unit.ingredients, {"space-science-pack",       2})
	table.insert(Tech["par-roboport-tech-6"].unit.ingredients, {"metallurgic-science-pack", 1})

	table.insert(Tech["par-roboport-tech-7"].unit.ingredients, {"space-science-pack",       3})
	table.insert(Tech["par-roboport-tech-7"].unit.ingredients, {"metallurgic-science-pack", 2})
	table.insert(Tech["par-roboport-tech-7"].unit.ingredients, {"cryogenic-science-pack",   1})

	table.insert(Tech["par-roboport-tech-8"].unit.ingredients, {"space-science-pack",       4})
	table.insert(Tech["par-roboport-tech-8"].unit.ingredients, {"metallurgic-science-pack", 3})
	table.insert(Tech["par-roboport-tech-8"].unit.ingredients, {"cryogenic-science-pack",   2})

	table.insert(Tech["par-roboport-tech-9"].unit.ingredients, {"space-science-pack",       5})
	table.insert(Tech["par-roboport-tech-9"].unit.ingredients, {"metallurgic-science-pack", 4})
	table.insert(Tech["par-roboport-tech-9"].unit.ingredients, {"cryogenic-science-pack",   3})
	table.insert(Tech["par-roboport-tech-9"].unit.ingredients, {"promethium-science-pack",  1})

	table.insert(Tech["par-roboport-tech-10"].unit.ingredients, {"space-science-pack",       6})
	table.insert(Tech["par-roboport-tech-10"].unit.ingredients, {"metallurgic-science-pack", 5})
	table.insert(Tech["par-roboport-tech-10"].unit.ingredients, {"cryogenic-science-pack",   4})
	table.insert(Tech["par-roboport-tech-10"].unit.ingredients, {"promethium-science-pack",  2})

	table.insert(Tech["par-shield-tech-5"].unit.ingredients, {"space-science-pack", 1})

	table.insert(Tech["par-shield-tech-6"].unit.ingredients, {"space-science-pack",           2})
	table.insert(Tech["par-shield-tech-6"].unit.ingredients, {"electromagnetic-science-pack", 1})

	table.insert(Tech["par-shield-tech-7"].unit.ingredients, {"space-science-pack",           3})
	table.insert(Tech["par-shield-tech-7"].unit.ingredients, {"electromagnetic-science-pack", 2})
	table.insert(Tech["par-shield-tech-7"].unit.ingredients, {"cryogenic-science-pack",       1})

	table.insert(Tech["par-shield-tech-8"].unit.ingredients, {"space-science-pack",           4})
	table.insert(Tech["par-shield-tech-8"].unit.ingredients, {"electromagnetic-science-pack", 3})
	table.insert(Tech["par-shield-tech-8"].unit.ingredients, {"cryogenic-science-pack",       2})

	table.insert(Tech["par-shield-tech-9"].unit.ingredients, {"space-science-pack",           5})
	table.insert(Tech["par-shield-tech-9"].unit.ingredients, {"electromagnetic-science-pack", 4})
	table.insert(Tech["par-shield-tech-9"].unit.ingredients, {"cryogenic-science-pack",       3})
	table.insert(Tech["par-shield-tech-9"].unit.ingredients, {"promethium-science-pack",      1})

	table.insert(Tech["par-shield-tech-10"].unit.ingredients, {"space-science-pack",           6})
	table.insert(Tech["par-shield-tech-10"].unit.ingredients, {"electromagnetic-science-pack", 5})
	table.insert(Tech["par-shield-tech-10"].unit.ingredients, {"cryogenic-science-pack",       4})
	table.insert(Tech["par-shield-tech-10"].unit.ingredients, {"promethium-science-pack",      2})

	table.insert(Tech["par-fission-reactor-tech-5"].unit.ingredients, {"space-science-pack",      1})

	table.insert(Tech["par-fission-reactor-tech-6"].unit.ingredients, {"space-science-pack",           2})
	table.insert(Tech["par-fission-reactor-tech-6"].unit.ingredients, {"electromagnetic-science-pack", 1})

	table.insert(Tech["par-fission-reactor-tech-7"].unit.ingredients, {"space-science-pack",           3})
	table.insert(Tech["par-fission-reactor-tech-7"].unit.ingredients, {"electromagnetic-science-pack", 2})
	table.insert(Tech["par-fission-reactor-tech-7"].unit.ingredients, {"cryogenic-science-pack",       1})

	table.insert(Tech["par-fission-reactor-tech-8"].unit.ingredients, {"space-science-pack",           4})
	table.insert(Tech["par-fission-reactor-tech-8"].unit.ingredients, {"electromagnetic-science-pack", 3})
	table.insert(Tech["par-fission-reactor-tech-8"].unit.ingredients, {"cryogenic-science-pack",       2})

	table.insert(Tech["par-fission-reactor-tech-9"].unit.ingredients, {"space-science-pack",           5})
	table.insert(Tech["par-fission-reactor-tech-9"].unit.ingredients, {"electromagnetic-science-pack", 4})
	table.insert(Tech["par-fission-reactor-tech-9"].unit.ingredients, {"cryogenic-science-pack",       3})
	table.insert(Tech["par-fission-reactor-tech-9"].unit.ingredients, {"promethium-science-pack",      1})

	table.insert(Tech["par-fission-reactor-tech-10"].unit.ingredients, {"space-science-pack",           6})
	table.insert(Tech["par-fission-reactor-tech-10"].unit.ingredients, {"electromagnetic-science-pack", 5})
	table.insert(Tech["par-fission-reactor-tech-10"].unit.ingredients, {"cryogenic-science-pack",       4})
	table.insert(Tech["par-fission-reactor-tech-10"].unit.ingredients, {"promethium-science-pack",      2})
end