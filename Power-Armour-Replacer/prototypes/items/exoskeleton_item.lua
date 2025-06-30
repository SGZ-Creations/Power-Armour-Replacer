local item_sounds = require("__base__.prototypes.item_sounds")
local icon_utils = require("structures.icon-utils")
---@class LuaSettings
local SS = settings.startup

local exoskeletons = {
    { energy_consumption = "10.0GW", weightvalue = 25000, speed_bonus = 1.0, order = "ia[exoskeleton]-aa[armour-replacer]" },
    { energy_consumption = "20.0GW", weightvalue = 50000, speed_bonus = 2.0, order = "ib[exoskeleton]-ab[armour-replacer]" },
    { energy_consumption = "30.0GW", weightvalue = 75000, speed_bonus = 3.0, order = "ic[exoskeleton]-ac[armour-replacer]" },
    { energy_consumption = "40.0GW", weightvalue = 100000, speed_bonus = 4.0, order = "id[exoskeleton]-ad[armour-replacer]" },
    { energy_consumption = "50.0GW", weightvalue = 125000, speed_bonus = 5.0, order = "ie[exoskeleton]-ae[armour-replacer]" },
}

for tier, exoskeleton in pairs(exoskeletons) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-exoskeleton-mk" .. tostring(tier),
        place_as_equipment_result = "par-exoskeleton-mk" .. tostring(tier),
        subgroup = "replacer_item",
        order = exoskeleton.order,
        icons = icon_utils.create_equipment_icon("exoskeleton", 64, tier),
        inventory_move_sound = item_sounds.exoskeleton_inventory_move,
        pick_sound = item_sounds.exoskeleton_inventory_pickup,
        drop_sound = item_sounds.exoskeleton_inventory_move,
        stack_size = 20,
        auto_recycle = false,
        weight = exoskeleton.weightvalue,
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "movement-bonus-equipment",
        name = "par-exoskeleton-mk" .. tostring(tier),
        sprite = icon_utils.create_equipment_sprite("exoskeleton", 128, 256, tier,
            "__base__/graphics/equipment/exoskeleton-equipment.png"),
        shape = {
            width = 2,
            height = 4,
            type = "full"
        },
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input"
        },
        energy_consumption = exoskeleton.energy_consumption,
        movement_bonus = exoskeleton.speed_bonus,
        categories = { "armor" }
    }

    data:extend({
        item,
        equipment,
    })
end
