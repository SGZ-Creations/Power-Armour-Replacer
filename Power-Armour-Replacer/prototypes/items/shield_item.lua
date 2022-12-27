  local graphics = {
    "__base__/graphics/equipment/energy-shield-equipment.png", "__base__/graphics/equipment/hr-energy-shield-equipment.png",
    "__base__/graphics/equipment/energy-shield-mk2-equipment.png", "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
    "__base__/graphics/equipment/energy-shield-mk2-equipment.png", "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
    "__base__/graphics/equipment/energy-shield-mk2-equipment.png", "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
    "__base__/graphics/equipment/energy-shield-mk2-equipment.png", "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
    "__base__/graphics/equipment/energy-shield-mk2-equipment.png", "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
    "__base__/graphics/equipment/energy-shield-mk2-equipment.png", "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
    "__base__/graphics/equipment/energy-shield-mk2-equipment.png", "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
    "__base__/graphics/equipment/energy-shield-mk2-equipment.png", "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
    "__base__/graphics/equipment/energy-shield-mk2-equipment.png", "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
  }
-- shield value.
  local max_s = {
    100,
    500,
    1000,
    5000,
    10000,
    500000,
    1000000,
    3000000,
    5000000,
    10000000,
  }
--
  local buffer_capacity = {
    "100kW",
    "500kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
  }
--Max Consuption
  local input_flow_limit = {
    "100kW",
    "300kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
  }
--
  local energy_per_shield = {
    "1kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
    "10kW",
  }

  local j = 1
  local i = 1
  while i < 11 do
    data:extend({
      {
        subgroup = "equipment",
        type = "energy-shield-equipment",
        name = "s_mk" .. tostring(i),
        sprite =
        {
          filename = graphics[j],
          width = 64,
          height = 64,
          priority = "medium",
          hr_version =
          {
            filename = graphics[j + 1],
            width = 128,
            height = 128,
            priority = "medium",
            scale = 0.5
          }
        },
        shape =
        {
          width = 2,
          height = 2,
          type = "full"
        },
        max_shield_value = max_s[i],
        energy_source =
        {
          type = "electric",
          buffer_capacity = buffer_capacity[i],
          input_flow_limit = input_flow_limit[i],
          usage_priority = "primary-input"
        },
        energy_per_shield = energy_per_shield[i],
        categories = { "armor" }
      }
    })
    i = i + 1
    j = j + 2
  end
local items = {
    {
        type = "item",
        name = "s_mk1",
        icon = "__base__/graphics/equipment/energy-shield-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk1",
        order = "aa[energy-shield-mk2]",
        subgroup = "equipment",
    },
    {
        type = "item",
        name = "s_mk2",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk2",
        order = "ab[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk3",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk3",
        order = "ac[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk4",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk4",
        order = "ad[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk5",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk5",
        order = "ae[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk6",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk6",
        order = "af[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk7",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk7",
        order = "ag[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk8",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk8",
        order = "ah[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk9",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk9",
        order = "ai[energy-shield-mk2]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk10",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk10",
        order = "aj[energy-shield-mk2]",
        subgroup = "equipment",

    },
}
data:extend(items)