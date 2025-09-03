local item_sounds = require("__base__.prototypes.item_sounds")
local icon_utils = require("structures.icon-utils")
---@class LuaSettings
local SS = settings.startup

local exoskeletons = {
    { energy_consumption = tostring(SS["ExoskeletonEnergyConsumption_01"].value) .. "GW", weightvalue = SS["ExoskeletonWeight_01"].value, speed_bonus = SS["ExoskeletonSpeed_01"].value, order = "ia[exoskeleton]-aa[armour-replacer]" },
    { energy_consumption = tostring(SS["ExoskeletonEnergyConsumption_02"].value) .. "GW", weightvalue = SS["ExoskeletonWeight_02"].value, speed_bonus = SS["ExoskeletonSpeed_02"].value, order = "ib[exoskeleton]-ab[armour-replacer]" },
    { energy_consumption = tostring(SS["ExoskeletonEnergyConsumption_03"].value) .. "GW", weightvalue = SS["ExoskeletonWeight_03"].value, speed_bonus = SS["ExoskeletonSpeed_03"].value, order = "ic[exoskeleton]-ac[armour-replacer]" },
    { energy_consumption = tostring(SS["ExoskeletonEnergyConsumption_04"].value) .. "GW", weightvalue = SS["ExoskeletonWeight_04"].value, speed_bonus = SS["ExoskeletonSpeed_04"].value, order = "id[exoskeleton]-ad[armour-replacer]" },
    { energy_consumption = tostring(SS["ExoskeletonEnergyConsumption_05"].value) .. "GW", weightvalue = SS["ExoskeletonWeight_05"].value, speed_bonus = SS["ExoskeletonSpeed_05"].value, order = "ie[exoskeleton]-ae[armour-replacer]" },
}

for tier, exoskeleton in pairs(exoskeletons) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-exoskeleton-mk" .. tostring(tier),
        place_as_equipment_result = "par-exoskeleton-mk" .. tostring(tier),
        icons = icon_utils.create_equipment_icon("exoskeleton", 64, tier),
        inventory_move_sound = item_sounds.exoskeleton_inventory_move,
        pick_sound = item_sounds.exoskeleton_inventory_pickup,
        drop_sound = item_sounds.exoskeleton_inventory_move,
        stack_size = 20,
        auto_recycle = false,
        weight = exoskeleton.weightvalue,
        order = exoskeleton.order,
        subgroup = "PAR_Exoskeleton",
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
