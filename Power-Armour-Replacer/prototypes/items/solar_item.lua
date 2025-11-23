local item_sounds = require("__base__.prototypes.item_sounds")
local icon_utils = require("structures.icon-utils")
---@class LuaSettings
local SS = settings.startup

local panels = {
    {powers = tostring(SS["SolarPower_01"].value) .. "GW", weightvalue = SS["SolarWeight_01"].value, orders ="ha[energy-source]-aa[armour-replacer]"},
    {powers = tostring(SS["SolarPower_02"].value) .. "GW", weightvalue = SS["SolarWeight_02"].value, orders ="hb[energy-source]-ab[armour-replacer]"},
    {powers = tostring(SS["SolarPower_03"].value) .. "GW", weightvalue = SS["SolarWeight_03"].value, orders ="hc[energy-source]-ac[armour-replacer]"},
    {powers = tostring(SS["SolarPower_04"].value) .. "GW", weightvalue = SS["SolarWeight_04"].value, orders ="hd[energy-source]-ad[armour-replacer]"},
    {powers = tostring(SS["SolarPower_05"].value) .. "GW", weightvalue = SS["SolarWeight_05"].value, orders ="he[energy-source]-ae[armour-replacer]"},
    {powers = tostring(SS["SolarPower_06"].value) .. "GW", weightvalue = SS["SolarWeight_06"].value, orders ="hf[energy-source]-af[armour-replacer]"},
    {powers = tostring(SS["SolarPower_07"].value) .. "GW", weightvalue = SS["SolarWeight_07"].value, orders ="hg[energy-source]-ag[armour-replacer]"},
    {powers = tostring(SS["SolarPower_08"].value) .. "GW", weightvalue = SS["SolarWeight_08"].value, orders ="hh[energy-source]-ah[armour-replacer]"},
    {powers = tostring(SS["SolarPower_09"].value) .. "GW", weightvalue = SS["SolarWeight_09"].value, orders ="hi[energy-source]-ai[armour-replacer]"},
    {powers = tostring(SS["SolarPower_10"].value) .. "GW", weightvalue = SS["SolarWeight_10"].value, orders ="hj[energy-source]-aj[armour-replacer]"},
}

for tier, panel in pairs(panels) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-solar-panel-mk" .. tostring(tier),
        icons = icon_utils.create_equipment_icon("solar-panel", 64, tier),
        place_as_equipment_result = "par-solar-panel-mk" .. tostring(tier),
        inventory_move_sound = item_sounds.electric_large_inventory_move,
        pick_sound = item_sounds.electric_large_inventory_pickup,
        drop_sound = item_sounds.electric_large_inventory_move,
        stack_size = 20,
        auto_recycle = false,
        weight = panel.weightvalue,
        order = panel.orders,
        subgroup = "PAR_Solar",
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "solar-panel-equipment",
        name = "par-solar-panel-mk" .. tostring(tier),
        sprite = icon_utils.create_equipment_sprite("solar-panel", 64, 64, tier),
        shape = {
            width = 2,
            height = 1,
            type = "full"
        },
        energy_source = {
            type = "electric",
            usage_priority = "primary-output"
        },
        power = panel.powers,
        categories = {"armor"}
    }

    data:extend({
        item,
        equipment
    })
end
