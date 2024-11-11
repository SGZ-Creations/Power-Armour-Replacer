--structures
	require("structures.invalid-recipe-tech-replaced")
	require("structures.filters")

--compatibilities.misc load order dependant
	require("compatibilities.mods-recipes.compatibility-recipe-final")
	require("compatibilities.technology.final-fixes.altered-tech-final")

--compatibilities.tech load order dependant
    require("compatibilities.technology.final-fixes.par-tech-final-fixes")