local Armour = data.raw["armor"]
local Item = data.raw["item"]


Armour["light-armor"].subgroup = "PAR_compatibility"
Armour["heavy-armor"].subgroup = "PAR_compatibility"
Item["discharge-defense-equipment"].subgroup = "PAR_compatibility"

if mods["space-age"] then
	Armour["mech-armor"].subgroup = "PAR_compatibility"
	Item["toolbelt-equipment"].subgroup = "PAR_compatibility"
end

if mods["Power Armor MK3"] then
	Armour["pamk3-lvest"].subgroup = "PAR_compatibility"
	Armour["pamk3-hvest"].subgroup = "PAR_compatibility"
	Item["pamk3-pdd"].subgroup = "PAR_compatibility"
end