local graphics = {
    "__base__/graphics/equipment/solar-panel-equipment.png",
    "__base__/graphics/equipment/solar-panel-equipment.png",
    "__base__/graphics/equipment/solar-panel-equipment.png",
    "__base__/graphics/equipment/solar-panel-equipment.png",
    "__base__/graphics/equipment/solar-panel-equipment.png",
    "__base__/graphics/equipment/solar-panel-equipment.png",
    "__base__/graphics/equipment/solar-panel-equipment.png",
    "__base__/graphics/equipment/solar-panel-equipment.png",
    "__base__/graphics/equipment/solar-panel-equipment.png",
    "__base__/graphics/equipment/solar-panel-equipment.png",
}

local graphics2 = {
    "__base__/graphics/equipment/hr-solar-panel-equipment.png",
    "__base__/graphics/equipment/hr-solar-panel-equipment.png",
    "__base__/graphics/equipment/hr-solar-panel-equipment.png",
    "__base__/graphics/equipment/hr-solar-panel-equipment.png",
    "__base__/graphics/equipment/hr-solar-panel-equipment.png",
    "__base__/graphics/equipment/hr-solar-panel-equipment.png",
    "__base__/graphics/equipment/hr-solar-panel-equipment.png",
    "__base__/graphics/equipment/hr-solar-panel-equipment.png",
    "__base__/graphics/equipment/hr-solar-panel-equipment.png",
    "__base__/graphics/equipment/hr-solar-panel-equipment.png",
}

local icon = {
    "__base__/graphics/icons/solar-panel-equipment.png",
    "__base__/graphics/icons/solar-panel-equipment.png",
    "__base__/graphics/icons/solar-panel-equipment.png",
    "__base__/graphics/icons/solar-panel-equipment.png",
    "__base__/graphics/icons/solar-panel-equipment.png",
    "__base__/graphics/icons/solar-panel-equipment.png",
    "__base__/graphics/icons/solar-panel-equipment.png",
    "__base__/graphics/icons/solar-panel-equipment.png",
    "__base__/graphics/icons/solar-panel-equipment.png",
    "__base__/graphics/icons/solar-panel-equipment.png",
}

local orders = {
    "ga[energy-source]-aa[armour-replacer]",
    "gb[energy-source]-ab[armour-replacer]",
    "gc[energy-source]-ac[armour-replacer]",
    "gd[energy-source]-ad[armour-replacer]",
    "ge[energy-source]-ae[armour-replacer]",
    "gf[energy-source]-af[armour-replacer]",
    "gg[energy-source]-ag[armour-replacer]",
    "gh[energy-source]-ah[armour-replacer]",
    "gi[energy-source]-ai[armour-replacer]",
    "gj[energy-source]-aj[armour-replacer]",
}

local powers = {
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

local i = 1
while i < 11 do
    data:extend({
        {
            type = "item",
            name = "p-s_mk" .. tostring(i),
            icon = icon[i],
            icon_size = 64, icon_mipmaps = 4,
            placed_as_equipment_result = "p-s_mk" .. tostring(i),
            subgroup = "replacer_item",
            order = orders[i],
            stack_size = 20
        },
        {
            type = "solar-panel-equipment",
            name = "p-s_mk" .. tostring(i),
            sprite =
            {
                filename = graphics[i],
                width = 32,
                height = 32,
                priority = "medium",
                hr_version =
                {
                    filename = graphics2[i],
                    width = 64,
                    height = 64,
                    priority = "medium",
                    scale = 0.5
                }
            },
            shape =
            {
                width = 1,
                height = 1,
                type = "full"
            },
            energy_source =
            {
                type = "electric",
                usage_priority = "primary-output"
            },
            power = powers[i],
            categories = {"armor"}
        }
    })
    i = i + 1
end
