local util = require("mods.util")
local DRR = data.raw.recipe

util.ingredient_prereq(DRR["mech-armor"],
{
    {
        dependencies = {"space-age"},
        replacements = {
            ["par-armour-mk2"] = {"par-armour-mk5", 1},
        }
    },
})
util.ingredient_prereq(DRR["mech-armor"],
{
    {
        dependencies = {"mech-armor"},
        replacements = {
            ["par-armour-mk2"] = {"par-armour-mk5", 1},
        }
    },
})

util.ingredient_prereq(DRR["spidertron_mk2"],
{
    {
        dependencies = {"spidertrontiers-community-updates"},
        replacements = {
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 8},
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk7", 4},
        }
    },
})

util.ingredient_prereq(DRR["spidertron_mk3"],
{
    {
        dependencies = {"spidertrontiers-community-updates"},
        replacements = {
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 12},
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk9", 8},
        }
    },
})

util.ingredient_prereq(DRR["cannon-spidertron"],
{
    {
        dependencies = {"Cannon_Spidertron"},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk5", 2},
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 4},
        }
    },
})

util.ingredient_prereq(DRR["ss-space-spidertron"],
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

util.ingredient_prereq(DRR["artillery-spidertron"],
{
    {
        dependencies = {"artillery-spidertron"},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk5", 2},
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 4},
        }
    },
})

util.ingredient_prereq(DRR["spidertron"],
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
            ["par-fission-reactor-mk5"] = {"mech-brain", 10},
        }
    },
    {
        dependencies = {"bobrevamp", "bobplates"},
        replacements = {
            ["mech-brain"] = {"rtg", 20},
            ["par-fission-reactor-mk5"] = {"rtg", 20}
        }
    },
    {
        dependencies = {"bobrevamp", "bobplates", "bobwarfare",},
        replacements = {
            ["mech-brain"] = {"rtg", 20},
            ["par-fission-reactor-mk5"] = {"rtg", 20},
            {"mech-brain", 10},
        }
    },
})


util.ingredient_prereq(DRR["heavy-spidertron"],
{
    {
        dependencies = {"bobwarfare"},
        replacements = {
            ["par-fission-reactor-mk1"] = {"mech-brain", 5},
        }
    },
    {
        dependencies = {"bobrevamp", "bobplates",},
        replacements = {
            ["mech-brain"] = {"rtg", 10},
            ["par-fission-reactor-mk1"] = {"rtg", 10},
        }
    },
    {
        dependencies = {"bobrevamp", "bobplates", "bobwarfare",},
        replacements = {
            ["mech-brain"] = {"rtg", 10},
            ["par-fission-reactor-mk1"] = {"rtg", 10},
            {"mech-brain", 5},
        }
    },
})

--spidertron-extended
util.ingredient_prereq(DRR["spidertronmk2"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 5},
        }
    },
})

util.ingredient_prereq(DRR["spidertronmk3"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 5},
        }
    },
})

util.ingredient_prereq(DRR["immolator"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 5},
        }
    },
})

util.ingredient_prereq(DRR["spidertron-builder"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 5},
        }
    },
})

--SpaceModFeorasFork
util.ingredient_prereq(DRR["fusion-reactor"],
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

util.ingredient_prereq(DRR["protection-field"],
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

util.ingredient_prereq(DRR["space-ai-robot"],
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

util.ingredient_prereq(DRR["space-ai-robot-frame"],
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

util.ingredient_prereq(DRR["laser-cannon"], {
    {
        dependencies = {"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["personal-laser-defense-equipment-6"] = {"par-laser-mk6", 100},
        }
    },
})