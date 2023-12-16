
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

local power = {
    "10GW",
    "20GW",
    "30GW",
    "40GW",
    "50GW",
    "60GW",
    "70GW",
    "80GW",
    "90GW",
    "100GW",
}

local order = {
    "caz[energy-source]-aa[armour-replacer]",
    "cbz[energy-source]-aa[armour-replacer]",
    "ccz[energy-source]-aa[armour-replacer]",
    "cdz[energy-source]-aa[armour-replacer]",
    "cez[energy-source]-aa[armour-replacer]",
    "cfz[energy-source]-aa[armour-replacer]",
    "cgz[energy-source]-aa[armour-replacer]",
    "chz[energy-source]-aa[armour-replacer]",
    "ciz[energy-source]-aa[armour-replacer]",
    "cjz[energy-source]-aa[armour-replacer]",
}

local i = 1
while i < 11 do
    data:extend({
        {
            type = "generator-equipment",
            name = "f_mk" .. tostring(i),
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
            power = power[i],
            categories = { "armor" }
        },
        {
            type = "item",
            name = "f_mk" .. tostring(i),
            icon = icon[i],
            icon_size = 64,
            stack_size = 20,
            order = order[i],
            subgroup = "replacer_item",
            placed_as_equipment_result = "f_mk" .. tostring(i),
        }
    })
    i = i + 1
end