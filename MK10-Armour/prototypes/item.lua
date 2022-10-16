
-- Armour's code
data:extend(
  {
    {
    type = "armor",
    name = "a_mk1",
    icon = "__base__/graphics/icons/power-armor.png",
    icon_size = 64, icon_mipmaps = 4,
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
    order = "a[power-armor]",
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
    icon = "__base__/graphics/icons/power-armor-mk2.png",
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
    order = "aa[power-armor-mk2]",
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
    icon = "__base__/graphics/icons/power-armor-mk2.png",
    icon_size = 64, icon_mipmaps = 4,
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
    order = "ab[power-armor-mk2]",
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
    icon = "__base__/graphics/icons/power-armor-mk2.png",
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
    order = "ac[power-armor-mk2]",
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
    icon = "__base__/graphics/icons/power-armor-mk2.png",
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
    order = "ad[power-armor-mk2]",
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
    icon = "__base__/graphics/icons/power-armor-mk2.png",
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
    order = "ae[power-armor-mk2]",
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
    icon = "__base__/graphics/icons/power-armor-mk2.png",
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
    order = "af[power-armor-mk2]",
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
    icon = "__base__/graphics/icons/power-armor-mk2.png",
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
    order = "ag[power-armor-mk2]",
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
    icon = "__base__/graphics/icons/power-armor-mk2.png",
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
    order = "ah[power-armor-mk2]",
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
    icon = "__base__/graphics/icons/power-armor-mk2.png",
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
    order = "ai[power-armor-mk2]",
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

-- Fusion's code

-- Leggings's code

-- Roboport's code

-- Shields's code

local function shield_to_buf_cap(max)
  return tostring(max * 1.2)
end
local function shield_to_flow_limit(max)
  return tostring(max * 2.4)
end
local function shield_to_per_shield(max)
  return tostring(max * 0.2)
end


local max_s_1 = 150
local max_s_2 = 300
local max_s_3 = 600
local max_s_4 = 1200
local max_s_5 = 2400
local max_s_6 = 4800
local max_s_7 = 9600
local max_s_8 = 19200
local max_s_9 = 38400
local max_s_10 = 76800


data:extend({
  {
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


-- The rest's code / belt immunity