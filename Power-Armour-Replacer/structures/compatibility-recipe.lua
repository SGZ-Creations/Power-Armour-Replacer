local util = require("compatibilities.util")

util.ingredient_prereq(data.raw.recipe["cannon-spidertron"],
{
  {
    dependencies = {"Cannon_Spidertron"},
    replacements = {
      ["f_mk1"] = {"f_mk5", 2},
      ["e_mk1"] = {"e_mk5", 4},
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
      ["e_mk1"] = {"e_mk5", 4},
    }
  },
})

util.ingredient_prereq(data.raw.recipe["artillery-spidertron"],
{
  {
    dependencies = {"artillery-spidertron"},
    replacements = {
      ["f_mk1"] = {"f_mk5", 2},
      ["e_mk1"] = {"e_mk5", 4},
    }
  },
})

util.ingredient_prereq(data.raw.recipe["spidertron"],
{
  {
    dependencies = {"base"},
    replacements = {
        ["f_mk1"] = {"f_mk5", 2},
        ["e_mk1"] = {"e_mk5", 4},
    }
  },
  {
    dependencies = {"base", "bobrevamp", "bobplates",},
    replacements = {
      ["f_mk5"] = {"rtg", 2},
    }
  },
})

--SpaceMod
util.ingredient_prereq(data.raw.recipe["fusion-reactor"],
{
  {
    dependencies = {"SpaceMod",},
    replacements = {
      ["f_mk1"] = {"f_mk10", 5},
    }
  },
  {
    dependencies = {"SpaceMod", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
    replacements = {
      ["f_mk10"] = {"f_mk4", 40},
    }
  },
})

util.ingredient_prereq(data.raw.recipe["protection-field"],
{
  {
    dependencies = {"SpaceMod",},
    replacements = {
      ["s_mk2"] = {"s_mk10", 5},
    }
  },
  {
    dependencies = {"SpaceMod", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
    replacements = {
      ["s_mk10"] = {"s_mk6", 100},
    }
  },
})

util.ingredient_prereq(data.raw.recipe["protection-field-goopless"], {
  {
    dependencies = {"SpaceMod", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
    replacements = {
      ["s_mk1"] = {"s_mk3", 1000},
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

util.ingredient_prereq(data.raw.recipe["laser-cannon"], {
  {
    dependencies = {"SpaceModFeorasFork", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",},
    replacements = {
      ["personal-laser-defense-equipment-6"] = {"l_mk6", 100},
    }
  },
})