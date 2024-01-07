local icon_utils = require("structures.icon-utils")

local reactors = {
    { power = "10GW", order = "caz[energy-source]-aa[armour-replacer]"},
    { power = "20GW", order = "cbz[energy-source]-aa[armour-replacer]"},
    { power = "30GW", order = "ccz[energy-source]-aa[armour-replacer]"},
    { power = "40GW", order = "cdz[energy-source]-aa[armour-replacer]"},
    { power = "50GW", order = "cez[energy-source]-aa[armour-replacer]"},
    { power = "60GW", order = "cfz[energy-source]-aa[armour-replacer]"},
    { power = "70GW", order = "cgz[energy-source]-aa[armour-replacer]"},
    { power = "80GW", order = "chz[energy-source]-aa[armour-replacer]"},
    { power = "90GW", order = "ciz[energy-source]-aa[armour-replacer]"},
    { power = "100GW", order = "cjz[energy-source]-aa[armour-replacer]"},
}

for tier, reactor in pairs(reactors) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-fusion-reactor-mk" .. tostring(tier),
        placed_as_equipment_result = "par-fusion-reactor-mk" .. tostring(tier),
        icons = icon_utils.create_equipment_icon("fusion-reactor", 64, 4, tier),
        stack_size = 20,
        order = reactor.order,
        subgroup = "replacer_item",
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "generator-equipment",
        name = "par-fusion-reactor-mk" .. tostring(tier),
        sprite = icon_utils.create_equipment_sprite("fusion-reactor", 128, 128, tier),
        shape =
        {
            width = 3,
            height = 3,
            type = "full"
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