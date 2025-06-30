local item_sounds = require("__base__.prototypes.item_sounds")
local icon_utils = require("structures.icon-utils")
---@class LuaSettings
local SS = settings.startup

local reactors = {
    { power = "10GW", weightvalue = 35000, order = "caz[energy-source]-aa[armour-replacer]"},
    { power = "20GW", weightvalue = 70000, order = "cbz[energy-source]-aa[armour-replacer]"},
    { power = "30GW", weightvalue = 105000, order = "ccz[energy-source]-aa[armour-replacer]"},
    { power = "40GW", weightvalue = 140000, order = "cdz[energy-source]-aa[armour-replacer]"},
    { power = "50GW", weightvalue = 175000, order = "cez[energy-source]-aa[armour-replacer]"},
    { power = "60GW", weightvalue = 210000, order = "cfz[energy-source]-aa[armour-replacer]"},
    { power = "70GW", weightvalue = 245000, order = "cgz[energy-source]-aa[armour-replacer]"},
    { power = "80GW", weightvalue = 280000, order = "chz[energy-source]-aa[armour-replacer]"},
    { power = "90GW", weightvalue = 315000, order = "ciz[energy-source]-aa[armour-replacer]"},
    { power = "100GW", weightvalue = 350000, order = "cjz[energy-source]-aa[armour-replacer]"},
}

for tier, reactor in pairs(reactors) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-fission-reactor-mk" .. tostring(tier),
        place_as_equipment_result = "par-fission-reactor-mk" .. tostring(tier),
        icons = icon_utils.create_equipment_icon("fusion-reactor", 64, tier),
        stack_size = 20,
        auto_recycle = false,
        weight = reactor.weightvalue,
        inventory_move_sound = item_sounds.reactor_inventory_move,
        pick_sound = item_sounds.reactor_inventory_pickup,
        drop_sound = item_sounds.reactor_inventory_move,
        order = reactor.order,
        subgroup = "replacer_item",
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