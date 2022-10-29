-- armour
data:extend(
{
  {
    type = "technology",
    name = "armour_1",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "a_mk1"
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
    name = "armour_2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "a_mk2"
      },
    },
    prerequisites = {"armour_1", "plastics"},
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
    name = "armour_3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "a_mk3"
      },
    },
    prerequisites = {"armour_2", "advanced-electronics",},
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
    name = "armour_4",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "a_mk4"
      },
    },
    prerequisites = {"armour_3", "low-density-structure", "uranium-processing", "military-science-pack"},
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
    name = "armour_5",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "a_mk5"
      },
    },
    prerequisites = {"armour_4", "advanced-electronics-2", "electric-engine"},
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
    name = "armour_6",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "a_mk6"
      },
    },
    prerequisites = {"armour_5", "rocket-fuel", "rocket-control-unit", "chemical-science-pack"},
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
    name = "armour_7",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "a_mk7"
      },
    },
    prerequisites = {"armour_6", "nuclear-power", "effect-transmission"},
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
    name = "armour_8",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "a_mk8"
      },
    },
    prerequisites = {"armour_7", "production-science-pack", "advanced-material-processing-2"},
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
    name = "armour_9",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "a_mk9"
      },
    },
    prerequisites = {"armour_8", "automation-3"},
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
    name = "armour_10",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "a_mk10"
      },
    },
    prerequisites = {"armour_9", "rocket-silo", "logistics-3"},
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
  },

-- Batteries

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
  },

-- Fusion

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
        {"automation-science-pack", 1}
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
    prerequisites = {"armour_2", "fusion-reactor_1"},
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 2}
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
    prerequisites = {"armour_3", "fusion-reactor_2"},
    unit =
    {
      count = 500,
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
    prerequisites = {"armour_4", "fusion-reactor_3",},
    unit =
    {
      count = 500,
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
    prerequisites = {"armour_5", "fusion-reactor_4",},
    unit =
    {
      count = 500,
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
    prerequisites = {"armour_6", "fusion-reactor_5",},
    unit =
    {
      count = 500,
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
    prerequisites = {"armour_7", "fusion-reactor_6",},
    unit =
    {
      count = 500,
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
    prerequisites = {"armour_8", "fusion-reactor_7",},
    unit =
    {
      count = 500,
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
    prerequisites = {"armour_9", "fusion-reactor_8",},
    unit =
    {
      count = 500,
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
    prerequisites = {"armour_10", "fusion-reactor_9",},
    unit =
    {
      count = 500,
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
  },

-- Shields

  {
    type = "technology",
    name = "shields_1",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/energy-shield-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "s_mk1"
      },
    },
    prerequisites = {"armour_1",},
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "shields_2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/energy-shield-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "s_mk2"
      },
    },
    prerequisites = {"armour_2",},
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 2}
      },
      time = 15
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "shields_3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/energy-shield-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "s_mk3"
      },
    },
    prerequisites = {"armour_3",},
    unit =
    {
      count = 500,
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
    name = "shields_4",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/energy-shield-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "s_mk4"
      },
    },
    prerequisites = {"armour_4", "shields_3",},
    unit =
    {
      count = 500,
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
    name = "shields_5",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/energy-shield-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "s_mk5"
      },
    },
    prerequisites = {"armour_5", "shields_4",},
    unit =
    {
      count = 500,
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
    name = "shields_6",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/energy-shield-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "s_mk6"
      },
    },
    prerequisites = {"armour_6", "shields_5",},
    unit =
    {
      count = 500,
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
    name = "shields_7",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/energy-shield-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "s_mk7"
      },
    },
    prerequisites = {"armour_7", "shields_6",},
    unit =
    {
      count = 500,
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
    name = "shields_8",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/energy-shield-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "s_mk8"
      },
    },
    prerequisites = {"armour_8", "shields_7",},
    unit =
    {
      count = 500,
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
    name = "shields_9",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/energy-shield-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "s_mk9"
      },
    },
    prerequisites = {"armour_9", "shields_8",},
    unit =
    {
      count = 500,
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
    name = "shields_10",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/energy-shield-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "s_mk10"
      },
    },
    prerequisites = {"armour_10", "shields_9",},
    unit =
    {
      count = 500,
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
  },

-- Roboport
  --[[
  {
    type = "technology",
    name = "progression_1",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor.png",
    effects =
    {
      
      {
        type = "unlock-recipe",
        recipe = "ps_mk1"
      },
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
        recipe = "ps_mk2"
      },
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
        recipe = "ps_mk3"
      },
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
        recipe = "ps_mk4"
      },
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
        recipe = "ps_mk5"
      },
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
        recipe = "ps_mk6"
      },
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
        recipe = "ps_mk7"
      },
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
        recipe = "ps_mk8"
      },
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
        recipe = "ps_mk9"
      },
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
        recipe = "ps_mk10"
      },
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
  }, 
  ]]
-- Personal Solar 


-- exolegging

 --[[{
    type = "technology",
    name = "exoskeleton-mk1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
    prerequisites = {"armour_1", "advanced-electronics-2", "electric-engine", "solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "e_mk1"
      }
    },
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 15
    },
    order = "g-h"
  },
  {
    type = "technology",
    name = "exoskeleton-mk2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
    prerequisites = {"armour_3", "advanced-electronics-2", "electric-engine", "solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "e_mk2"
      }
    },
    unit =
    {
      count = 1000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "g-h"
  },
  {
    type = "technology",
    name = "exoskeleton-mk3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
    prerequisites = {"armour_5", "advanced-electronics-2", "electric-engine", "solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "e_mk3"
      }
    },
    unit =
    {
      count = 1500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 15
    },
    order = "g-h"
  },
  {
    type = "technology",
    name = "exoskeleton-mk4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
    prerequisites = {"armour_7", "advanced-electronics-2", "electric-engine", "solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "e_mk4"
      }
    },
    unit =
    {
      count = 2000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    order = "g-h"
  },
  {
    type = "technology",
    name = "exoskeleton-mk5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
    prerequisites = {"armour_9", "advanced-electronics-2", "electric-engine", "solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "e_mk5"
      }
    },
    unit =
    {
      count = 2500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    order = "g-h"
  },
]]--

-- The_Rest

  {
    type = "technology",
    name = "nv-bi_mk1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__MK10-Armour__/texture/tech/belt-immunity-night-vision-equipment.png"),
    prerequisites = {"armour_3"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nv_mk1"
      },
      {
        type = "unlock-recipe",
        recipe = "bi_mk1"
      },
    },
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 15
    },
    order = "g-g"
  },
  {
    type = "technology",
    name = "no-power-equipment_mk2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__MK10-Armour__/texture/tech/belt-immunity-night-vision-equipment-1.png"),
    prerequisites = {"armour_7", "battery", "nv-bi_mk1", "advanced-electronics-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nv_mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "bi_mk2"
      },
    },
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
        {"military-science-pack", 2},
        {"chemical-science-pack", 2}
      },
      time = 15
    },
    order = "g-g"
  },
})