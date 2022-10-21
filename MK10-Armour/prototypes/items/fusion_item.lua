i = 1
  while i < 11 do
  data:extend({ {
    type = "generator-equipment",
    name = "f_mk" .. tostring(i),
    sprite =
    {
      filename = "__base__/graphics/equipment/fusion-reactor-equipment.png",
      width = 128,
      height = 128,
      priority = "medium",
      hr_version =
      {
        filename = "__base__/graphics/equipment/hr-fusion-reactor-equipment.png",
        width = 256,
        height = 256,
        priority = "medium",
        scale = 0.5
      }
    },
    shape =
    {
      width = 3,
      height = 3,
      --type = "full"
      -- Can also be defined as manual (a set of points which fall within the width/height - can't be empty)
      type = "manual",
      points = {{0, 0},         {2, 0},
                {0, 1},         {2, 1},
                {0, 2}, {1, 2}, {2, 2},}
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = tostring(i * 10000000) .. "kW",
    categories = { "armor" }
  }})


    i = i + 1
  end