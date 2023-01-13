
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
        },
        {
            type = "item",
            name = "e_mk" .. tostring(i),
            subgroup = "equipment",
            order = orders[i],
            icon_size = 64, icon_mipmaps = 4,
            icon = "__base__/graphics/icons/exoskeleton-equipment.png",
            stack_size = 1
        }
    })
    i = i + 1
end