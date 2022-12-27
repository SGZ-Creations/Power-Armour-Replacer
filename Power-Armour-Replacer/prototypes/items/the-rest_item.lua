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
      input_flow_limit = "10kW",
      usage_priority = "primary-input"
    },
    energy_input = "10kW",
    categories = {"armor"},
    activate_sound = { filename = "__base__/sound/nightvision-on.ogg", volume = 0.5 },
    deactivate_sound = { filename = "__base__/sound/nightvision-off.ogg", volume = 0.5 },
    darkness_to_turn_on = 0.8,
    color_lookup = {{0.5, "__core__/graphics/color_luts/nightvision.png"}}
  },
})

local items = {
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
data:extend({
  {
    type = "belt-immunity-equipment",
    name = "bi_mk1",
    stack_size = 5,
    icon = "__base__/graphics/icons/belt-immunity-equipment.png",
    icon_size = 64,
    sprite =
    {
      filename = "__base__/graphics/equipment/belt-immunity-equipment.png",
      width = 32,
      height = 32,
      priority = "medium",
      hr_version =
      {
        filename = "__base__/graphics/equipment/hr-belt-immunity-equipment.png",
        width = 64,
        height = 64,
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
      buffer_capacity = "100kJ",
      input_flow_limit = "240kW",
      usage_priority = "primary-input"
    },
    energy_consumption = "200kW",
    categories = {"armor"},
    order = "b-i-c"
  },
  {
    type = "belt-immunity-equipment",
    name = "bi_mk2",
    stack_size = 5,
    icon = "__base__/graphics/icons/belt-immunity-equipment.png",
    icon_size = 64,
    sprite =
    {
      filename = "__base__/graphics/equipment/belt-immunity-equipment.png",
      width = 32,
      height = 32,
      priority = "medium",
      hr_version =
      {
        filename = "__base__/graphics/equipment/hr-belt-immunity-equipment.png",
        width = 64,
        height = 64,
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
      buffer_capacity = "10kJ",
      input_flow_limit = "10kW",
      usage_priority = "primary-input"
    },
    energy_consumption = "1W",
    categories = {"armor"},
    order = "b-i-c"
  },
  {
    type = "item",
    name = "bi_mk1",
    icon = "__base__/graphics/equipment/hr-belt-immunity-equipment.png",
    icon_size = 64,
    stack_size = 5,
    placed_as_equipment_result = "bi_mk1",
    order = "aa[energy-shield-mk2]",
    subgroup = "equipment",
  },
  {
    type = "item",
    name = "bi_mk2",
    icon = "__base__/graphics/equipment/hr-belt-immunity-equipment.png",
    icon_size = 64,
    stack_size = 5,
    placed_as_equipment_result = "bi_mk2",
    order = "ab[energy-shield-mk2]",
    subgroup = "equipment",
  },

})