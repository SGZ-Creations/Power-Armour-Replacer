
local orders = {
    "faz[energy-source]-aa[armour-replacer]",
    "fbz[energy-source]-ab[armour-replacer]",
    "fcz[energy-source]-ac[armour-replacer]",
    "fdz[energy-source]-ad[armour-replacer]",
    "fez[energy-source]-ae[armour-replacer]",
    "ffz[energy-source]-af[armour-replacer]",
    "fgz[energy-source]-ag[armour-replacer]",
    "fhz[energy-source]-ah[armour-replacer]",
    "fiz[energy-source]-ai[armour-replacer]",
    "fjz[energy-source]-aj[armour-replacer]",
}

local powers = {
    "10kW",
    "20kW",
    "30kW",
    "40kW",
    "50kW",
    "60kW",
    "70kW",
    "80kW",
    "90kW",
    "100kW"
}

local i = 1
while i < 11 do
    data:extend({
        {
            type = "item",
            name = "p-s_mk" .. tostring(i),
            icon = "__base__/graphics/icons/solar-panel-equipment.png",
            icon_size = 64, icon_mipmaps = 4,
            placed_as_equipment_result = "solar-panel-equipment",
            subgroup = "equipment",
            order = orders[i],
            stack_size = 10
        },
        {
            type = "solar-panel-equipment",
            name = "p-s_mk" .. tostring(i),
            sprite =
            {
                filename = "__base__/graphics/equipment/solar-panel-equipment.png",
                width = 32,
                height = 32,
                priority = "medium",
                hr_version =
                {
                    filename = "__base__/graphics/equipment/hr-solar-panel-equipment.png",
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
            categories = { "armor" }
        }
    })
    i = i + 1
end
