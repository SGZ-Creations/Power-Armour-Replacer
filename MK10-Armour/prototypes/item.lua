
-- Armour's code
data:extend(
  {
    {
    type = "armor",
    name = "a_mk1",
    icon = "__MK10-Armour__/texture/items/power-armor.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 6,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 50
      },
      {
        type = "explosion",
        decrease = 30,
        percent = 35
      },
      {
        type = "fire",
        decrease = 0,
        percent = 40
      }
    },
    subgroup = "armor",
    order = "ba[power-armor]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a1-equipment-grid",
    inventory_size_bonus = 50,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk2",
    icon = "__MK10-Armour__/texture/items/power-armor-mk2.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "ba[power-armor-mk2]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a2-equipment-grid",
    inventory_size_bonus = 100,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk3",
    icon = "__MK10-Armour__/texture/items/power-armor-mk3.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 20,
        percent = 50
      },
      {
        type = "acid",
        decrease = 10,
        percent = 80
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 60
      },
      {
        type = "fire",
        decrease = 10,
        percent = 80
      }
    },
    subgroup = "armor",
    order = "bb[power-armor-mk2]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a3-equipment-grid",
    inventory_size_bonus = 150,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk4",
    icon = "__MK10-Armour__/texture/items/power-armor-mk4.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "bc[power-armor-mk2]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a4-equipment-grid",
    inventory_size_bonus = 200,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk5",
    icon = "__MK10-Armour__/texture/items/power-armor-mk5.png",
    icon_size = 64, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "bd[power-armor-mk2]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a5-equipment-grid",
    inventory_size_bonus = 250,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk6",
    icon = "__MK10-Armour__/texture/items/power-armor-mk6.png",
    icon_size = 64, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "be[power-armor-mk2]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a6-equipment-grid",
    inventory_size_bonus = 300,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk7",
    icon = "__MK10-Armour__/texture/items/power-armor-mk7.png",
    icon_size = 64, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "bf[power-armor-mk2]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a7-equipment-grid",
    inventory_size_bonus = 350,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk8",
    icon = "__MK10-Armour__/texture/items/power-armor-mk8.png",
    icon_size = 64, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "bg[power-armor-mk2]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a8-equipment-grid",
    inventory_size_bonus = 400,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk9",
    icon = "__MK10-Armour__/texture/items/power-armor-mk9.png",
    icon_size = 64, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "bh[power-armor-mk2]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a9-equipment-grid",
    inventory_size_bonus = 450,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk10",
    icon = "__MK10-Armour__/texture/items/power-armor-mk10.png",
    icon_size = 64, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "bi[power-armor-mk2]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a10-equipment-grid",
    inventory_size_bonus = 500,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
})
data:extend(
  {
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a1-equipment-grid",
      width = 10,
      height = 10,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a2-equipment-grid",
      width = 20,
      height = 20,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a3-equipment-grid",
      width = 30,
      height = 30,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a4-equipment-grid",
      width = 40,
      height = 40,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a5-equipment-grid",
      width = 50,
      height = 50,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a6-equipment-grid",
      width = 60,
      height = 60,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a7-equipment-grid",
      width = 70,
      height = 70,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a8-equipment-grid",
      width = 80,
      height = 80,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a9-equipment-grid",
      width = 90,
      height = 90,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a10-equipment-grid",
      width = 100,
      height = 100,
    },
  })

-- Batteries's code
  local i = 1
  while i < 11 do
    data:extend({{
      type = "battery-equipment",
      name = "b_mk" .. tostring(i),
      sprite =
      {
        filename = "__base__/graphics/equipment/battery-equipment.png",
        width = 32,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-battery-equipment.png",
          width = 64,
          height = 128,
          priority = "medium",
          scale = 0.5
        }
      },
      shape =
      {
        width = 1,
        height = 2,
        type = "full"
      },
      energy_source =
      {
        type = "electric",
        buffer_capacity = tostring(i * 10000) .. "MJ",
        usage_priority = "tertiary"
      },
      categories = { "armor" }
    }})

    i = i + 1
  end

-- Fusion's code
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


-- Leggings's code

-- Roboport's code

-- Shields's code

local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

local function string_random(length)
    if length > 0 then
        return string_random(length - 1) .. charset:sub(math.random(1, 62), 1)
    else
        return ""
    end
end

data:extend({ {
    type = "item",
    name = "b_mk1",
    icon = "__base__/graphics/icons/battery-equipment.png",
    icon_size = 64,
    stack_size = 200,
    order = "[Battery]" .. "0" .. string_random(25),
    subgroup = "equipment",
    placed_as_equipment_result = "b_mk1",
}})


local i = 2
while i < 11 do

    data:extend({{
        type = "item",
        name = "b_mk" .. tostring(i),
        icon = "__base__/graphics/icons/battery-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        order = "[Battery]" .. tostring(i - 1) .. string_random(25),
        subgroup = "equipment",
        placed_as_equipment_result = "b_mk" .. tostring(i),
    }})

    i = i + 1
end

  local function shield_to_buf_cap(max)
    return tostring(max * 1.0)
  end
  local function shield_to_flow_limit(max)
    return tostring(max * 10.0)
  end
  local function shield_to_per_shield(max)
    return tostring(max * 0.001)
  end

  local max_s_1 = 100000
  local max_s_2 = 200000
  local max_s_3 = 400000
  local max_s_4 = 800000
  local max_s_5 = 1600000
  local max_s_6 = 3200000
  local max_s_7 = 6250000
  local max_s_8 = 10000000
  local max_s_9 = 15000000
  local max_s_10 = 25000000

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




-- The rest's code / Night Vision
data:extend(
{
  {
    type = "night-vision-equipment",
    name = "nv_mk1",
    sprite =
    {
      filename = "__base__/graphics/equipment/night-vision-equipment.png",
      width = 64,
      height = 64,
      priority = "medium",
      hr_version =
      {
        filename = "__base__/graphics/equipment/hr-night-vision-equipment.png",
        width = 128,
        height = 128,
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
      buffer_capacity = "120kJ",
      input_flow_limit = "240kW",
      usage_priority = "primary-input"
    },
    energy_input = "10kW",
    categories = {"armor"},
    activate_sound = { filename = "__base__/sound/nightvision-on.ogg", volume = 0.5 },
    deactivate_sound = { filename = "__base__/sound/nightvision-off.ogg", volume = 0.5 },
    darkness_to_turn_on = 0.5,
    color_lookup = {{0.5, "__core__/graphics/color_luts/nightvision.png"}}
  },
  {
    type = "night-vision-equipment",
    name = "nv_mk2",
    sprite =
    {
      filename = "__base__/graphics/equipment/night-vision-equipment.png",
      width = 64,
      height = 64,
      priority = "medium",
      hr_version =
      {
        filename = "__base__/graphics/equipment/hr-night-vision-equipment.png",
        width = 128,
        height = 128,
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
      buffer_capacity = "5kJ",
      input_flow_limit = "0kW",
      usage_priority = "primary-input"
    },
    energy_input = "10kW",
    categories = {"armor"},
    activate_sound = { filename = "__base__/sound/nightvision-on.ogg", volume = 0.5 },
    deactivate_sound = { filename = "__base__/sound/nightvision-off.ogg", volume = 0.5 },
    darkness_to_turn_on = 0.5,
    color_lookup = {{0.5, "__core__/graphics/color_luts/nightvision.png"}}
  },
})

local items = {

  --[[
 {
     type = "item",
     name = "a_mk7",
     icon = "__base__/graphics/belt_immunity_equipment.png",
     stack_size = 1
 },
 {
     type = "item",
     name = "a_mk8",
     icon = "__base__/graphics/belt_immunity_equipment.png",
     stack_size = 1
 },
]]--
 {
     type = "item",
     subgroup = "equipment",
     name = "nv_mk1",
     icon = "__base__/graphics/icons/night-vision-equipment.png",
     icon_size = 64,
     stack_size = 5
 },
 {
     type = "item",
     subgroup = "equipment",
     name = "nv_mk2",
     icon = "__base__/graphics/icons/night-vision-equipment.png",
     icon_size = 64,
     stack_size = 5
 },
 
}
data:extend(items)
-- The rest's code / belt immunity