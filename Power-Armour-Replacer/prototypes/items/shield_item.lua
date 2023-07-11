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
  "faz[energy-shield-mk2]-aa[armour-replacer]",--1
  "fbz[energy-shield-mk2]-ab[armour-replacer]",--2
  "fcz[energy-shield-mk2]-ac[armour-replacer]",--3
  "fdz[energy-shield-mk2]-ad[armour-replacer]",--4
  "fez[energy-shield-mk2]-ae[armour-replacer]",--5
  "ffz[energy-shield-mk2]-af[armour-replacer]",--6
  "fgz[energy-shield-mk2]-ag[armour-replacer]",--7
  "fhz[energy-shield-mk2]-ah[armour-replacer]",--8
  "fiz[energy-shield-mk2]-ai[armour-replacer]",--9
  "fjz[energy-shield-mk2]-aj[armour-replacer]",--10
}

-- Shield value.
local max_s = {
  1000,--1
  5000,--2
  10000,--3
  50000,--4
  100000,--5
  500000,--6
  1000000,--7
  3000000,--8
  5000000,--9
  10000000,--10
}
-- Intenal battery
local buffer_capacity = {
  "0.2MJ",
  "0.4MJ",
  "0.6MJ",
  "0.8MJ",
  "1.0MJ",
  "1.2MJ",
  "1.4MJ",
  "1.6MJ",
  "1.8MJ",
  "2.0MJ",
}
--Max Consuption has effect on recharge speed
local input_flow_limit = {
  "1GW",   --1
  "2GW",   --2
  "3GW",   --3
  "4GW",   --4
  "5GW",   --5
  "6GW",   --6
  "7GW",   --7
  "8GW",   --8
  "9GW",   --9
  "10GW",   --10
}

-- Recharge speed the higer the lower it charges Doin't touch beyond 0.1.34-6p1
local energy_per_shield = {
"10000kJ",      --1
"5000kJ",       --2
"2500kJ",       --3
"1200kJ",       --4
"640kJ",        --5
"300kJ",        --6
"160kJ",        --7
"80kJ",         --8
"40kJ",         --9
"20kJ",         --10
}

local i = 1
while i < 11 do
  data:extend({
    {
      subgroup = "replacer_item",
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
      subgroup = "replacer_item",
    }
  })
  i = i + 1
end