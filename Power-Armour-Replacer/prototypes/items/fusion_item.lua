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
        icons = icon_utils.create_equipment_icon("fusion-reactor", 64, 4, tier),
        stack_size = 20,
        order = reactor.order,
        subgroup = "replacer_item",
        placed_as_equipment_result = "par-fusion-reactor-mk" .. tostring(tier),
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
--[[
local i = 1
while i < 11 do
    data:extend({
        {
            type = "generator-equipment",
            name = "par-fusion-reactor-mk" .. tostring(i),
            sprite =
            {
                filename = graphics[i],
                width = 128,
                height = 128,
                priority = "medium",
                hr_version =
                {
                    filename = graphics2[i],
                    width = 256,
                    height = 256,
                    priority = "medium",
                    scale = 0.5
                }
            },
            shape =
            {
                width = 3,
                height = 3,
                type = "full"
                --Can also be defined as manual (a set of points which fall within the width/height - can't be empty)
                --type = "manual",
                --points = {{0, 0},                 {2, 0},
                --{0, 1},                 {2, 1},
                --{0, 2}, {1, 2}, {2, 2},}
            },
            energy_source =
            {
                type = "electric",
                usage_priority = "primary-output"
            },
            power = power[i],
            categories = { "armor" }
        },
        {
            type = "item",
            name = "par-fusion-reactor-mk" .. tostring(i),
            icon = icon[i],
            icon_size = 64,
            stack_size = 20,
            order = order[i],
            subgroup = "replacer_item",
            placed_as_equipment_result = "par-fusion-reactor-mk" .. tostring(i),
        }
    })
    i = i + 1
end


local graphics = {
    "__base__/graphics/equipment/fusion-reactor-equipment.png",
    "__base__/graphics/equipment/fusion-reactor-equipment.png",
    "__base__/graphics/equipment/fusion-reactor-equipment.png",
    "__base__/graphics/equipment/fusion-reactor-equipment.png",
    "__base__/graphics/equipment/fusion-reactor-equipment.png",
    "__base__/graphics/equipment/fusion-reactor-equipment.png",
    "__base__/graphics/equipment/fusion-reactor-equipment.png",
    "__base__/graphics/equipment/fusion-reactor-equipment.png",
    "__base__/graphics/equipment/fusion-reactor-equipment.png",
    "__base__/graphics/equipment/fusion-reactor-equipment.png",
}

local graphics2 = {
    "__base__/graphics/equipment/hr-fusion-reactor-equipment.png",
    "__base__/graphics/equipment/hr-fusion-reactor-equipment.png",
    "__base__/graphics/equipment/hr-fusion-reactor-equipment.png",
    "__base__/graphics/equipment/hr-fusion-reactor-equipment.png",
    "__base__/graphics/equipment/hr-fusion-reactor-equipment.png",
    "__base__/graphics/equipment/hr-fusion-reactor-equipment.png",
    "__base__/graphics/equipment/hr-fusion-reactor-equipment.png",
    "__base__/graphics/equipment/hr-fusion-reactor-equipment.png",
    "__base__/graphics/equipment/hr-fusion-reactor-equipment.png",
    "__base__/graphics/equipment/hr-fusion-reactor-equipment.png",
}

local icon = {
    "__base__/graphics/icons/fusion-reactor-equipment.png",
    "__base__/graphics/icons/fusion-reactor-equipment.png",
    "__base__/graphics/icons/fusion-reactor-equipment.png",
    "__base__/graphics/icons/fusion-reactor-equipment.png",
    "__base__/graphics/icons/fusion-reactor-equipment.png",
    "__base__/graphics/icons/fusion-reactor-equipment.png",
    "__base__/graphics/icons/fusion-reactor-equipment.png",
    "__base__/graphics/icons/fusion-reactor-equipment.png",
    "__base__/graphics/icons/fusion-reactor-equipment.png",
    "__base__/graphics/icons/fusion-reactor-equipment.png",
}
]]