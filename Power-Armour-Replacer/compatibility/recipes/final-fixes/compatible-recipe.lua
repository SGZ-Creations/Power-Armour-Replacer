local util = require("compatibility.util")

util.ingredient_prereq(data.raw.recipe["mech-armor"],
{
    {
        dependencies = {"space-age"},
        replacements = {
            ["par-armour-mk2"] = {"par-armour-mk5", 1},
        }
    },
})
util.ingredient_prereq(data.raw.recipe["mech-armor"],
{
    {
        dependencies = {"mech-armor"},
        replacements = {
            ["par-armour-mk2"] = {"par-armour-mk5", 1},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["spidertron_mk2"],
{
    {
        dependencies = {"spidertrontiers-community-updates"},
        replacements = {
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 8},
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk7", 4},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["spidertron_mk3"],
{
    {
        dependencies = {"spidertrontiers-community-updates"},
        replacements = {
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 12},
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk9", 8},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["cannon-spidertron"],
{
    {
        dependencies = {"Cannon_Spidertron"},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk5", 2},
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 4},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["ss-space-spidertron"],
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

util.ingredient_prereq(data.raw.recipe["artillery-spidertron"],
{
    {
        dependencies = {"artillery-spidertron"},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk5", 2},
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk5", 4},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["spidertron"],
{
    {
        dependencies = {"base"},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk5", 2},
            ["par-exoskeleton-mk1"] = {"par-exoskeleton-mk2", 4},
        }
    },
    {
        dependencies = {"base", "bobrevamp", "bobplates",},
        replacements = {
            ["par-fission-reactor-mk5"] = {"rtg", 2},
        }
    },
})

--spidertron-extended
util.ingredient_prereq(data.raw.recipe["spidertronmk2"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 5},
        }
    },
    {
        dependencies = {"spidertron-extended", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["par-fission-reactor-mk10"] = {"par-fission-reactor-mk5", 5},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["spidertronmk3"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 5},
        }
    },
    {
        dependencies = {"spidertron-extended", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["par-fission-reactor-mk10"] = {"par-fission-reactor-mk5", 5},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["immolator"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 5},
        }
    },
    {
        dependencies = {"spidertron-extended", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["par-fission-reactor-mk10"] = {"par-fission-reactor-mk5", 5},
        }
    },
    {
        dependencies = {"spidertron-extended", "bobrevamp",},
        replacements = {
            ["refined-concrete"] = {"heat-shield-tile", 200},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["spidertron-builder"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["par-fission-reactor-mk1"] = {"par-fission-reactor-mk10", 5},
        }
    },
    {
        dependencies = {"spidertron-extended", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["par-fission-reactor-mk10"] = {"par-fission-reactor-mk5", 5},
        }
    },
})

--SpaceModFeorasFork
util.ingredient_prereq(data.raw.recipe["fusion-reactor"],
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

util.ingredient_prereq(data.raw.recipe["protection-field"],
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

util.ingredient_prereq(data.raw.recipe["space-ai-robot"],
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

util.ingredient_prereq(data.raw.recipe["space-ai-robot-frame"],
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

util.ingredient_prereq(data.raw.recipe["laser-cannon"], {
    {
        dependencies = {"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["personal-laser-defense-equipment-6"] = {"par-laser-mk6", 100},
        }
    },
})