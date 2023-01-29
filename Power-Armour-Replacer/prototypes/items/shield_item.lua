local graphics = {
  "__base__/graphics/equipment/energy-shield-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
}

local graphics2 = {
  "__base__/graphics/equipment/hr-energy-shield-equipment.png",--
  "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",--
}

local icon = {
  "__base__/graphics/equipment/energy-shield-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
  "__base__/graphics/equipment/energy-shield-mk2-equipment.png",--
}

local order = {
  "haz[energy-shield-mk2]-aa[armour-replacer]",--1
  "hbz[energy-shield-mk2]-ab[armour-replacer]",--2
  "hcz[energy-shield-mk2]-ac[armour-replacer]",--3
  "hdz[energy-shield-mk2]-ad[armour-replacer]",--4
  "hez[energy-shield-mk2]-ae[armour-replacer]",--5
  "hfz[energy-shield-mk2]-af[armour-replacer]",--6
  "hgz[energy-shield-mk2]-ag[armour-replacer]",--7
  "hhz[energy-shield-mk2]-ah[armour-replacer]",--8
  "hiz[energy-shield-mk2]-ai[armour-replacer]",--9
  "hjz[energy-shield-mk2]-aj[armour-replacer]",--10
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
  "2MJ",
  "4MJ",
  "6MJ",
  "8MJ",
  "10MJ",
  "12MJ",
  "14MJ",
  "16MJ",
  "18MJ",
  "20MJ",
}
--Max Consuption
local input_flow_limit = {
  "0.2GW",
  "0.4GW",
  "0.6GW",
  "0.8GW",
  "1.0GW",
  "1.2GW",
  "1.4GW",
  "1.6GW",
  "1.8GW",
  "2.0GW",
}

-- Recharge speed the higer the lower it charges
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

local i = 1
while i < 11 do
  data:extend({
    {
      subgroup = "equipment",
      type = "energy-shield-equipment",
      name = "s_mk" .. tostring(i),
      sprite =
      {
        filename = graphics[i],
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = graphics2[i],
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
    },
    {
      type = "item",
      name = "s_mk" .. tostring(i),
      icon = icon[i],
      icon_size = 64,
      stack_size = 20,
      placed_as_equipment_result = "s_mk" .. tostring(i),
      order = order[i],
      subgroup = "equipment",
    }
  })
  i = i + 1
end