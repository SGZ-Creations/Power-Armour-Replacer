data:extend({
    {
    type = "technology",
    name = "roboport_1",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk1"
      },
    },
    prerequisites = {"heavy-armor", "steel-processing", "electronics",},
    unit =
    {
      count = 1000,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "progression_2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk2"
      },
    },
    prerequisites = {"progression_1", "plastics"},
    unit =
    {
      count = 1000,
      ingredients = {
        {"automation-science-pack", 2}
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "progression_3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk3"
      },
    },
    prerequisites = {"progression_2", "advanced-electronics",},
    unit =
    {
      count = 1000,
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
    name = "progression_4",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk4"
      },
    },
    prerequisites = {"progression_3", "low-density-structure", "uranium-processing", "military-science-pack"},
    unit =
    {
      count = 1000,
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
    name = "progression_5",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk5"
      },
    },
    prerequisites = {"progression_4", "advanced-electronics-2", "electric-engine"},
    unit =
    {
      count = 1000,
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
    name = "progression_6",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk6"
      },
    },
    prerequisites = {"progression_5", "rocket-fuel", "rocket-control-unit", "chemical-science-pack"},
    unit =
    {
      count = 1000,
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
    name = "progression_7",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk7"
      },
    },
    prerequisites = {"progression_6", "nuclear-power", "effect-transmission"},
    unit =
    {
      count = 1000,
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
    name = "progression_8",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk8"
      },
    },
    prerequisites = {"progression_7", "production-science-pack", "advanced-material-processing-2"},
    unit =
    {
      count = 1000,
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
    name = "progression_9",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "r_mk9"
      },
    },
    prerequisites = {"progression_8", "automation-3"},
    unit =
    {
      count = 1000,
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
    name = "progression_10",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      
      
      {
        type = "unlock-recipe",
        recipe = "r_mk10"
      },
    },
    prerequisites = {"progression_9", "rocket-silo", "logistics-3"},
    unit =
    {
      count = 1000,
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