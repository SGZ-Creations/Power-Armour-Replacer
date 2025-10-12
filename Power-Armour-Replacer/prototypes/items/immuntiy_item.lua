local item_sounds = require("__base__.prototypes.item_sounds")
---@class LuaSettings
local SS = settings.startup

local Immunities = {
    {buffer_capacity = tostring(SS["ImmunityBuffer_01"].value) .. "TJ", input_flow_limit = tostring(SS["ImmunityInputFlow_01"].value) .. "GW", energy_consumption = tostring(SS["ImmunityConsumption_01"].value) .. "GW", weightvalue = SS["ImmunityWeightValue_01"].value , order = "jaa[belt-immunity]-aa[armour-replacer]"},
    {buffer_capacity = tostring(SS["ImmunityBuffer_02"].value) .. "kJ", input_flow_limit = tostring(SS["ImmunityInputFlow_02"].value) .. "kW", energy_consumption = tostring(SS["ImmunityConsumption_02"].value) .. "W", weightvalue = SS["ImmunityWeightValue_02"].value , order = "jbb[belt-immunity]-ab[armour-replacer]"},
}

for tier, immunity in pairs(Immunities) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-belt-immunity-mk" .. tostring(tier),
        place_as_equipment_result = "par-belt-immunity-mk" .. tostring(tier),
        icon = "__base__/graphics/icons/belt-immunity-equipment.png",
        icon_size = 64,
        inventory_move_sound = item_sounds.mechanical_inventory_move,
        pick_sound = item_sounds.mechanical_inventory_pickup,
        drop_sound = item_sounds.mechanical_inventory_move,
        stack_size = 5,
        auto_recycle = false,
        weight = immunity.weightvalue,
        order = immunity.order,
        subgroup = "PAR_BeltImmunity",
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "belt-immunity-equipment",
        name = "par-belt-immunity-mk" .. tostring(tier),
        sprite ={
            filename = "__base__/graphics/icons/belt-immunity-equipment.png",
            width = 64,
            height = 64,
            priority = "medium",
        },
        shape = {
            width = 1,
            height = 1,
            type = "full"
        },
        energy_source = {
            type = "electric",
            buffer_capacity = immunity.buffer_capacity,
            input_flow_limit = immunity.input_flow_limit,
            usage_priority = "primary-input"
        },
        energy_consumption = immunity.energy_consumption,
        categories = {"armor"},
        order = immunity.order
    }

    data:extend({
        item,
        equipment,
    })
end