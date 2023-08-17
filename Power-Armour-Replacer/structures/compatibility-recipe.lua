local compat = require("compatibilities.mods-compat")

compat.update_ingredients(data.raw.recipe["cannon-spidertron"],
{
  {
    dependencies = {"Cannon_Spidertron"},
    replacements = {
      ["f_mk1"] = {"f_mk5", 2},
      ["e_mk1"] = {"e_mk5", 4},
    }
  },
})

compat.update_ingredients(data.raw.recipe["ss-space-spidertron"],
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

compat.update_ingredients(data.raw.recipe["artillery-spidertron"],
{
  {
    dependencies = {"artillery-spidertron"},
    replacements = {
      ["f_mk1"] = {"f_mk5", 2},
      ["e_mk1"] = {"e_mk5", 4},
    }
  },
})

compat.update_ingredients(data.raw.recipe["spidertron"],
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

compat.update_ingredients(data.raw.recipe["fusion-reactor"],
{
  {
    dependencies = {"SpaceMod",},
    replacements = {
      ["f_mk1"] = {"f_mk4", 40},
    }
  },
})

compat.update_ingredients(data.raw.recipe["protection-field"],
{
  {
    dependencies = {"SpaceMod"},
    replacements = {
      ["s_mk2"] = {"s_mk6", 1000},
    }
  },
})

compat.update_ingredients(data.raw.recipe["protection-field-goopless"], {
  {
    dependencies = {"SpaceMod", "bobmodules",},
    replacements = {
      ["s_mk1"] = {"s_mk3", 1000},
    }
  },
})