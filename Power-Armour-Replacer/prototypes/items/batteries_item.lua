local icon_utils = require("structures.icon-utils")

local batteries = {
    { buffer_capacity = "10GJ", order = "baz", }, --Nerfed due to not containing battery in recipe.
    { buffer_capacity = "20GJ", order = "bbz", }, --Nerfed due to not containing battery in recipe.
    { buffer_capacity = "3TJ",  order = "bcz", },
    { buffer_capacity = "4TJ",  order = "bdz", },
    { buffer_capacity = "5TJ",  order = "bez", },
    { buffer_capacity = "6TJ",  order = "bfz", },
    { buffer_capacity = "7TJ",  order = "bgz", },
    { buffer_capacity = "8TJ",  order = "bhz", },
    { buffer_capacity = "9TJ",  order = "biz", },
    { buffer_capacity = "10TJ", order = "bjz", },
}

for tier, battery in pairs(batteries) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-battery-mk" .. tostring(tier),
        icons = icon_utils.create_equipment_icon("battery", 64, 4, tier),
        stack_size = 20,
        weight = 15000,
        inventory_move_sound = item_sounds.electric_small_inventory_move,
        pick_sound = item_sounds.electric_small_inventory_pickup,
        drop_sound = item_sounds.electric_small_inventory_move,
        order = battery.order .. "[battery]-aa[armour-replacer]",
        subgroup = "replacer_item",
        place_as_equipment_result = "par-battery-mk" .. tostring(tier),
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "battery-equipment",
        name = "par-battery-mk" .. tostring(tier),
        sprite = icon_utils.create_equipment_sprite("battery", 32, 64, tier),
        shape =
        {
            width = 1,
            height = 2,
            type = "full"
        },
        energy_source =
        {
            type = "electric",
            buffer_capacity = battery.buffer_capacity,
            usage_priority = "tertiary"
        },
        categories = { "armor" }
    }

    data:extend({
        item,
        equipment,
    })
end