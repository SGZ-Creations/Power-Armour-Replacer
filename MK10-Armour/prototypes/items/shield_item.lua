  local function shield_to_buf_cap(max)
    return tostring(max * 1.0)
  end
  local function shield_to_flow_limit(max)
    return tostring(max * 10.0)
  end
  local function shield_to_per_shield(max)
    return tostring(max * 0.001)
  end

  local max_s_1 = 100
  local max_s_2 = 500
  local max_s_3 = 1000
  local max_s_4 = 5000
  local max_s_5 = 10000
  local max_s_6 = 500000
  local max_s_7 = 1000000
  local max_s_8 = 3000000
  local max_s_9 = 5000000
  local max_s_10 = 10000000

  data:extend({
    {
      subgroup = "equipment",
      type = "energy-shield-equipment",
      name = "s_mk1",
      sprite =
      {
        filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
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
      max_shield_value = max_s_1,
      energy_source =
      {
        type = "electric",
        buffer_capacity = shield_to_buf_cap(max_s_1) .. "kJ",
        input_flow_limit = shield_to_flow_limit(max_s_1) .. "kW",
        usage_priority = "primary-input"
      },
      energy_per_shield = shield_to_per_shield(max_s_1) .. "kJ",
      categories = { "armor" }
    },
    {
      subgroup = "equipment",
      type = "energy-shield-equipment",
      name = "s_mk2",
      sprite =
      {
        filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
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
      max_shield_value = max_s_2,
      energy_source =
      {
        type = "electric",
        buffer_capacity = shield_to_buf_cap(max_s_2) .. "kJ",
        input_flow_limit = shield_to_flow_limit(max_s_2) .. "kW",
        usage_priority = "primary-input"
      },
      energy_per_shield = shield_to_per_shield(max_s_2) .. "kJ",
      categories = { "armor" }
    },

    {
      subgroup = "equipment",
      type = "energy-shield-equipment",
      name = "s_mk3",
      sprite =
      {
        filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
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
      max_shield_value = max_s_3,
      energy_source =
      {
        type = "electric",
        buffer_capacity = shield_to_buf_cap(max_s_3) .. "kJ",
        input_flow_limit = shield_to_flow_limit(max_s_3) .. "kW",
        usage_priority = "primary-input"
      },
      energy_per_shield = shield_to_per_shield(max_s_3) .. "kJ",
      categories = { "armor" }
    },

    {
      subgroup = "equipment",
      type = "energy-shield-equipment",
      name = "s_mk4",
      sprite =
      {
        filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
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
      max_shield_value = max_s_4,
      energy_source =
      {
        type = "electric",
        buffer_capacity = shield_to_buf_cap(max_s_4) .. "kJ",
        input_flow_limit = shield_to_flow_limit(max_s_4) .. "kW",
        usage_priority = "primary-input"
      },
      energy_per_shield = shield_to_per_shield(max_s_4) .. "kJ",
      categories = { "armor" }
    },

    {
      subgroup = "equipment",
      type = "energy-shield-equipment",
      name = "s_mk5",
      sprite =
      {
        filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
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
      max_shield_value = max_s_5,
      energy_source =
      {
        type = "electric",
        buffer_capacity = shield_to_buf_cap(max_s_5) .. "kJ",
        input_flow_limit = shield_to_flow_limit(max_s_5) .. "kW",
        usage_priority = "primary-input"
      },
      energy_per_shield = shield_to_per_shield(max_s_5) .. "kJ",
      categories = { "armor" }
    },

    {
      subgroup = "equipment",
      type = "energy-shield-equipment",
      name = "s_mk6",
      sprite =
      {
        filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
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
      max_shield_value = max_s_6,
      energy_source =
      {
        type = "electric",
        buffer_capacity = shield_to_buf_cap(max_s_6) .. "kJ",
        input_flow_limit = shield_to_flow_limit(max_s_6) .. "kW",
        usage_priority = "primary-input"
      },
      energy_per_shield = shield_to_per_shield(max_s_6) .. "kJ",
      categories = { "armor" }
    },

    {
      subgroup = "equipment",
      type = "energy-shield-equipment",
      name = "s_mk7",
      sprite =
      {
        filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
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
      max_shield_value = max_s_7,
      energy_source =
      {
        type = "electric",
        buffer_capacity = shield_to_buf_cap(max_s_7) .. "kJ",
        input_flow_limit = shield_to_flow_limit(max_s_7) .. "kW",
        usage_priority = "primary-input"
      },
      energy_per_shield = shield_to_per_shield(max_s_7) .. "kJ",
      categories = { "armor" }
    },

    {
      subgroup = "equipment",
      type = "energy-shield-equipment",
      name = "s_mk8",
      sprite =
      {
        filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
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
      max_shield_value = max_s_8,
      energy_source =
      {
        type = "electric",
        buffer_capacity = shield_to_buf_cap(max_s_8) .. "kJ",
        input_flow_limit = shield_to_flow_limit(max_s_8) .. "kW",
        usage_priority = "primary-input"
      },
      energy_per_shield = shield_to_per_shield(max_s_8) .. "kJ",
      categories = { "armor" }
    },

    {
      subgroup = "equipment",
      type = "energy-shield-equipment",
      name = "s_mk9",
      sprite =
      {
        filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
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
      max_shield_value = max_s_9,
      energy_source =
      {
        type = "electric",
        buffer_capacity = shield_to_buf_cap(max_s_9) .. "kJ",
        input_flow_limit = shield_to_flow_limit(max_s_9) .. "kW",
        usage_priority = "primary-input"
      },
      energy_per_shield = shield_to_per_shield(max_s_9) .. "kJ",
      categories = { "armor" }
    },

    {
      type = "energy-shield-equipment",
      name = "s_mk10",
      sprite =
      {
        filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
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
      max_shield_value = max_s_10,
      energy_source =
      {
        type = "electric",
        buffer_capacity = shield_to_buf_cap(max_s_10) .. "kJ",
        input_flow_limit = shield_to_flow_limit(max_s_10) .. "kW",
        usage_priority = "primary-input"
      },
      energy_per_shield = shield_to_per_shield(max_s_10) .. "kJ",
      categories = { "armor" }
    },
  })
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