local item_sounds = require("__base__.prototypes.item_sounds")
local icon_utils = require("structures.icon-utils")

local panels = {
    {powers = "5GW", weightvalue =15000, orders ="ga[energy-source]-aa[armour-replacer]"},
    {powers ="10GW", weightvalue =30000, orders ="gb[energy-source]-ab[armour-replacer]"},
    {powers ="15GW", weightvalue =45000, orders ="gc[energy-source]-ac[armour-replacer]"},
    {powers ="20GW", weightvalue =60000, orders ="gd[energy-source]-ad[armour-replacer]"},
    {powers ="25GW", weightvalue =75000, orders ="ge[energy-source]-ae[armour-replacer]"},
    {powers ="30GW", weightvalue =90000, orders ="gf[energy-source]-af[armour-replacer]"},
    {powers ="35GW", weightvalue =105000, orders ="gg[energy-source]-ag[armour-replacer]"},
    {powers ="40GW", weightvalue =120000, orders ="gh[energy-source]-ah[armour-replacer]"},
    {powers ="45GW", weightvalue =135000, orders ="gi[energy-source]-ai[armour-replacer]"},
    {powers ="50GW", weightvalue =150000, orders ="gj[energy-source]-aj[armour-replacer]"},
}

for tier, panel in pairs(panels) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-solar-panel-mk" .. tostring(tier),
        icons = icon_utils.create_equipment_icon("solar-panel", 64, tier),
        place_as_equipment_result = "par-solar-panel-mk" .. tostring(tier),
        subgroup = "replacer_item",
        order = panel.orders,
        inventory_move_sound = item_sounds.electric_large_inventory_move,
        pick_sound = item_sounds.electric_large_inventory_pickup,
        drop_sound = item_sounds.electric_large_inventory_move,
        stack_size = 20,
        weight = panel.weightvalue,
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
