
local graphics = {
    "__base__/graphics/equipment/exoskeleton-equipment.png",
    "__base__/graphics/equipment/exoskeleton-equipment.png",
    "__base__/graphics/equipment/exoskeleton-equipment.png",
    "__base__/graphics/equipment/exoskeleton-equipment.png",
    "__base__/graphics/equipment/exoskeleton-equipment.png",
}

local graphics2 = {
    "__base__/graphics/equipment/hr-exoskeleton-equipment.png",
    "__base__/graphics/equipment/hr-exoskeleton-equipment.png",
    "__base__/graphics/equipment/hr-exoskeleton-equipment.png",
    "__base__/graphics/equipment/hr-exoskeleton-equipment.png",
    "__base__/graphics/equipment/hr-exoskeleton-equipment.png",
}


local icon = {
    "__base__/graphics/icons/exoskeleton-equipment.png",
    "__base__/graphics/icons/exoskeleton-equipment.png",
    "__base__/graphics/icons/exoskeleton-equipment.png",
    "__base__/graphics/icons/exoskeleton-equipment.png",
    "__base__/graphics/icons/exoskeleton-equipment.png",
}

local speed_bonus = {
    1.0,
    2.0,
    3.0,
    4.0,
    5.0,
}

local energy_consumption = {
    "10.0MW",
    "20.0MW",
    "30.0MW",
    "40.0MW",
    "50.0MW",
}

local orders = {
    "ia[exoskeleton]-aa[armour-replacer]",
    "ib[exoskeleton]-ab[armour-replacer]",
    "ic[exoskeleton]-ac[armour-replacer]",
    "id[exoskeleton]-ad[armour-replacer]",
    "ie[exoskeleton]-ae[armour-replacer]",
}

local i = 1
while i < 6 do
    data:extend({
        {
            type = "movement-bonus-equipment",
            name = "e_mk" .. tostring(i),
            sprite =
            {
                filename = graphics[i],
                width = 64,
                height = 128,
                priority = "medium",
                hr_version = {
                    filename = graphics2[i],
                    width = 128,
                    height = 256,
                    priority = "medium",
                    scale = 0.5
                    }
            },
            shape =
            {
                width = 2,
                height = 4,
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
        },
        {
            type = "item",
            name = "e_mk" .. tostring(i),
            placed_as_equipment_result = "e_mk" .. tostring(i),
            subgroup = "replacer_item",
            order = orders[i],
            icon_size = 64, icon_mipmaps = 4,
            icon = icon[i],
            stack_size = 20,
        }
    })
    i = i + 1
end