local item_sounds = require("__base__.prototypes.item_sounds")
local icon_utils = require("structures.icon-utils")

local batteries = {
    { buffer_capacity = "10GJ", weightvalue = 5000, order = "baz"}, --Nerfed due to not containing battery in recipe.
    { buffer_capacity = "20GJ", weightvalue = 10000, order = "bbz", }, --Nerfed due to not containing battery in recipe.
    { buffer_capacity = "3TJ",  weightvalue = 15000, order = "bcz", },
    { buffer_capacity = "4TJ",  weightvalue = 20000, order = "bdz", },
    { buffer_capacity = "5TJ",  weightvalue = 25000, order = "bez", },
    { buffer_capacity = "6TJ",  weightvalue = 30000, order = "bfz", },
    { buffer_capacity = "7TJ",  weightvalue = 35000, order = "bgz", },
    { buffer_capacity = "8TJ",  weightvalue = 40000, order = "bhz", },
    { buffer_capacity = "9TJ",  weightvalue = 45000, order = "biz", },
    { buffer_capacity = "10TJ", weightvalue = 50000, order = "bjz", },
}

for tier, battery in pairs(batteries) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-battery-mk" .. tostring(tier),
        icons = icon_utils.create_equipment_icon("battery", 64,  tier),
        stack_size = 20,
        weight = battery.weightvalue,
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
        sprite = icon_utils.create_equipment_sprite("battery", 64, 128, tier),
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