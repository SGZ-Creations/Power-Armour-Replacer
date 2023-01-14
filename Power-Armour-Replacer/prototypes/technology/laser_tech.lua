data:extend({
    {
    type = "technology",
    name = "laser_1",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/laser-shooting-speed.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "l_mk1"
      },
    },
    prerequisites = {"armour_1", "steel-processing", },
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "laser_2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/laser-shooting-speed.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "l_mk2"
      },
    },
    prerequisites = {"laser_1", "battery"},
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 2}
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "laser_3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/laser-shooting-speed.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "l_mk3"
      },
    },
    prerequisites = {"laser_2", "advanced-electronics"},
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 3},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "laser_4",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/laser-shooting-speed.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "l_mk4"
      },
    },
    prerequisites = {"laser_3",},
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 4},
        {"logistic-science-pack", 2},
        {"military-science-pack", 1}
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "laser_5",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/laser-shooting-speed.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "l_mk5"
      },
    },
    prerequisites = {"laser_4",},
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 5},
        {"logistic-science-pack", 3},
        {"military-science-pack", 2}
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "laser_6",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/laser-shooting-speed.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "l_mk6"
      },
    },
    prerequisites = {"laser_5",},
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 6},
        {"logistic-science-pack", 4},
        {"military-science-pack", 3},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "laser_7",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/laser-shooting-speed.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "l_mk7"
      },
    },
    prerequisites = {"laser_6",},
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 7},
        {"logistic-science-pack", 5},
        {"military-science-pack", 4},
        {"chemical-science-pack", 2}
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "laser_8",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/laser-shooting-speed.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "l_mk8"
      },
    },
    prerequisites = {"laser_7",},
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 8},
        {"logistic-science-pack", 6},
        {"military-science-pack", 5},
        {"chemical-science-pack", 3},
        {"production-science-pack", 1}
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "laser_9",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/laser-shooting-speed.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "l_mk9"
      },
    },
    prerequisites = {"laser_8",},
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 9},
        {"logistic-science-pack", 7},
        {"military-science-pack", 6},
        {"chemical-science-pack", 4},
        {"production-science-pack", 2}
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "laser_10",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/laser-shooting-speed.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "l_mk10"
      },
    },
    prerequisites = {"laser_9",},
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 10},
        {"logistic-science-pack", 8},
        {"military-science-pack", 7},
        {"chemical-science-pack", 5},
        {"production-science-pack", 3},
        {"utility-science-pack", 1}
      },
      time = 15
    },
    order = "g-a-b"
  }
});