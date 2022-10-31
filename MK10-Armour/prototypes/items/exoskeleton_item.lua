local graphics = {
    { "__base__/graphics/equipment/exoskeleton-equipment.png", "__base__/graphics/equipment/hr-exoskeleton-equipment.png" },
    { "__base__/graphics/equipment/exoskeleton-equipment.png", "__base__/graphics/equipment/hr-exoskeleton-equipment.png" },
    { "__base__/graphics/equipment/exoskeleton-equipment.png", "__base__/graphics/equipment/hr-exoskeleton-equipment.png" },
    { "__base__/graphics/equipment/exoskeleton-equipment.png", "__base__/graphics/equipment/hr-exoskeleton-equipment.png" },
    { "__base__/graphics/equipment/exoskeleton-equipment.png", "__base__/graphics/equipment/hr-exoskeleton-equipment.png" },
}

local speed_bonus = {
    0.5,
    1,
    1.5,
    2,
    2.5,
}

local energy_consumption = {
    "200kW",
    "350kW",
    "500kW",
    "650kW",
    "800kW",
}

local i = 1
while i < 6 do
    data:extend({
        {
            type = "movement-bonus-equipment",
            name = "e_mk" .. tostring(i),
            stack_size = 10,
            sprite =
            {
                filename = graphics[i][1],
                width = 32,
                height = 64,
                priority = "medium",
                hr_version = {
                    filename = graphics[i][2],

                    width = 64,
                    height = 128,
                    priority = "medium",
                    scale = 0.5
                }
            },
            shape =
            {
                width = 3,
                height = 5,
                type = "full"
            },
            energy_source =
            {
                type = "electric",
                usage_priority = "secondary-input"
            },
            energy_consumption = energy_consumption[i],
            movement_bonus = speed_bonus[i],
            categories = { "armor" }
        }
    })
    i = i + 1
end

local items = {
    {
        type = "item",
        name = "e_mk1",
        icon_size = 128,
        icon = "__base__/graphics/equipment/exoskeleton-equipment.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "e_mk2",
        icon_size = 128,
        icon = "__base__/graphics/equipment/exoskeleton-equipment.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "e_mk3",
        icon_size = 128,
        icon = "__base__/graphics/equipment/exoskeleton-equipment.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "e_mk4",
        icon_size = 128,
        icon = "__base__/graphics/equipment/exoskeleton-equipment.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "e_mk5",
        icon_size = 128,
        icon = "__base__/graphics/equipment/exoskeleton-equipment.png",
        stack_size = 1
    },
}
data:extend(items)