local item_sounds = require("__base__.prototypes.item_sounds")
local icon_utils = require("structures.icon-utils")
---@class LuaSettings
local SS = settings.startup

local batteries = {
    { buffer_capacity = tostring(SS["BatteryCapacity_01"].value) .. "TJ", weightvalue = SS["BatteryWeight_01"].value, order = "baz"}, --Nerfed due to not containing battery in recipe.
    { buffer_capacity = tostring(SS["BatteryCapacity_02"].value) .. "TJ", weightvalue = SS["BatteryWeight_02"].value, order = "bbz", }, --Nerfed due to not containing battery in recipe.
    { buffer_capacity = tostring(SS["BatteryCapacity_03"].value) .. "TJ", weightvalue = SS["BatteryWeight_03"].value, order = "bcz", },
    { buffer_capacity = tostring(SS["BatteryCapacity_04"].value) .. "TJ", weightvalue = SS["BatteryWeight_04"].value, order = "bdz", },
    { buffer_capacity = tostring(SS["BatteryCapacity_05"].value) .. "TJ", weightvalue = SS["BatteryWeight_05"].value, order = "bez", },
    { buffer_capacity = tostring(SS["BatteryCapacity_06"].value) .. "TJ", weightvalue = SS["BatteryWeight_06"].value, order = "bfz", },
    { buffer_capacity = tostring(SS["BatteryCapacity_07"].value) .. "TJ", weightvalue = SS["BatteryWeight_07"].value, order = "bgz", },
    { buffer_capacity = tostring(SS["BatteryCapacity_08"].value) .. "TJ", weightvalue = SS["BatteryWeight_08"].value, order = "bhz", },
    { buffer_capacity = tostring(SS["BatteryCapacity_09"].value) .. "TJ", weightvalue = SS["BatteryWeight_09"].value, order = "biz", },
    { buffer_capacity = tostring(SS["BatteryCapacity_10"].value) .. "TJ", weightvalue = SS["BatteryWeight_10"].value, order = "bjz", },
}

for tier, battery in pairs(batteries) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-battery-mk" .. tostring(tier),
        icons = icon_utils.create_equipment_icon("battery", 64,  tier),
        stack_size = 20,
        auto_recycle = false,
        weight = battery.weightvalue,
        inventory_move_sound = item_sounds.electric_small_inventory_move,
        pick_sound = item_sounds.electric_small_inventory_pickup,
        drop_sound = item_sounds.electric_small_inventory_move,
        subgroup = "PAR_Battery",
        order = battery.order .. "[battery]-aa[armour-replacer]",
        place_as_equipment_result = "par-battery-mk" .. tostring(tier),
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "battery-equipment",
        name = "par-battery-mk" .. tostring(tier),
        sprite = icon_utils.create_equipment_sprite("battery", 64, 128, tier),
        shape = {
            width = 1,
            height = 2,
            type = "full"
        },
        energy_source = {
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