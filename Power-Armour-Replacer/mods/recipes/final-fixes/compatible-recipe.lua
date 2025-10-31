local PAR = require("mods.util")
---@class data.RecipePrototype
local Recipe = data.raw.recipe

PAR.ingredient_prereq(Recipe["mech-armor"],
{
    {
        dependencies = {"space-age"},
        replacements = {
            ["par-armour-mk2"] = {"par-armour-mk5", 1},
        }
    },
})

PAR.ingredient_prereq(Recipe["mech-armor"],
{
    {
        dependencies = {"mech-armor"},
        replacements = {
            ["par-armour-mk2"] = {"par-armour-mk5", 1},
        }
    },
})

PAR.ingredient_prereq(Recipe["spidertron_mk2"],
{
    {
        dependencies = {"spidertrontiers-community-updates"},
        replacements = {
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 8},
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk7", 4},
        }
    },
})

PAR.ingredient_prereq(Recipe["spidertron_mk3"],
{
    {
        dependencies = {"spidertrontiers-community-updates"},
        replacements = {
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 12},
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk9", 8},
        }
    },
})

PAR.ingredient_prereq(Recipe["cannon-spidertron"],
{
    {
        dependencies = {"Cannon_Spidertron"},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk5", 2},
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 4},
        }
    },
})

PAR.ingredient_prereq(Recipe["ss-space-spidertron"],
{
    {
        dependencies = {"space-spidertron"},
        replacements = {
            ["par-belt-immunity-mk1"] = {"par-belt-immunity-mk2", 4},
            ["belt-immunity-equipment"] = {"par-belt-immunity-mk2", 4},
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk5", 2},
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 4},
        }
    },
})

PAR.ingredient_prereq(Recipe["artillery-spidertron"],
{
    {
        dependencies = {"artillery-spidertron"},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk5", 2},
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 4},
        }
    },
})

PAR.ingredient_prereq(Recipe["spidertron"],
{
    {
        dependencies = {},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk5", 2},
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk2", 4},
        }
    },
    {
        dependencies = {"bobwarfare"},
        replacements = {
            ["par-fission-reactor-mk5"] = {"bob-mech-brain", 10},
        }
    },
    {
        dependencies = {"bobrevamp", "bobplates"},
        replacements = {
            ["bob-mech-brain"] = {"bob-rtg", 20},
            ["par-fission-reactor-mk5"] = {"bob-rtg", 20}
        }
    },
    {
        dependencies = {"bobrevamp", "bobplates", "bobwarfare",},
        replacements = {
            ["bob-mech-brain"] = {"bob-rtg", 20},
            ["par-fission-reactor-mk5"] = {"bob-rtg", 20},
            {"bob-mech-brain", 10},
        }
    },
})


PAR.ingredient_prereq(Recipe["bob-heavy-spidertron"],
{
    {
        dependencies = {"bobwarfare"},
        seetting = "bobmods-warfare-spidertron-overhaul",
        replacements = {
            ["par-fission-reactor-mk1"] = {"bob-mech-brain", 5},
        }
    },
    {
        dependencies = {"bobwarfare", "bobrevamp", "bobplates",},
        seetting = "bobmods-warfare-spidertron-overhaul",
        replacements = {
            ["bob-mech-brain"] = {"bob-rtg", 10},
            ["par-fission-reactor-mk1"] = {"bob-rtg", 10},
        }
    },
    {
        dependencies = {"bobrevamp", "bobplates", "bobwarfare",},
        seetting = "bobmods-warfare-spidertron-overhaul",
        replacements = {
            ["bob-mech-brain"] = {"bob-rtg", 10},
            ["par-fission-reactor-mk1"] = {"bob-rtg", 10},
            {"bob-mech-brain", 5},
        }
    },
})

--spidertron-extended
PAR.ingredient_prereq(Recipe["spidertronmk2"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 5},
        }
    },
})

PAR.ingredient_prereq(Recipe["spidertronmk3"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 5},
        }
    },
})

PAR.ingredient_prereq(Recipe["immolator"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 5},
        }
    },
})

PAR.ingredient_prereq(Recipe["spidertron-builder"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 5},
        }
    },
})

--SpaceModFeorasFork
PAR.ingredient_prereq(Recipe["fusion-reactor"],
{
    {
        dependencies = {"SpaceModFeorasFork",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 5},
        }
    },
    {
        dependencies = {"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["par-fission-reactor-mk10"] = {"par-fission-reactor-mk4", 40},
        }
    },
})

PAR.ingredient_prereq(Recipe["protection-field"],
{
    {
        dependencies = {"SpaceModFeorasFork",},
        replacements = {
            ["par-shield-mk2"] = {"par-shield-mk10", 5},
        }
    },
    {
        dependencies = {"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["par-shield-mk10"] = {"par-shield-mk6", 100},
        }
    },
})

PAR.ingredient_prereq(Recipe["space-ai-robot"],
{
    {
        dependencies = {"SpaceModFeorasFork",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 7},
            ["par-battery-mk2"] = {"par-battery-mk10", 5},
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 7},
            ["par-belt-immunity-mk1"] = {"par-belt-immunity-mk2", 37},
        }
    },
    {
        dependencies = {"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["par-fission-reactor-mk10"] = {"par-fission-reactor-mk8", 3},
            ["par-battery-mk10"] = {"par-battery-mk8", 2},
            ["par-exoskeleton-mk5"] = {"par-exoskeleton-mk3", 3},
            ["par-belt-immunity-mk2"] = {"par-belt-immunity-mk2", 18},
        }
    },
})

PAR.ingredient_prereq(Recipe["space-ai-robot-frame"],
{
    {
        dependencies = {"SpaceModFeorasFork",},
        replacements = {
            ["par-armour-mk2"] = {"par-armour-mk10", 5},
            ["par-laser-mk1"] = {"par-laser-mk10", 5},
            ["par-roboport-mk1"] = {"par-roboport-mk10", 5},
        }
    },
    {
        dependencies = {"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["par-armour-mk10"] = {"par-armour-mk8", 2},
            ["par-laser-mk6"] = {"par-laser-mk10", 2},
            ["par-laser-mk10"] = {"par-laser-mk10", 2},
            ["par-roboport-mk10"] = {"par-roboport-mk10", 2},
        }
    },
})

PAR.ingredient_prereq(Recipe["laser-cannon"], {
    {
        dependencies = {"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["personal-laser-defense-equipment-6"] = {"par-laser-mk6", 100},
        }
    },
})

if mods["metal-and-stars"] then
    Remove("prototype-mech-armor", "low-density-structure")
    Remove("prototype-mech-armor", "processing-unit")
    table.insert(Recipe["mech-armor"].ingredients, {type="item", name="prototype-mech-armor", amount= 1})
    table.insert(Recipe["prototype-mech-armor"].ingredients, {type="item", name="par-armour-mk3", amount= 1})
end