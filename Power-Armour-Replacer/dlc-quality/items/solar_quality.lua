local icon_utils = require("structures.icon-utils")

local panels = {
    {powers = "5GW", orders ="ga[energy-source]-aa[armour-replacer]"},
    {powers ="10GW", orders ="gb[energy-source]-ab[armour-replacer]"},
    {powers ="15GW", orders ="gc[energy-source]-ac[armour-replacer]"},
    {powers ="20GW", orders ="gd[energy-source]-ad[armour-replacer]"},
    {powers ="25GW", orders ="ge[energy-source]-ae[armour-replacer]"},
    {powers ="30GW", orders ="gf[energy-source]-af[armour-replacer]"},
    {powers ="35GW", orders ="gg[energy-source]-ag[armour-replacer]"},
    {powers ="40GW", orders ="gh[energy-source]-ah[armour-replacer]"},
    {powers ="45GW", orders ="gi[energy-source]-ai[armour-replacer]"},
    {powers ="50GW", orders ="gj[energy-source]-aj[armour-replacer]"},
}

for tier, panel in pairs(panels) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-solar-panel-mk" .. tostring(tier),
        icons = icon_utils.create_equipment_icon("solar-panel", 64, 4, tier),
        placed_as_equipment_result = "par-solar-panel-mk" .. tostring(tier),
        subgroup = "replacer_item",
        order = panel.orders,
        stack_size = 20
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "solar-panel-equipment",
        name = "par-solar-panel-mk" .. tostring(tier),
        sprite = icon_utils.create_equipment_sprite("solar-panel", 32, 32, tier),
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
