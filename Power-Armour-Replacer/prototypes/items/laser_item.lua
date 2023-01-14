local orders = {
    "eaz[active-defense]-aa[armour-replacer]",
    "ebz[active-defense]-ab[armour-replacer]",
    "ecz[active-defense]-ac[armour-replacer]",
    "edz[active-defense]-ad[armour-replacer]",
    "eez[active-defense]-ae[armour-replacer]",
    "efz[active-defense]-af[armour-replacer]",
    "egz[active-defense]-ag[armour-replacer]",
    "ehz[active-defense]-ah[armour-replacer]",
    "eiz[active-defense]-ai[armour-replacer]",
    "ejz[active-defense]-aj[armour-replacer]",
}

local cooldown = {
    100,
    85,
    70,
    60,
    50,
    40,
    30,
    20,
    10,
    0,
}
local range = {
    10,
    20,
    30,
    40,
    50,
    60,
    70,
    80,
    90,
    100,
}
local damage_modifier = {
    3,
    6,
    9,
    12,
    15,
    18,
    21,
    24,
    27,
}
local energy_consumption = {
    "0.05MJ",
    "0.1MJ",
    "0.15MJ",
    "0.2MJ",
    "0.25MJ",
    "0.3MJ",
    "0.35MJ",
    "0.4MJ",
    "0.45MJ",
    "0.5MJ",
}
local buffer_capacity = {
    "0.2MJ",
    "0.3MJ",
    "0.4MJ",
    "0.5MJ",
    "0.6MJ",
    "0.7MJ",
    "0.8MJ",
    "0.9MJ",
    "1.0MJ",
    "1.1MJ",
}
local duration = {
    40,
    30,
    20,
    10,
    20,
    30,
    40,
    50,
    60,
    70,
}

local i = 1
while i < 11 do
    data:extend({
        {
            type = "item",
            name = "l_mk" .. tostring(i),
            icon = "__base__/graphics/icons/personal-laser-defense-equipment.png",
            icon_size = 64, icon_mipmaps = 4,
            placed_as_equipment_result = "personal-laser-defense-equipment",
            subgroup = "military-equipment",
            order = orders[i],
            default_request_amount = 10,
            stack_size = 20
        },
        {
            type = "active-defense-equipment",
            name = "l_mk" .. tostring(i),
            sprite =
            {
                filename = "__base__/graphics/equipment/personal-laser-defense-equipment.png",
                width = 64,
                height = 64,
                priority = "medium",
                hr_version = {
                    filename = "__base__/graphics/equipment/hr-personal-laser-defense-equipment.png",
                    width = 128,
                    height = 128,
                    priority = "medium",
                    scale = 0.5
                }
            },
            shape =
            {
                width = 2,
                height = 2,
                type = "full"
            },
            energy_source =
            {
                type = "electric",
                usage_priority = "secondary-input",
                buffer_capacity = buffer_capacity[i]
            },

            attack_parameters =
            {
                type = "beam",
                cooldown = cooldown[i],
                range = range[i],
                damage_modifier = damage_modifier[i],
                ammo_type =
                {
                    category = "laser",
                    energy_consumption = "50kJ",
                    action =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "beam",
                            beam = "laser-beam",
                            max_length = range[i],
                            duration = duration[i],
                            source_offset = { 0, -1.31439 }
                        }
                    }
                }
            },

            automatic = true,
            categories = { "armor" }
        }
    })
    i = i + 1
end
