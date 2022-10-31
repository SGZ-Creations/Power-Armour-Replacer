data:extend({
  {
    type = "technology",
    name = "spidertron-fix",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/spidertron.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "spidertron"
      },
      {
        type = "unlock-recipe",
        recipe = "spidertron-remote"
      }
    },
    prerequisites = {"military-4", "exoskeleton_5", "fusion-reactor_5", "rocketry", "rocket-control-unit", "effectivity-module-3" },
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30,
      count = 2500
    },
    order = "d-e-g"
  },
  {
    type = "technology",
    name = "discharge-defense-equipment-fix",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/discharge-defense-equipment.png"),
    prerequisites = {"laser-turret", "military-3", "armour_1", "solar-energy"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "discharge-defense-equipment"
      },
      {
        type = "unlock-recipe",
        recipe = "discharge-defense-remote"
      }
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    order = "g-o"
  },
  {
    type = "technology",
    name = "personal-roboport-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-equipment.png"),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-equipment"
      }
    },
    prerequisites = { "construction-robotics", "solar-panel-equipment"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-d-zz"
  },
});