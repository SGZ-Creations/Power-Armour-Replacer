
local graphics = {
    { "__base__/graphics/equipment/exoskeleton-equipment.png", "__base__/graphics/equipment/hr-exoskeleton-equipment.png" },
    { "__base__/graphics/equipment/exoskeleton-equipment.png", "__base__/graphics/equipment/hr-exoskeleton-equipment.png" },
    { "__base__/graphics/equipment/exoskeleton-equipment.png", "__base__/graphics/equipment/hr-exoskeleton-equipment.png" },
    { "__base__/graphics/equipment/exoskeleton-equipment.png", "__base__/graphics/equipment/hr-exoskeleton-equipment.png" },
    { "__base__/graphics/equipment/exoskeleton-equipment.png", "__base__/graphics/equipment/hr-exoskeleton-equipment.png" },
}

local speed_bonus = {
    1.0,
    2.0,
    3.0,
    4.0,
    5.0,
}

local energy_consumption = {
    "1.0MW",
    "2.0MW",
    "3.0MW",
    "4.0MW",
    "5.0MW",
}

local orders = {
    "caz[exoskeleton]-aa[armour-replacer]",
    "cbz[exoskeleton]-ab[armour-replacer]",
    "ccz[exoskeleton]-ac[armour-replacer]",
    "cdz[exoskeleton]-ad[armour-replacer]",
    "cez[exoskeleton]-ae[armour-replacer]",
}

local i = 1
while i < 6 do
    data:extend({
        {
            type = "movement-bonus-equipment",
            name = "e_mk" .. tostring(i),
            sprite =
            {
                filename = graphics[i][1],
                width = 64,
                height = 128,
                priority = "medium",
                hr_version = {
                    filename = graphics[i][2],
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
            subgroup = "equipment",
            order = orders[i],
            icon_size = 64, icon_mipmaps = 4,
            icon = "__base__/graphics/icons/exoskeleton-equipment.png",
            stack_size = 20
        }
    })
    i = i + 1
end