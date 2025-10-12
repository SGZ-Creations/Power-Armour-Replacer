local item_sounds = require("__base__.prototypes.item_sounds")
local icon_utils = require("structures.icon-utils")
---@class LuaSettings
local SS = settings.startup

local lasers = {
    {buffer_capacity = tostring(SS["LaserBuffer_01"].value) .. "MJ", energy_consumption = tostring(SS["LaserConsumption_01"].value) .. "MJ", duration = SS["LaserDuration_01"].value, damage_modifier = SS["LaserDamage_01"].value, range = SS["LaserRange_01"].value, cooldown = SS["LaserCooldown_01"].value, weightvalue = SS["LaserWeight_01"].value, order ="daz[active-defense]-aa[armour-replacer]"},
    {buffer_capacity = tostring(SS["LaserBuffer_02"].value) .. "MJ", energy_consumption = tostring(SS["LaserConsumption_02"].value) .. "MJ", duration = SS["LaserDuration_02"].value, damage_modifier = SS["LaserDamage_02"].value, range = SS["LaserRange_02"].value, cooldown = SS["LaserCooldown_02"].value, weightvalue = SS["LaserWeight_02"].value, order ="dbz[active-defense]-ab[armour-replacer]"},
    {buffer_capacity = tostring(SS["LaserBuffer_03"].value) .. "MJ", energy_consumption = tostring(SS["LaserConsumption_03"].value) .. "MJ", duration = SS["LaserDuration_03"].value, damage_modifier = SS["LaserDamage_03"].value, range = SS["LaserRange_03"].value, cooldown = SS["LaserCooldown_03"].value, weightvalue = SS["LaserWeight_03"].value, order ="dcz[active-defense]-ac[armour-replacer]"},
    {buffer_capacity = tostring(SS["LaserBuffer_04"].value) .. "MJ", energy_consumption = tostring(SS["LaserConsumption_04"].value) .. "MJ", duration = SS["LaserDuration_04"].value, damage_modifier = SS["LaserDamage_04"].value, range = SS["LaserRange_04"].value, cooldown = SS["LaserCooldown_04"].value, weightvalue = SS["LaserWeight_04"].value, order ="ddz[active-defense]-ad[armour-replacer]"},
    {buffer_capacity = tostring(SS["LaserBuffer_05"].value) .. "MJ", energy_consumption = tostring(SS["LaserConsumption_05"].value) .. "MJ", duration = SS["LaserDuration_05"].value, damage_modifier = SS["LaserDamage_05"].value, range = SS["LaserRange_05"].value, cooldown = SS["LaserCooldown_05"].value, weightvalue = SS["LaserWeight_05"].value, order ="dez[active-defense]-ae[armour-replacer]"},
    {buffer_capacity = tostring(SS["LaserBuffer_06"].value) .. "MJ", energy_consumption = tostring(SS["LaserConsumption_06"].value) .. "MJ", duration = SS["LaserDuration_06"].value, damage_modifier = SS["LaserDamage_06"].value, range = SS["LaserRange_06"].value, cooldown = SS["LaserCooldown_06"].value, weightvalue = SS["LaserWeight_06"].value, order ="dfz[active-defense]-af[armour-replacer]"},
    {buffer_capacity = tostring(SS["LaserBuffer_07"].value) .. "MJ", energy_consumption = tostring(SS["LaserConsumption_07"].value) .. "MJ", duration = SS["LaserDuration_07"].value, damage_modifier = SS["LaserDamage_07"].value, range = SS["LaserRange_07"].value, cooldown = SS["LaserCooldown_07"].value, weightvalue = SS["LaserWeight_07"].value, order ="dgz[active-defense]-ag[armour-replacer]"},
    {buffer_capacity = tostring(SS["LaserBuffer_08"].value) .. "MJ", energy_consumption = tostring(SS["LaserConsumption_08"].value) .. "MJ", duration = SS["LaserDuration_08"].value, damage_modifier = SS["LaserDamage_08"].value, range = SS["LaserRange_08"].value, cooldown = SS["LaserCooldown_08"].value, weightvalue = SS["LaserWeight_08"].value, order ="dhz[active-defense]-ah[armour-replacer]"},
    {buffer_capacity = tostring(SS["LaserBuffer_09"].value) .. "MJ", energy_consumption = tostring(SS["LaserConsumption_09"].value) .. "MJ", duration = SS["LaserDuration_09"].value, damage_modifier = SS["LaserDamage_09"].value, range = SS["LaserRange_09"].value, cooldown = SS["LaserCooldown_09"].value, weightvalue = SS["LaserWeight_09"].value, order ="diz[active-defense]-ai[armour-replacer]"},
    {buffer_capacity = tostring(SS["LaserBuffer_10"].value) .. "MJ", energy_consumption = tostring(SS["LaserConsumption_10"].value) .. "MJ", duration = SS["LaserDuration_10"].value, damage_modifier = SS["LaserDamage_10"].value, range = SS["LaserRange_10"].value, cooldown = SS["LaserCooldown_10"].value, weightvalue = SS["LaserWeight_10"].value, order ="djz[active-defense]-aj[armour-replacer]"},
}

for tier, laser in pairs(lasers) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-laser-mk" .. tostring(tier),
        place_as_equipment_result = "par-laser-mk" .. tostring(tier),
        icons = icon_utils.create_equipment_icon("laser-defense", 64, tier),
        inventory_move_sound = item_sounds.turret_inventory_move,
        pick_sound = item_sounds.turret_inventory_pickup,
        drop_sound = item_sounds.turret_inventory_move,
        stack_size = 20,
        auto_recycle = false,
        weight = laser.weightvalue,
        order = laser.order,
        subgroup = "PAR_laser",
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "active-defense-equipment",
        name = "par-laser-mk" .. tostring(tier),
        sprite = icon_utils.create_equipment_sprite("laser-defense", 128, 128, tier),
        shape = {
            width = 2,
            height = 2,
            type = "full"
        },
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            buffer_capacity = laser.buffer_capacity
        },
        attack_parameters = {
            type = "beam",
            cooldown = laser.cooldown,
            range = laser.range,
            range_mode = "center-to-bounding-box",
            damage_modifier = laser.damage_modifier,
            ammo_category = "laser",
            ammo_type = {
                energy_consumption = laser.energy_consumption,
                action = {
                    type = "direct",
                    action_delivery = {
                        type = "beam",
                        beam = "laser-beam",
                        max_length = laser.range,
                        duration = laser.duration,
                        source_offset = { 0, -1.31439 }
                    }
                }
            }
        },
        automatic = true,
        categories = {"armor"}
    }

    data:extend({
        item,
        equipment
    })
end