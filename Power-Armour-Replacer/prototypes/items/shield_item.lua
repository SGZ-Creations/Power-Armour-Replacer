local item_sounds = require("__base__.prototypes.item_sounds")
local icon_utils = require("structures.icon-utils")
---@class LuaSettings
local SS = settings.startup
--max_shield_value(How high the Hitpoint per tier is) (Shield value.)
--buffer_capacity (Internal battery)
--input_flow_limit (Max Consumption has effect on recharge speed)
--energy_per_shield (Recharge speed the higher the lower it charges)

local shields = {
    {energy_per_shield = tostring(SS["HitpointRechargeRate_01"].value) .. "kJ", input_flow_limit = tostring(SS["PowerRechargeRate_01"].value) .. "GW", buffer_capacity = tostring(SS["ShieldCapcity_01"].value) .. "MJ", max_shield = SS["ShieldHealth_01"].value, weightvalue = SS["ShieldWeight_01"].value, order="faz[energy-shield-mk2]-aa[armour-replacer]"},
    {energy_per_shield = tostring(SS["HitpointRechargeRate_02"].value) .. "kJ", input_flow_limit = tostring(SS["PowerRechargeRate_02"].value) .. "GW", buffer_capacity = tostring(SS["ShieldCapcity_02"].value) .. "MJ", max_shield = SS["ShieldHealth_02"].value, weightvalue = SS["ShieldWeight_02"].value, order="fbz[energy-shield-mk2]-ab[armour-replacer]"},
    {energy_per_shield = tostring(SS["HitpointRechargeRate_03"].value) .. "kJ", input_flow_limit = tostring(SS["PowerRechargeRate_03"].value) .. "GW", buffer_capacity = tostring(SS["ShieldCapcity_03"].value) .. "MJ", max_shield = SS["ShieldHealth_03"].value, weightvalue = SS["ShieldWeight_03"].value, order="fcz[energy-shield-mk2]-ac[armour-replacer]"},
    {energy_per_shield = tostring(SS["HitpointRechargeRate_04"].value) .. "kJ", input_flow_limit = tostring(SS["PowerRechargeRate_04"].value) .. "GW", buffer_capacity = tostring(SS["ShieldCapcity_04"].value) .. "MJ", max_shield = SS["ShieldHealth_04"].value, weightvalue = SS["ShieldWeight_04"].value, order="fdz[energy-shield-mk2]-ad[armour-replacer]"},
    {energy_per_shield = tostring(SS["HitpointRechargeRate_05"].value) .. "kJ", input_flow_limit = tostring(SS["PowerRechargeRate_05"].value) .. "GW", buffer_capacity = tostring(SS["ShieldCapcity_05"].value) .. "MJ", max_shield = SS["ShieldHealth_05"].value, weightvalue = SS["ShieldWeight_05"].value, order="fez[energy-shield-mk2]-ae[armour-replacer]"},
    {energy_per_shield = tostring(SS["HitpointRechargeRate_06"].value) .. "kJ", input_flow_limit = tostring(SS["PowerRechargeRate_06"].value) .. "GW", buffer_capacity = tostring(SS["ShieldCapcity_06"].value) .. "MJ", max_shield = SS["ShieldHealth_06"].value, weightvalue = SS["ShieldWeight_06"].value, order="ffz[energy-shield-mk2]-af[armour-replacer]"},
    {energy_per_shield = tostring(SS["HitpointRechargeRate_07"].value) .. "kJ", input_flow_limit = tostring(SS["PowerRechargeRate_07"].value) .. "GW", buffer_capacity = tostring(SS["ShieldCapcity_07"].value) .. "MJ", max_shield = SS["ShieldHealth_07"].value, weightvalue = SS["ShieldWeight_07"].value, order="fgz[energy-shield-mk2]-ag[armour-replacer]"},
    {energy_per_shield = tostring(SS["HitpointRechargeRate_08"].value) .. "kJ", input_flow_limit = tostring(SS["PowerRechargeRate_08"].value) .. "GW", buffer_capacity = tostring(SS["ShieldCapcity_08"].value) .. "MJ", max_shield = SS["ShieldHealth_08"].value, weightvalue = SS["ShieldWeight_08"].value, order="fhz[energy-shield-mk2]-ah[armour-replacer]"},
    {energy_per_shield = tostring(SS["HitpointRechargeRate_09"].value) .. "kJ", input_flow_limit = tostring(SS["PowerRechargeRate_09"].value) .. "GW", buffer_capacity = tostring(SS["ShieldCapcity_09"].value) .. "MJ", max_shield = SS["ShieldHealth_09"].value, weightvalue = SS["ShieldWeight_09"].value, order="fiz[energy-shield-mk2]-ai[armour-replacer]"},
    {energy_per_shield = tostring(SS["HitpointRechargeRate_10"].value) .. "kJ", input_flow_limit = tostring(SS["PowerRechargeRate_10"].value) .. "GW", buffer_capacity = tostring(SS["ShieldCapcity_10"].value) .. "MJ", max_shield = SS["ShieldHealth_10"].value, weightvalue = SS["ShieldWeight_10"].value, order="fjz[energy-shield-mk2]-aj[armour-replacer]"},
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
        auto_recycle = false,
        weight = shield.weightvalue,
        order = shield.order,
        subgroup = "PAR_Shield",
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
        max_shield_value = shield.max_shield,
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