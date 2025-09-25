--structures
	require("structures.invalid-recipe-tech-replaced")
	require("structures.filters")

--compatible.misc load order dependant
	require("mods.Misc.FinalFixes.subgroup")
	require("mods.recipes.final-fixes.compatible-recipe")
	require("mods.recipes.final-fixes.roboports_finalfix")

--compatible.tech load order dependant
	require("structures.ReversFactory.ReversFixes")
    require("structures.RecyclingFinalFix")
	require("mods.technology.final-fixes.par-depedency-fixes")
    require("mods.technology.final-fixes.par-tech-final-fixes")
    require("structures.SimulationScenarioCrash")