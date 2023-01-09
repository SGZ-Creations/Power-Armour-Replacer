
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
        subgroup = "equipment",
        order = "aa[exoskeleton]-a[exoskeleton-equipment]",
        icon_size = 64, icon_mipmaps = 4,
        icon = "__base__/graphics/equipment/exoskeleton-equipment.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "e_mk2",
        subgroup = "equipment",
        order = "ab[exoskeleton]-a[exoskeleton-equipment]",
        icon_size = 64, icon_mipmaps = 4,
        icon = "__base__/graphics/equipment/exoskeleton-equipment.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "e_mk3",
        subgroup = "equipment",
        order = "ac[exoskeleton]-a[exoskeleton-equipment]",
        icon_size = 64, icon_mipmaps = 4,
        icon = "__base__/graphics/equipment/exoskeleton-equipment.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "e_mk4",
        subgroup = "equipment",
        order = "ad[exoskeleton]-a[exoskeleton-equipment]",
        icon_size = 64, icon_mipmaps = 4,
        icon = "__base__/graphics/equipment/exoskeleton-equipment.png",
        stack_size = 1
    },
    {
        type = "item",
        name = "e_mk5",
        subgroup = "equipment",
        order = "ae[exoskeleton]-a[exoskeleton-equipment]",
        icon_size = 64, icon_mipmaps = 4,
        icon = "__base__/graphics/equipment/exoskeleton-equipment.png",
        stack_size = 1
    },
}
data:extend(items)