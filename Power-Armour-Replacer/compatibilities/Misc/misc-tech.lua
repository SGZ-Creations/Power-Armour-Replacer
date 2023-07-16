
if mods["Nanobots"] then
  data:extend({
    {
      type = "technology",
      name = "nv-bi_mk1",
      icon_size = 256, icon_mipmaps = 4,
      icons = util.technology_icon_constant_equipment("__Power-Armour-Replacer__/texture/tech/belt-immunity-night-vision-equipment.png"),
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
        {
          type = "unlock-recipe",
          recipe = "equipment-bot-chip-feeder"
        },
        {
          type = "unlock-recipe",
          recipe = "equipment-bot-chip-nanointerface"
        },
        {
          type = "unlock-recipe",
          recipe = "equipment-bot-chip-launcher"
        },
        {
          type = "unlock-recipe",
          recipe = "equipment-bot-chip-trees"
        },
        {
          type = "unlock-recipe",
          recipe = "equipment-bot-chip-items"
        },
      },
      unit =
      {
        count = 500,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"military-science-pack", 1},
        },
        time = 15
      },
      order = "g-g"
    },
  });
end

if mods["Krastorio2"] then
  data:extend({
    {
      type = "technology",
      name = "nv-bi_mk1",
      icon_size = 256, icon_mipmaps = 4,
      icons = util.technology_icon_constant_equipment("__Power-Armour-Replacer__/texture/tech/belt-immunity-night-vision-equipment.png"),
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
        {
          type = "unlock-recipe",
          recipe = "vehicle-roboport"
        },
      },
      unit =
      {
        count = 500,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"military-science-pack", 1},
        },
        time = 15
      },
      order = "g-g"
    },
  });
end

if mods["Krastorio2"] and mods["Nanobots"] then
  data:extend({
    {
      type = "technology",
      name = "nv-bi_mk1",
      icon_size = 256, icon_mipmaps = 4,
      icons = util.technology_icon_constant_equipment("__Power-Armour-Replacer__/texture/tech/belt-immunity-night-vision-equipment.png"),
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
        {
          type = "unlock-recipe",
          recipe = "equipment-bot-chip-feeder"
        },
        {
          type = "unlock-recipe",
          recipe = "equipment-bot-chip-nanointerface"
        },
        {
          type = "unlock-recipe",
          recipe = "equipment-bot-chip-launcher"
        },
        {
          type = "unlock-recipe",
          recipe = "equipment-bot-chip-trees"
        },
        {
          type = "unlock-recipe",
          recipe = "equipment-bot-chip-items"
        },
        {
          type = "unlock-recipe",
          recipe = "vehicle-roboport"
        },
      },
      unit =
      {
        count = 500,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"military-science-pack", 1},
        },
        time = 15
      },
      order = "g-g"
    },
  });
end