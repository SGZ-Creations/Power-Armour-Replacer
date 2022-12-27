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
      type = "full"
      -- Can also be defined as manual (a set of points which fall within the width/height - can't be empty)
      --[[type = "manual",
      points = {{0, 0},         {2, 0},
                {0, 1},         {2, 1},
                {0, 2}, {1, 2}, {2, 2},}]]
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

local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

local function string_random(length)
    if length > 0 then
        return string_random(length - 1) .. charset:sub(math.random(1, 62), 1)
    else
        return ""
    end
end

local i = 1
while i < 11 do

    data:extend({ {
        type = "item",
        name = "f_mk" .. tostring(i),
        icon = "__base__/graphics/icons/fusion-reactor-equipment.png",
        icon_size = 64,
        stack_size = 200,
        order = "[Fusion Reactor]" .. tostring(i - 1) .. string_random(25),
        subgroup = "equipment",
        placed_as_equipment_result = "f_mk" .. tostring(i),
    } })

    i = i + 1
end