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
        recipe = "e_mk1"
      },
      {
        type = "unlock-recipe",
        recipe = "r_mk1"
      },]]
    },
    prerequisites = {"heavy-armor", "steel-processing"},
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
        recipe = "e_mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "r_mk2"
      },]]
    },
    prerequisites = {"progression_1", "advanced-electronics"},
    unit =
    {
      count = 1000,
      ingredients = {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "g-a-b"
  },
})
-- armour
-- exolegging
-- batteries
-- shields