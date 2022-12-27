local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

local function string_random(length)
    if length > 0 then
        return string_random(length - 1) .. charset:sub(math.random(1, 62), 1)
    else
        return ""
    end
end

data:extend({ {
    type = "item",
    name = "b_mk1",
    icon = "__base__/graphics/icons/battery-equipment.png",
    icon_size = 64,
    stack_size = 200,
    order = "[Battery]" .. "0" .. string_random(25),
    subgroup = "equipment",
    placed_as_equipment_result = "b_mk1",
}})


local i = 2
while i < 11 do

    data:extend({{
        type = "item",
        name = "b_mk" .. tostring(i),
        icon = "__base__/graphics/icons/battery-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        order = "[Battery]" .. tostring(i - 1) .. string_random(25),
        subgroup = "equipment",
        placed_as_equipment_result = "b_mk" .. tostring(i),
    }})

    i = i + 1
end

i = 1
while i < 11 do
    data:extend({ {
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
    } })

    i = i + 1
end
