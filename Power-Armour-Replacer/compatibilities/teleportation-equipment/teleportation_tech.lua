if mods["TeleportationEquipment"] then
  data:extend({
    {
      type = "technology",
      name = "teleportation-equipment",
      icon_size = 256, icon_mipmaps = 4,
      icon = "__TeleportationEquipment__/graphics/teleportation-equipment-technology.png",
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "teleportation-equipment"
        }
      },
      prerequisites =
      {
        "armour_3"
      },
      unit =
      {
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
        },
        time = 10,
        count = 1000
      },
      order = "d-e-g"
    },
  })
end