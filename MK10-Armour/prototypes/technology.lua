-- armour
data:extend(
{
  {
    type = "technology",
    name = "progression_1",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "a_mk1"
      },
      {
        type = "unlock-recipe",
        recipe = "b_mk1"
      },
      {
        type = "unlock-recipe",
        recipe = "f_mk1"
      },
      {
        type = "unlock-recipe",
        recipe = "s_mk1"
      },--[[
      {
        type = "unlock-recipe",
        recipe = "ps_mk1"
      },
      {
        type = "unlock-recipe",
        recipe = "r_mk1"
      },]]
    },
    prerequisites = {"heavy-armor", "steel-processing", "electronics",},
    unit =
    {
      count = 1000,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 30
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
        recipe = "a_mk2"
      },{
        type = "unlock-recipe",
        recipe = "b_mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "f_mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "s_mk2"
      },--[[
      {
        type = "unlock-recipe",
        recipe = "ps_mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "r_mk2"
      },]]
    },
    prerequisites = {"progression_1", "advanced-electronics", "battery"},
    unit =
    {
      count = 1000,
      ingredients = {
        {"automation-science-pack", 2}
      },
      time = 30
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
        recipe = "a_mk3"
      },{
        type = "unlock-recipe",
        recipe = "b_mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "f_mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "s_mk3"
      },--[[
      {
        type = "unlock-recipe",
        recipe = "ps_mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "r_mk3"
      },]]
    },
    prerequisites = {"progression_2", "engine"},
    unit =
    {
      count = 1000,
      ingredients = {
        {"automation-science-pack", 3},
        {"logistic-science-pack", 1}
      },
      time = 30
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
        recipe = "a_mk4"
      },{
        type = "unlock-recipe",
        recipe = "b_mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "f_mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "s_mk4"
      },--[[
      {
        type = "unlock-recipe",
        recipe = "ps_mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "r_mk4"
      },]]
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
      time = 30
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
        recipe = "a_mk5"
      },{
        type = "unlock-recipe",
        recipe = "b_mk5"
      },
      {
        type = "unlock-recipe",
        recipe = "f_mk5"
      },
      {
        type = "unlock-recipe",
        recipe = "s_mk5"
      },--[[
      {
        type = "unlock-recipe",
        recipe = "ps_mk5"
      },
      {
        type = "unlock-recipe",
        recipe = "r_mk5"
      },]]
    },
    prerequisites = {"progression_4", "advanced-electronics-2", "electic-engine"},
    unit =
    {
      count = 1000,
      ingredients = {
        {"automation-science-pack", 5},
        {"logistic-science-pack", 3},
        {"military-science-pack", 2}
      },
      time = 30
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
        recipe = "a_mk6"
      },{
        type = "unlock-recipe",
        recipe = "b_mk6"
      },
      {
        type = "unlock-recipe",
        recipe = "f_mk6"
      },
      {
        type = "unlock-recipe",
        recipe = "s_mk6"
      },--[[
      {
        type = "unlock-recipe",
        recipe = "ps_mk6"
      },
      {
        type = "unlock-recipe",
        recipe = "r_mk6"
      },]]
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
      time = 30
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
        recipe = "a_mk7"
      },{
        type = "unlock-recipe",
        recipe = "b_mk7"
      },
      {
        type = "unlock-recipe",
        recipe = "f_mk7"
      },
      {
        type = "unlock-recipe",
        recipe = "s_mk7"
      },--[[
      {
        type = "unlock-recipe",
        recipe = "ps_mk7"
      },
      {
        type = "unlock-recipe",
        recipe = "r_mk7"
      },]]
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
      time = 30
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
        recipe = "a_mk8"
      },{
        type = "unlock-recipe",
        recipe = "b_mk8"
      },
      {
        type = "unlock-recipe",
        recipe = "f_mk8"
      },
      {
        type = "unlock-recipe",
        recipe = "s_mk8"
      },--[[
      {
        type = "unlock-recipe",
        recipe = "ps_mk8"
      },
      {
        type = "unlock-recipe",
        recipe = "r_mk8"
      },]]
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
      time = 30
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
        recipe = "a_mk9"
      },{
        type = "unlock-recipe",
        recipe = "b_mk9"
      },
      {
        type = "unlock-recipe",
        recipe = "f_mk9"
      },
      {
        type = "unlock-recipe",
        recipe = "s_mk9"
      },--[[
      {
        type = "unlock-recipe",
        recipe = "ps_mk9"
      },
      {
        type = "unlock-recipe",
        recipe = "r_mk9"
      },]]
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
      time = 30
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
        recipe = "a_mk10"
      },{
        type = "unlock-recipe",
        recipe = "b_mk10"
      },
      {
        type = "unlock-recipe",
        recipe = "f_mk10"
      },
      {
        type = "unlock-recipe",
        recipe = "s_mk10"
      },--[[
      {
        type = "unlock-recipe",
        recipe = "ps_mk10"
      },
      {
        type = "unlock-recipe",
        recipe = "r_mk10"
      },]]
    },
    prerequisites = {"progression_9", "utility-science-pack", "logistics-3"},
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
      time = 30
    },
    order = "g-a-b"
  },
-- exolegging
 --[[{
    type = "technology",
    name = "exoskeleton-mk1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
    prerequisites = {"advanced-electronics-2", "electric-engine", "solar-panel-equipment"},
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
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "g-h"
  },
  {
    type = "technology",
    name = "exoskeleton-mk2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
    prerequisites = {"advanced-electronics-2", "electric-engine", "solar-panel-equipment"},
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
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "g-h"
  },
  {
    type = "technology",
    name = "exoskeleton-mk3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
    prerequisites = {"advanced-electronics-2", "electric-engine", "solar-panel-equipment"},
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
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "g-h"
  },
  {
    type = "technology",
    name = "exoskeleton-mk4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
    prerequisites = {"advanced-electronics-2", "electric-engine", "solar-panel-equipment"},
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
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "g-h"
  },
  {
    type = "technology",
    name = "exoskeleton-mk5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
    prerequisites = {"advanced-electronics-2", "electric-engine", "solar-panel-equipment"},
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
      time = 30
    },
    order = "g-h"
  },
]]--


-- The_Rest


{
  type = "technology",
  name = "nv-bi_mk1",
  icon_size = 256, icon_mipmaps = 4,
  icons = util.technology_icon_constant_equipment("__base__/graphics/technology/night-vision-equipment.png"),
  prerequisites = {"progression_3"},
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "nv_mk1"
    },--[[
    {
      type = "unlock-recipe",
      recipe = "bi_mk1"
    },]]
  },
  unit =
  {
    count = 500,
    ingredients = {
      {"automation-science-pack", 2},
      {"logistic-science-pack", 1},
      {"military-science-pack", 2}
    },
    time = 15
  },
  order = "g-g"
},
{
  type = "technology",
  name = "no-power-equipment_mk2",
  icon_size = 256, icon_mipmaps = 4,
  icons = util.technology_icon_constant_equipment("__base__/graphics/technology/night-vision-equipment.png"),
  prerequisites = {"progression_5", "battery", "advanced-electronics-2"},
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "nv_mk2"
    },--[[
    {
      type = "unlock-recipe",
      recipe = "bi_mk2"
    },]]
  },
  unit =
  {
    count = 1000,
    ingredients = {
      {"automation-science-pack", 2},
      {"logistic-science-pack", 2},
      {"military-science-pack", 3},
      {"chemical-science-pack", 1}
    },
    time = 30
  },
  order = "g-g"
},
-- Batteries
-- Shields
-- Fusion
-- Roboport
-- Personal Solar 
})