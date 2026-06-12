--structures
	require("structures.invalid-recipe-tech-replaced")
	require("structures.filters")

--compatible.misc load order dependant
	require("mods.Misc.FinalFixes.subgroup")

--recipes load order dependant
    require("mods.recipes.final-fixes.AngelsPlatinum")
	require("mods.recipes.final-fixes.compatible-recipe")
	require("mods.recipes.final-fixes.pY-recipe-final-fix")

--Recycling load order dependant
	require("structures.RecyclingFinalFix")

--compatible.tech load order dependant
	require("mods.technology.final-fixes.K2_SO")
	require("mods.technology.final-fixes.TewaksFinalFixes")
	require("mods.technology.final-fixes.AngelsScienceFinalFix")
	require("mods.technology.final-fixes.BobsScienceFinalFix")
	require("mods.technology.final-fixes.pY-tech-final-fix")
	require("mods.technology.final-fixes.par-depedency-fixes")
    require("mods.technology.final-fixes.par-tech-final-fixes")