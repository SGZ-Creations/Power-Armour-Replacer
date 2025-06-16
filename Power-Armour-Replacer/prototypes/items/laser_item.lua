local item_sounds = require("__base__.prototypes.item_sounds")
local icon_utils = require("structures.icon-utils")
---@class data.SettingsStartup
local SS = settings.startup

local lasers = {
    {duration =10, buffer_capacity ="10MJ", energy_consumption ="1MJ", damage_modifier = 5 , range =14, cooldown = 100, weightvalue = 10000, order ="daz[active-defense]-aa[armour-replacer]"},
    {duration =20, buffer_capacity ="15MJ", energy_consumption ="2MJ", damage_modifier = 10, range =16, cooldown = 85, weightvalue = 20000, order ="dbz[active-defense]-ab[armour-replacer]"},
    {duration =30, buffer_capacity ="20MJ", energy_consumption ="3MJ", damage_modifier = 15, range =18, cooldown = 70, weightvalue = 30000, order ="dcz[active-defense]-ac[armour-replacer]"},
    {duration =40, buffer_capacity ="25MJ", energy_consumption ="4MJ", damage_modifier = 20, range =20, cooldown = 60, weightvalue = 40000, order ="ddz[active-defense]-ad[armour-replacer]"},
    {duration =50, buffer_capacity ="30MJ", energy_consumption ="5MJ", damage_modifier = 25, range =22, cooldown = 50, weightvalue = 50000, order ="dez[active-defense]-ae[armour-replacer]"},
    {duration =60, buffer_capacity ="35MJ", energy_consumption ="6MJ", damage_modifier = 30, range =24, cooldown = 40, weightvalue = 60000, order ="dfz[active-defense]-af[armour-replacer]"},
    {duration =70, buffer_capacity ="40MJ", energy_consumption ="7MJ", damage_modifier = 35, range =26, cooldown = 30, weightvalue = 70000, order ="dgz[active-defense]-ag[armour-replacer]"},
    {duration =80, buffer_capacity ="45MJ", energy_consumption ="8MJ", damage_modifier = 40, range =28, cooldown = 20, weightvalue = 80000, order ="dhz[active-defense]-ah[armour-replacer]"},
    {duration =90, buffer_capacity ="50MJ", energy_consumption ="9MJ", damage_modifier = 45, range =30, cooldown = 10, weightvalue = 90000, order ="diz[active-defense]-ai[armour-replacer]"},
    {duration =100, buffer_capacity ="55MJ", energy_consumption ="10MJ", damage_modifier = 50, range =32, cooldown = 5, weightvalue = 100000, order ="djz[active-defense]-aj[armour-replacer]"},
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
        weight = laser.weightvalue,
        order = laser.order,
        subgroup = "replacer_item",
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