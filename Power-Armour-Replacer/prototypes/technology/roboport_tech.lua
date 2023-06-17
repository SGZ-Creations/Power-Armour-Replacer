data:extend({
    {
    type = "technology",
    name = "roboport_1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-equipment.png"),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk1"
      },
    },
    prerequisites = {"armour_1", "fusion-reactor_1"},
    unit =
    {
      count = 750,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "roboport_2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-mk2-equipment.png"),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk2"
      },
    },
    prerequisites = {"roboport_1",},
    unit =
    {
      count = 750,
      ingredients = {
        {"automation-science-pack", 2},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "roboport_3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-mk2-equipment.png"),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk3"
      },
    },
    prerequisites = {"roboport_2",},
    unit =
    {
      count = 750,
      ingredients = {
        {"automation-science-pack", 3},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "roboport_4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-mk2-equipment.png"),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk4"
      },
    },
    prerequisites = {"roboport_3",},
    unit =
    {
      count = 750,
      ingredients = {
        {"automation-science-pack", 4},
        {"logistic-science-pack", 2},
        {"military-science-pack", 1},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "roboport_5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-mk2-equipment.png"),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk5"
      },
    },
    prerequisites = {"roboport_4", },
    unit =
    {
      count = 750,
      ingredients = {
        {"automation-science-pack", 5},
        {"logistic-science-pack", 3},
        {"military-science-pack", 2},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "roboport_6",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-mk2-equipment.png"),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk6"
      },
    },
    prerequisites = {"roboport_5", },
    unit =
    {
      count = 750,
      ingredients = {
        {"automation-science-pack", 6},
        {"logistic-science-pack", 4},
        {"military-science-pack", 3},
        {"chemical-science-pack", 2},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "roboport_7",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-mk2-equipment.png"),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk7"
      },
    },
    prerequisites = {"roboport_6", },
    unit =
    {
      count = 750,
      ingredients = {
        {"automation-science-pack", 7},
        {"logistic-science-pack", 5},
        {"military-science-pack", 4},
        {"chemical-science-pack", 3},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "roboport_8",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-mk2-equipment.png"),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk8"
      },
    },
    prerequisites = {"roboport_7", },
    unit =
    {
      count = 750,
      ingredients = {
        {"automation-science-pack", 8},
        {"logistic-science-pack", 6},
        {"military-science-pack", 5},
        {"chemical-science-pack", 4},
        {"production-science-pack", 1},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "roboport_9",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-mk2-equipment.png"),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk9"
      },
    },
    prerequisites = {"roboport_8",} ,
    unit =
    {
      count = 750,
      ingredients = {
        {"automation-science-pack", 9},
        {"logistic-science-pack", 7},
        {"military-science-pack", 6},
        {"chemical-science-pack", 5},
        {"production-science-pack", 2},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "roboport_10",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-mk2-equipment.png"),
    effects =
    {
      
      
      {
        type = "unlock-recipe",
        recipe = "r_mk10"
      },
    },
    prerequisites = {"roboport_9",},
    unit =
    {
      count = 750,
      ingredients = {
        {"automation-science-pack", 10},
        {"logistic-science-pack", 8},
        {"military-science-pack", 7},
        {"chemical-science-pack", 6},
        {"production-science-pack", 3},
        {"utility-science-pack", 1},
      },
      time = 15
    },
    order = "g-a-b"
  }
});