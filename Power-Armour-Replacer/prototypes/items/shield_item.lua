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
-- Shield value.
  local max_s = {
    1000,
    5000,
    10000,
    50000,
    100000,
    500000,
    1000000,
    3000000,
    5000000,
    10000000,
  }
-- Intenal battery
  local buffer_capacity = {
    "20MJ",
    "40MJ",
    "60MJ",
    "80MJ",
    "100MJ",
    "12GJ",
    "14GJ",
    "16GJ",
    "18GJ",
    "20GJ",
  }
--Max Consuption
  local input_flow_limit = {
    "200MW",
    "180MW",
    "160MW",
    "140MW",
    "120MW",
    "100MW",
    "80MW",
    "60MW",
    "40MW",
    "20MW",
  }
-- Recharge speed the higer the lower it charges
-- This shit has to be besite to not make Mk 1 charge 1M/1s 
  local energy_per_shield = {
    "1.0MJ",
    "0.5MJ",
    "256kJ",
    "128kJ",
    "64kJ",
    "32kJ",
    "16kJ",
    "8kJ",
    "4kJ",
    "2kJ",
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
        stack_size = 20,
        placed_as_equipment_result = "s_mk1",
        order = "haz[energy-shield-mk2]-aa[armour-replacer]",
        subgroup = "equipment",
    },
    {
        type = "item",
        name = "s_mk2",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 20,
        placed_as_equipment_result = "s_mk2",
        order = "hbz[energy-shield-mk2]-ab[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk3",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 20,
        placed_as_equipment_result = "s_mk3",
        order = "hcz[energy-shield-mk2]-ac[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk4",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 20,
        placed_as_equipment_result = "s_mk4",
        order = "hdz[energy-shield-mk2]-ad[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk5",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 20,
        placed_as_equipment_result = "s_mk5",
        order = "hez[energy-shield-mk2]-ae[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk6",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 20,
        placed_as_equipment_result = "s_mk6",
        order = "hfz[energy-shield-mk2]-af[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk7",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 20,
        placed_as_equipment_result = "s_mk7",
        order = "hgz[energy-shield-mk2]-ag[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk8",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 20,
        placed_as_equipment_result = "s_mk8",
        order = "hhz[energy-shield-mk2]-ah[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk9",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 20,
        placed_as_equipment_result = "s_mk9",
        order = "hiz[energy-shield-mk2]-ai[armour-replacer]",
        subgroup = "equipment",

    },
    {
        type = "item",
        name = "s_mk10",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 64,
        stack_size = 20,
        placed_as_equipment_result = "s_mk10",
        order = "hjz[energy-shield-mk2]-aj[armour-replacer]",
        subgroup = "equipment",

    },
}
data:extend(items)