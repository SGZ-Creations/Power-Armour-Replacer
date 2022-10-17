local recipes = {
    {
        type = "recipe",
        name = "bi_mk1",
        energy_required = 10,
        ingredients = {
            {"lubricant", 200},
            {"electronic-circuit", 10},
            {"plastic-bar", 35},
            {"battery", 5},
        },
        result = "bi_mk1"
    },
    {
        type = "recipe",
        name = "bi_mk2",
        energy_required = 20,
        ingredients = {
            {"bi_mk1", 1},
            {"sulfuric-acid", 150},
            {"",},
            {"",},
            {"",},
        },
        result = "bi_mk2"
    },
    {
        type = "recipe",
        name = "nv_mk1",
        energy_required = 10,
        ingredients = {
            {"lubricant", 200},
            {"",},
            {"",},
            {"",},
            {"",},
        },
        result = "nv_mk1"
    },
    {
        type = "recipe",
        name = "nv_mk2",
        energy_required = 20,
        ingredients = {
            {"nv_mk1", 1},
            {"lubricant", 200},
            {"",},
            {"",},
            {"",},
        },
        result = "nv_mk2"
    },
}

local items = {
    {
        type = "equipment",
        name = "a_mk7",
        icon = "__base__.graphics.belt_immunity_equipment.png",
        stack_size = 1
    },
    {
        type = "equipment",
        name = "a_mk8",
        icon = "__base__.graphics.belt_immunity_equipment.png",
        stack_size = 1
    },
    {
        type = "equipment",
        name = "nv_mk1",
        icon = "__base__.graphics.nightvision.png",
        stack_size = 1
    },
    {
        type = "equipment",
        name = "nv_mk2",
        icon = "__base__.graphics.nightvision.png",
        stack_size = 1
    },
}

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
      buffer_capacity = "10kJ",
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