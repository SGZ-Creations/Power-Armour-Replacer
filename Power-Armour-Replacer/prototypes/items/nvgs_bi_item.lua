
local type = {
  "night-vision-equipment",
  "night-vision-equipment", 
  "belt-immunity-equipment", 
  "belt-immunity-equipment", 
}

local name = {
  "nv_mk1",
  "nv_mk2",
  "bi_mk1",
  "bi_mk2",
}

local buffer_capacity = {
  "120kJ", --nvg
  "100YJ", --||--
  "100kJ", --bi
  "10kJ" --||--
}

local input_flow_limit = {
  "240kW", --nvg
  "10kW", --||--
  "240kW", --bi
  "10kW" --||--
}

local energy_input = {
  "10kW", --nvg
  "0W", --||--
}
local energy_consumption = {
  "200kW", --bi
  "1W", --||--
}

local order = {
  "ja[night-vision]-aa[armour-replacer]",
  "jb[night-vision]-ab[armour-replacer]",
  "jc[belt-immunity]-ab[armour-replacer]",
  "jd[belt-immunity]-ab[armour-replacer]",
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
      type = type[i],
      name = name[i],
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
      placed_as_equipment_result = "nv_mk1",
      order = order[i],
      name = name[i],
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
      type = type[i + 2],
      name = name[i + 2],
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
      name = name[i + 2],
      icon = graphics[i + 2],
      icon_size = 64,
      stack_size = stack_size[i + 2],
      placed_as_equipment_result = name[i + 2],
      order = order[i + 2],
      subgroup = "replacer_item",
    },
  })
  i = i + 1
end
