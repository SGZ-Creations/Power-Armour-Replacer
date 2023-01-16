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

local i = 1
while i < 11 do

    data:extend({
        {
            type = "item",
            name = "b_mk" .. tostring(i),
            icon = icon[i],
            icon_size = 64,
            stack_size = 20,
            order = "baz[battery]-aa[armour-replacer]" .. tostring(i - 1),
            subgroup = "equipment",
            placed_as_equipment_result = "b_mk" .. tostring(i),
        },
        {
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
        }
    })
    i = i + 1
end
