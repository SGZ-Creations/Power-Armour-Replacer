local item_sounds = require("__base__.prototypes.item_sounds")
local icon_utils = require("structures.icon-utils")
---@class LuaSettings
local SS = settings.startup

local reactors = {
    {power =tostring(SS["FissionPower_01"].value) .. "GW", weightvalue = SS["FissionWeight_01"].value, order = "caz[energy-source]-aa[armour-replacer]"},
    {power =tostring(SS["FissionPower_02"].value) .. "GW", weightvalue = SS["FissionWeight_02"].value, order = "cbz[energy-source]-aa[armour-replacer]"},
    {power =tostring(SS["FissionPower_03"].value) .. "GW", weightvalue = SS["FissionWeight_03"].value, order = "ccz[energy-source]-aa[armour-replacer]"},
    {power =tostring(SS["FissionPower_04"].value) .. "GW", weightvalue = SS["FissionWeight_04"].value, order = "cdz[energy-source]-aa[armour-replacer]"},
    {power =tostring(SS["FissionPower_05"].value) .. "GW", weightvalue = SS["FissionWeight_05"].value, order = "cez[energy-source]-aa[armour-replacer]"},
    {power =tostring(SS["FissionPower_06"].value) .. "GW", weightvalue = SS["FissionWeight_06"].value, order = "cfz[energy-source]-aa[armour-replacer]"},
    {power =tostring(SS["FissionPower_07"].value) .. "GW", weightvalue = SS["FissionWeight_07"].value, order = "cgz[energy-source]-aa[armour-replacer]"},
    {power =tostring(SS["FissionPower_08"].value) .. "GW", weightvalue = SS["FissionWeight_08"].value, order = "chz[energy-source]-aa[armour-replacer]"},
    {power =tostring(SS["FissionPower_09"].value) .. "GW", weightvalue = SS["FissionWeight_09"].value, order = "ciz[energy-source]-aa[armour-replacer]"},
    {power =tostring(SS["FissionPower_10"].value) .. "GW", weightvalue = SS["FissionWeight_10"].value, order = "cjz[energy-source]-aa[armour-replacer]"},
}

for tier, reactor in pairs(reactors) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-fission-reactor-mk" .. tostring(tier),
        place_as_equipment_result = "par-fission-reactor-mk" .. tostring(tier),
        icons = icon_utils.create_equipment_icon("fusion-reactor", 64, tier),
        inventory_move_sound = item_sounds.reactor_inventory_move,
        pick_sound = item_sounds.reactor_inventory_pickup,
        drop_sound = item_sounds.reactor_inventory_move,
        stack_size = 20,
        auto_recycle = false,
        weight = reactor.weightvalue,
        order = reactor.order,
        subgroup = "PAR_Fission",
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "generator-equipment",
        name = "par-fission-reactor-mk" .. tostring(tier),
        sprite = icon_utils.create_equipment_sprite("fusion-reactor", 256, 256, tier),
        shape =
        {
            width = 3,
            height = 3,
            type = "full"
            -- Can also be defined as manual (a set of points which fall within the width/height - can't be empty)
            --[[type = "manual",
            points = {{0, 0},                 {2, 0},
            {0, 1},                 {2, 1},
            {0, 2}, {1, 2}, {2, 2},}]]
        },
        energy_source =
        {
            type = "electric",
            usage_priority = "primary-output"
        },
        power = reactor.power,
        categories = { "armor" }
    }

    data:extend({
        item,
        equipment
    })
end