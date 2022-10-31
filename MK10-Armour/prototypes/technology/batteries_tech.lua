data:extend({
    {
    type = "technology",
    name = "battery_1",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/battery-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "b_mk1"
      },
    },
    prerequisites = {"armour_1",},
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
    name = "battery_2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/battery-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "b_mk2"
      },
    },
    prerequisites = {"armour_2", "battery_1",},
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
    name = "battery_3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/battery-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "b_mk3"
      },
    },
    prerequisites = {"armour_3", "battery_2",},
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
    name = "battery_4",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/battery-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "b_mk4"
      },
    },
    prerequisites = {"armour_4", "battery_3",},
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
    name = "battery_5",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/battery-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "b_mk5"
      },
    },
    prerequisites = {"armour_5", "battery_4",},
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
    name = "battery_6",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/battery-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "b_mk6"
      },
    },
    prerequisites = {"armour_6", "battery_5",},
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
    name = "battery_7",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/battery-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "b_mk7"
      },
    },
    prerequisites = {"armour_7", "battery_6",},
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
    name = "battery_8",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/battery-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "b_mk8"
      },
    },
    prerequisites = {"armour_8", "battery_7",},
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
    name = "battery_9",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/battery-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "b_mk9"
      },
    },
    prerequisites = {"armour_9", "battery_8",},
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
    name = "battery_10",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/battery-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "b_mk10"
      },
    },
    prerequisites = {"armour_10", "battery_9",},
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