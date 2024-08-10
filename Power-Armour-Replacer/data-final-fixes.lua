--compatibilities
	--require("compatibilities.recipes.final-fixes.armour_updates")
	--require("compatibilities.recipes.final-fixes.fusion_updates")
	--require("compatibilities.recipes.final-fixes.shield_updates")

--structures
	require("structures.invalid-recipe-tech-replaced")
	require("structures.filters")

--compatibilities load order dependant
	require("compatibilities.misc.compatibility-recipe-final")
	require("compatibilities.misc.altered-tech-final")
	require("compatibilities.misc.mod-tech-prereq-final")