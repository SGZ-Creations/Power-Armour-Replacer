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
    "200MJ",
    "400MJ",
    "600MJ",
    "800MJ",
    "1000MJ",
    "1200MJ",
    "1400MJ",
    "1600MJ",
    "1800MJ",
    "2000MJ",
  }
--Max Consuption
  local input_flow_limit = {
    "2GW",
    "4GW",
    "6GW",
    "8GW",
    "10GW",
    "12GW",
    "14GW",
    "16GW",
    "18GW",
    "20GW",
  }
-- Recharge speed the higer the lower it charges
  local energy_per_shield = {
    "5MJ",
    "10MJ",
    "15MJ",
    "20MJ",
    "25MJ",
    "30MJ",
    "35MJ",
    "40MJ",
    "45MJ",
    "50MJ",
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
        order = "haz[energy-shield-mk2]-aa[armour-replacer]",
        subgroup = "equipment",
    },
    {
        type = "item",
        name = "s_mk2",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk2",
        order = "hbz[energy-shield-mk2]-ab[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk3",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk3",
        order = "hcz[energy-shield-mk2]-ac[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk4",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk4",
        order = "hdz[energy-shield-mk2]-ad[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk5",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk5",
        order = "hez[energy-shield-mk2]-ae[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk6",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk6",
        order = "hfz[energy-shield-mk2]-af[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk7",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk7",
        order = "hgz[energy-shield-mk2]-ag[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk8",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk8",
        order = "hhz[energy-shield-mk2]-ah[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk9",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk9",
        order = "hiz[energy-shield-mk2]-ai[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk10",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        placed_as_equipment_result = "s_mk10",
        order = "hjz[energy-shield-mk2]-aj[armour-replacer]",
        subgroup = "equipment",

    },
}
data:extend(items)