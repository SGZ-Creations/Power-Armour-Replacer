
local graphics = {
    "__base__/graphics/equipment/battery-equipment.png",
    "__base__/graphics/equipment/battery-mk2-equipment.png",
    "__base__/graphics/equipment/battery-mk2-equipment.png",
    "__base__/graphics/equipment/battery-mk2-equipment.png",
    "__base__/graphics/equipment/battery-mk2-equipment.png",
    "__base__/graphics/equipment/battery-mk2-equipment.png",
    "__base__/graphics/equipment/battery-mk2-equipment.png",
    "__base__/graphics/equipment/battery-mk2-equipment.png",
    "__base__/graphics/equipment/battery-mk2-equipment.png",
    "__base__/graphics/equipment/battery-mk2-equipment.png",
}

local graphics2 = {
    "__base__/graphics/equipment/hr-battery-equipment.png",
    "__base__/graphics/equipment/hr-battery-mk2-equipment.png",
    "__base__/graphics/equipment/hr-battery-mk2-equipment.png",
    "__base__/graphics/equipment/hr-battery-mk2-equipment.png",
    "__base__/graphics/equipment/hr-battery-mk2-equipment.png",
    "__base__/graphics/equipment/hr-battery-mk2-equipment.png",
    "__base__/graphics/equipment/hr-battery-mk2-equipment.png",
    "__base__/graphics/equipment/hr-battery-mk2-equipment.png",
    "__base__/graphics/equipment/hr-battery-mk2-equipment.png",
    "__base__/graphics/equipment/hr-battery-mk2-equipment.png",
}

local icon = {
    "__base__/graphics/icons/battery-equipment.png",
    "__base__/graphics/icons/battery-mk2-equipment.png",
    "__base__/graphics/icons/battery-mk2-equipment.png",
    "__base__/graphics/icons/battery-mk2-equipment.png",
    "__base__/graphics/icons/battery-mk2-equipment.png",
    "__base__/graphics/icons/battery-mk2-equipment.png",
    "__base__/graphics/icons/battery-mk2-equipment.png",
    "__base__/graphics/icons/battery-mk2-equipment.png",
    "__base__/graphics/icons/battery-mk2-equipment.png",
    "__base__/graphics/icons/battery-mk2-equipment.png",
}

local order = {
    "baz[battery]-aa[armour-replacer]",
    "bbz[battery]-aa[armour-replacer]",
    "bcz[battery]-aa[armour-replacer]",
    "bdz[battery]-aa[armour-replacer]",
    "bez[battery]-aa[armour-replacer]",
    "bfz[battery]-aa[armour-replacer]",
    "bgz[battery]-aa[armour-replacer]",
    "bhz[battery]-aa[armour-replacer]",
    "biz[battery]-aa[armour-replacer]",
    "bjz[battery]-aa[armour-replacer]",
}
local buffer_capacity = {
    "10GJ",--Nerfed due to not containing battery in recipe.
    "20GJ",--Nerfed due to not containing battery in recipe.
    "3TJ",
    "4TJ",
    "5TJ",
    "6TJ",
    "7TJ",
    "8TJ",
    "9TJ",
    "10TJ",
}

local i = 1
while i < 11 do

data:extend({
    {
        type = "item",
        name = "b_mk" .. tostring(i),
        icon = icon[i],
        icon_size = 64,
        stack_size = 20,
        order = order[i],
        subgroup = "replacer_item",
        placed_as_equipment_result = "b_mk" .. tostring(i),
    },
    {
        type = "battery-equipment",
        name = "b_mk" .. tostring(i),
        sprite =
        {
            filename = graphics[i],
            width = 32,
            height = 64,
            priority = "medium",
            hr_version =
            {
                filename = graphics2[i],
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
            buffer_capacity = buffer_capacity[i],
            usage_priority = "tertiary"
        },
        categories = { "armor" }
    }
})
i = i + 1
end
