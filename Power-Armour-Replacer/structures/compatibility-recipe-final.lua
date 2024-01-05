local util = require("compatibilities.util")

util.ingredient_prereq(data.raw.recipe["cannon-spidertron"],
{
    {
        dependencies = {"Cannon_Spidertron"},
        replacements = {
            ["f_mk1"] = {"f_mk5", 2},
            ["par-exoskelton-mk1"] = {"par-exoskelton-mk5", 4},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["ss-space-spidertron"],
{
    {
        dependencies = {"space-spidertron"},
        replacements = {
            ["bi_mk1"] = {"bi_mk2", 4},
            ["belt-immunity-equipment"] = {"bi_mk2", 4},
            ["f_mk1"] = {"f_mk5", 2},
            ["par-exoskelton-mk1"] = {"par-exoskelton-mk5", 4},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["artillery-spidertron"],
{
    {
        dependencies = {"artillery-spidertron"},
        replacements = {
            ["f_mk1"] = {"f_mk5", 2},
            ["par-exoskelton-mk1"] = {"par-exoskelton-mk5", 4},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["spidertron"],
{
    {
        dependencies = {"base"},
        replacements = {
            ["f_mk1"] = {"f_mk5", 2},
            ["par-exoskelton-mk1"] = {"par-exoskelton-mk5", 4},
        }
    },
    {
        dependencies = {"base", "bobrevamp", "bobplates",},
        replacements = {
            ["f_mk5"] = {"rtg", 2},
        }
    },
})

--spidertron-extended
util.ingredient_prereq(data.raw.recipe["spidertronmk2"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["f_mk1"] = {"f_mk10", 5},
        }
    },
    {
        dependencies = {"spidertron-extended", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["f_mk10"] = {"f_mk5", 5},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["spidertronmk3"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["f_mk1"] = {"f_mk10", 5},
        }
    },
    {
        dependencies = {"spidertron-extended", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["f_mk10"] = {"f_mk5", 5},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["immolator"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["f_mk1"] = {"f_mk10", 5},
        }
    },
    {
        dependencies = {"spidertron-extended", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["f_mk10"] = {"f_mk5", 5},
        }
    },
    {
        dependencies = {"spidertron-extended", "bobrevamp",},
        replacements = {
            ["refiend-concrete"] = {"heat-shield-tile", 100},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["spidertron-builder"],
{
    {
        dependencies = {"spidertron-extended",},
        replacements = {
            ["f_mk1"] = {"f_mk10", 5},
        }
    },
    {
        dependencies = {"spidertron-extended", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["f_mk10"] = {"f_mk5", 5},
        }
    },
})

--SpaceModFeorasFork
util.ingredient_prereq(data.raw.recipe["fusion-reactor"],
{
    {
        dependencies = {"SpaceModFeorasFork",},
        replacements = {
            ["f_mk1"] = {"f_mk10", 5},
        }
    },
    {
        dependencies = {"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["f_mk10"] = {"f_mk4", 40},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["protection-field"],
{
    {
        dependencies = {"SpaceModFeorasFork",},
        replacements = {
            ["s_mk2"] = {"s_mk10", 5},
        }
    },
    {
        dependencies = {"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["s_mk10"] = {"s_mk6", 100},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["space-ai-robot"],
{
    {
        dependencies = {"SpaceModFeorasFork",},
        replacements = {
            ["f_mk1"] = {"f_mk10", 7},
            ["par-battery-mk2"] = {"par-battery-mk10", 5},
            ["par-exoskelton-mk1"] = {"par-exoskelton-mk5", 7},
            ["bi_mk1"] = {"bi_mk2", 37},
        }
    },
    {
        dependencies = {"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["f_mk10"] = {"f_mk8", 3},
            ["par-battery-mk10"] = {"par-battery-mk8", 2},
            ["par-exoskelton-mk5"] = {"par-exoskelton-mk3", 3},
            ["bi_mk2"] = {"bi_mk2", 18},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["space-ai-robot-frame"],
{
    {
        dependencies = {"SpaceModFeorasFork",},
        replacements = {
            ["a_mk2"] = {"a_mk10", 5},
            ["l_mk1"] = {"l_mk10", 5},
            ["r_mk1"] = {"r_mk10", 5},
        }
    },
    {
        dependencies = {"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["a_mk10"] = {"a_mk8", 2},
            ["l_mk10"] = {"l_mk10", 2},
            ["r_mk10"] = {"r_mk10", 2},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["laser-cannon"], {
    {
        dependencies = {"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
        replacements = {
            ["personal-laser-defense-equipment-6"] = {"l_mk6", 100},
        }
    },
})