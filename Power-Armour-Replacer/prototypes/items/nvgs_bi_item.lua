
local buffer_capacity = {
  "1TJ", --nvg
  "1kJ", --||--
  "1TJ", --bi
  "1kJ" --||--
}

local input_flow_limit = {
  "150GW", --nvg
  "1kW", --||--
  "150GW", --bi
  "1kW" --||--
}

local energy_input = {
  "125GW", --nvg
  "0W", --||--
}
local energy_consumption = {
  "125GW", --bi
  "1W", --||--
}

local order = {
  "jcc[night-vision]-ac[armour-replacer]", --1
  "jdd[night-vision]-ad[armour-replacer]", --2
  "jaa[belt-immunity]-aa[armour-replacer]",--3
  "jbb[belt-immunity]-ab[armour-replacer]",--4
}

local stack_size = {
  5, --nvg
  5, --||--
  5, --bi
  5, --||--
}

local graphics = {
  "__base__/graphics/equipment/night-vision-equipment.png",
  "__base__/graphics/equipment/night-vision-equipment.png",
  "__base__/graphics/icons/belt-immunity-equipment.png",
  "__base__/graphics/icons/belt-immunity-equipment.png",
}

local hr_graphics = {
  "__base__/graphics/equipment/hr-night-vision-equipment.png",
  "__base__/graphics/equipment/hr-night-vision-equipment.png",
  "__base__/graphics/equipment/hr-belt-immunity-equipment.png",
  "__base__/graphics/equipment/hr-belt-immunity-equipment.png",
}

local hr_size = {
  128, --nvg
  128, --||--
  64, --bi
  64, --||--
}

local i = 1
while i < 3 do
  data:extend({
    {
      type = "night-vision-equipment",
      name = "nv_mk" .. tostring(i),
      sprite =
      {
        filename = graphics[i],
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = hr_graphics[i],
          width = hr_size[i],
          height = hr_size[i],
          priority = "medium",
          scale = 0.5
        }
      },
      shape =
      {
        width = 1,
        height = 1,
        type = "full"
      },
      energy_source =
      {
        type = "electric",
        buffer_capacity = buffer_capacity[i],
        input_flow_limit = input_flow_limit[i],
        usage_priority = "primary-input"
      },
      energy_input = energy_input[i],
      categories = {"armor"},
      activate_sound = { filename = "__base__/sound/nightvision-on.ogg", volume = 0.5 },
      deactivate_sound = { filename = "__base__/sound/nightvision-off.ogg", volume = 0.5 },
      darkness_to_turn_on = 0.5,
      color_lookup = {{0.5, "__core__/graphics/color_luts/nightvision.png"}}
    },
    {
      type = "item",
      subgroup = "replacer_item",
      placed_as_equipment_result = "nv_mk" .. tostring(i),
      order = order[i],
      name = "nv_mk" .. tostring(i),
      icon = graphics[i],
      icon_size = 64,
      stack_size = stack_size[i],
    },
  })
  i = i + 1
end

i = 1
while i < 3 do
  data:extend({
    {
      type = "belt-immunity-equipment",
      name = "bi_mk" .. tostring(i),
      sprite =
      {
        filename = graphics[i + 2],
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = hr_graphics[i + 2],
          width = hr_size[i + 2],
          height = hr_size[i + 2],
          priority = "medium",
          scale = 0.5
        }
      },
      shape =
      {
        width = 1,
        height = 1,
        type = "full"
      },
      energy_source =
      {
        type = "electric",
        buffer_capacity = buffer_capacity[i + 2],
        input_flow_limit = input_flow_limit[i + 2],
        usage_priority = "primary-input"
      },
      energy_consumption = energy_consumption[i],
      categories = {"armor"},
      order = order[i + 2]
    },
    {
      type = "item",
      name = "bi_mk" .. tostring(i),
      icon = graphics[i + 2],
      icon_size = 64,
      stack_size = stack_size[i + 2],
      placed_as_equipment_result = "bi_mk" .. tostring(i),
      order = order[i + 2],
      subgroup = "replacer_item",
    },
  })
  i = i + 1
end
