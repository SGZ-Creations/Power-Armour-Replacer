local item_sounds = require("__base__.prototypes.item_sounds")
local icon_utils = require("structures.icon-utils")

--m_shield (Shield value.)
--buffer_capacity (Intenal battery)
--input_flow_limit (Max Consuption has effect on recharge speed)
--energy_per_shield (Recharge speed the higer the lower it charges Don't touch beyond 0.1.34-6p1)

local shields = {
    {energy_per_shield = "10000kJ", input_flow_limit = "1GW",  buffer_capacity = "0.2MJ", m_shield = 1000,     order="faz[energy-shield-mk2]-aa[armour-replacer]"},
    {energy_per_shield = "5000kJ",  input_flow_limit = "2GW",  buffer_capacity = "0.4MJ", m_shield = 5000,     order="fbz[energy-shield-mk2]-ab[armour-replacer]"},
    {energy_per_shield = "2500kJ",  input_flow_limit = "3GW",  buffer_capacity = "0.6MJ", m_shield = 10000,    order="fcz[energy-shield-mk2]-ac[armour-replacer]"},
    {energy_per_shield = "1200kJ",  input_flow_limit = "4GW",  buffer_capacity = "0.8MJ", m_shield = 50000,    order="fdz[energy-shield-mk2]-ad[armour-replacer]"},
    {energy_per_shield = "640kJ",   input_flow_limit = "5GW",  buffer_capacity = "1.0MJ", m_shield = 100000,   order="fez[energy-shield-mk2]-ae[armour-replacer]"},
    {energy_per_shield = "300kJ",   input_flow_limit = "6GW",  buffer_capacity = "1.2MJ", m_shield = 500000,   order="ffz[energy-shield-mk2]-af[armour-replacer]"},
    {energy_per_shield = "160kJ",   input_flow_limit = "7GW",  buffer_capacity = "1.4MJ", m_shield = 1000000,  order="fgz[energy-shield-mk2]-ag[armour-replacer]"},
    {energy_per_shield = "80kJ",    input_flow_limit = "8GW",  buffer_capacity = "1.6MJ", m_shield = 3000000,  order="fhz[energy-shield-mk2]-ah[armour-replacer]"},
    {energy_per_shield = "40kJ",    input_flow_limit = "9GW",  buffer_capacity = "1.8MJ", m_shield = 5000000,  order="fiz[energy-shield-mk2]-ai[armour-replacer]"},
    {energy_per_shield = "20kJ",    input_flow_limit = "10GW", buffer_capacity = "2.0MJ", m_shield = 10000000, order="fjz[energy-shield-mk2]-aj[armour-replacer]"},
}

for tier, shield in pairs(shields) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-shield-mk" .. tostring(tier),
        place_as_equipment_result = "par-shield-mk" .. tostring(tier),
        icons = icon_utils.create_equipment_icon("energy-shield", 64, tier),
        inventory_move_sound = item_sounds.energy_shield_inventory_move,
        pick_sound = item_sounds.energy_shield_inventory_pickup,
        drop_sound = item_sounds.energy_shield_inventory_move,
        stack_size = 20,
        weight = 10000,
        order = shield.order,
        subgroup = "replacer_item",
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "energy-shield-equipment",
        name = "par-shield-mk" .. tostring(tier),
        sprite = icon_utils.create_equipment_sprite("energy-shield", 128, 128, tier),
        shape = {
            width = 2,
            height = 2,
            type = "full"
            },
        max_shield_value = shield.m_shield,
        energy_source = {
                type = "electric",
                buffer_capacity = shield.buffer_capacity,
                input_flow_limit = shield.input_flow_limit,
                usage_priority = "primary-input"
            },
        energy_per_shield = shield.energy_per_shield,
        categories = {"armor"}
    }

    data:extend({
        item,
        equipment
    })
end