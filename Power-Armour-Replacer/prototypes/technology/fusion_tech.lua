data:extend({
    {
    type = "technology",
    name = "fusion-reactor_1",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "f_mk1"
      },
    },
    prerequisites = {"armour_1",},
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "fusion-reactor_2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "f_mk2"
      },
    },
    prerequisites = {"fusion-reactor_1", "solar_2"},
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 2},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "fusion-reactor_3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "f_mk3"
      },
    },
    prerequisites = {"fusion-reactor_2", "solar_3"},
    unit =
    {
      count = 500,
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
    name = "fusion-reactor_4",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "f_mk4"
      },
    },
    prerequisites = {"fusion-reactor_3", "solar_4"},
    unit =
    {
      count = 500,
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
    name = "fusion-reactor_5",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "f_mk5"
      },
    },
    prerequisites = {"fusion-reactor_4", "solar_5"},
    unit =
    {
      count = 500,
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
    name = "fusion-reactor_6",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "f_mk6"
      },
    },
    prerequisites = {"fusion-reactor_5", "solar_6"},
    unit =
    {
      count = 500,
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
    name = "fusion-reactor_7",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "f_mk7"
      },
    },
    prerequisites = {"fusion-reactor_6", "solar_7"},
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 7},
        {"logistic-science-pack", 5},
        {"military-science-pack", 4},
        {"chemical-science-pack", 3},
        {"production-science-pack", 1},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "fusion-reactor_8",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "f_mk8"
      },
    },
    prerequisites = {"fusion-reactor_7", "solar_8"},
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 8},
        {"logistic-science-pack", 6},
        {"military-science-pack", 5},
        {"chemical-science-pack", 4},
        {"production-science-pack", 2},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "fusion-reactor_9",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "f_mk9"
      },
    },
    prerequisites = {"fusion-reactor_8", "solar_9"},
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 9},
        {"logistic-science-pack", 7},
        {"military-science-pack", 6},
        {"chemical-science-pack", 5},
        {"production-science-pack", 3},
        {"utility-science-pack", 1},
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "fusion-reactor_10",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "f_mk10"
      },
    },
    prerequisites = {"fusion-reactor_9", "solar_10"},
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 10},
        {"logistic-science-pack", 8},
        {"military-science-pack", 7},
        {"chemical-science-pack", 6},
        {"production-science-pack", 4},
        {"utility-science-pack", 2},
      },
      time = 15
    },
    order = "g-a-b"
  }
});