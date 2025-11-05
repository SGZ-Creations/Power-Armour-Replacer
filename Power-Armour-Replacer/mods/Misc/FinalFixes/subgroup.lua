local Armour = data.raw["armor"]
local Item = data.raw["item"]


Armour["light-armor"].subgroup = "PAR_compatibility"
Armour["light-armor"].order = "AA"
Armour["heavy-armor"].subgroup = "PAR_compatibility"
Armour["heavy-armor"].order = "AC"
Item["discharge-defense-equipment"].subgroup = "PAR_compatibility"
Item["discharge-defense-equipment"].order = "FA"


if mods["space-age"] then
	Item["toolbelt-equipment"].subgroup = "PAR_compatibility"
	Item["toolbelt-equipment"].order = "FC"
end

if (mods["mech-armor"] or mods["space-age"]) then
	Armour["mech-armor"].subgroup = "PAR_compatibility"
	Armour["mech-armor"].order = "AE"
end

if mods["Power Armor MK3"] then
	Armour["pamk3-lvest"].subgroup = "PAR_compatibility"
	Armour["pamk3-lvest"].order = "AB"
	Armour["pamk3-hvest"].subgroup = "PAR_compatibility"
	Armour["pamk3-hvest"].order = "AD"
	Item["pamk3-pdd"].subgroup = "PAR_compatibility"
	Item["pamk3-pdd"].order = "FB"
end

if mods["nanobots-refined"] then
	Item["equipment-bot-chip-items"].subgroup = "PAR_compatibility"
	Item["equipment-bot-chip-items"].order = "HA"
	Item["equipment-bot-chip-launcher"].subgroup = "PAR_compatibility"
	Item["equipment-bot-chip-launcher"].order = "HB"
	Item["equipment-bot-chip-trees"].subgroup = "PAR_compatibility"
	Item["equipment-bot-chip-trees"].order = "HC"
	Item["equipment-bot-chip-feeder"].subgroup = "PAR_compatibility"
	Item["equipment-bot-chip-feeder"].order = "HD"
	Item["equipment-bot-chip-nanointerface"].subgroup = "PAR_compatibility"
	Item["equipment-bot-chip-nanointerface"].order = "HE"
end
if mods["RampantArsenalFork"] then
	Item["shotgun-passive-defense-rampant-arsenal"].subgroup = "PAR_compatibility"
	Item["shotgun-passive-defense-rampant-arsenal"].order = "TA"
	Item["cannon-passive-defense-rampant-arsenal"].subgroup = "PAR_compatibility"
	Item["cannon-passive-defense-rampant-arsenal"].order = "TB"
	Item["lightning-passive-defense-rampant-arsenal"].subgroup = "PAR_compatibility"
	Item["lightning-passive-defense-rampant-arsenal"].order = "TC"
	Item["bullets-passive-defense-rampant-arsenal"].subgroup = "PAR_compatibility"
	Item["bullets-passive-defense-rampant-arsenal"].order = "TD"
	Item["slow-passive-defense-rampant-arsenal"].subgroup = "PAR_compatibility"
	Item["slow-passive-defense-rampant-arsenal"].order = "TE"
end
if mods["RampantArsenalFork"] and (mods["space-age"] or mods["mech-armor"]) then
	Armour["combat-mech-armor-rampant-arsenal"].subgroup = "PAR_compatibility"
	Armour["combat-mech-armor-rampant-arsenal"].order = "AF"
end

if mods["TeleportationEquipment"]then
	Item["teleportation-equipment"].subgroup = "PAR_compatibility"
	Item["teleportation-equipment"].order = "FD"
end

if mods["metal-and-stars"]then
	Armour["prototype-mech-armor"].subgroup = "PAR_compatibility"
	Armour["prototype-mech-armor"].order = "AG"
end
if mods["Krastorio2"] then
	Item["kr-energy-absorber-equipment"].subgroup = "PAR_K2Verified"
	Item["kr-energy-absorber-equipment"].order = "AA"
end

if mods["jetpack"] then
	Item["jetpack-1"].subgroup = "PAR_SEVerified"
	Item["jetpack-1"].order = "AA"
	Item["jetpack-2"].subgroup = "PAR_SEVerified"
	Item["jetpack-2"].order = "AB"
	Item["jetpack-3"].subgroup = "PAR_SEVerified"
	Item["jetpack-3"].order = "AC"
	Item["jetpack-4"].subgroup = "PAR_SEVerified"
	Item["jetpack-4"].order = "AD"
end

if mods["space-exploration"] then
	Item["se-lifesupport-equipment-1"].subgroup = "PAR_SEVerified"
	Item["se-lifesupport-equipment-1"].order = "BA"
	Item["se-lifesupport-equipment-2"].subgroup = "PAR_SEVerified"
	Item["se-lifesupport-equipment-2"].order = "BB"
	Item["se-lifesupport-equipment-3"].subgroup = "PAR_SEVerified"
	Item["se-lifesupport-equipment-3"].order = "BC"
	Item["se-lifesupport-equipment-4"].subgroup = "PAR_SEVerified"
	Item["se-lifesupport-equipment-4"].order = "BD"

	Armour["se-thruster-suit"].subgroup = "PAR_SEVerified"
	Armour["se-thruster-suit"].order = "CA"
	Armour["se-thruster-suit-2"].subgroup = "PAR_SEVerified"
	Armour["se-thruster-suit-2"].order = "CB"
	Armour["se-thruster-suit-3"].subgroup = "PAR_SEVerified"
	Armour["se-thruster-suit-3"].order = "CC"
	Armour["se-thruster-suit-4"].subgroup = "PAR_SEVerified"
	Armour["se-thruster-suit-4"].order = "CD"
end