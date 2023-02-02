local graphics = {
    "__base__/graphics/equipment/personal-laser-defense-equipment.png",--1
    "__base__/graphics/equipment/personal-laser-defense-equipment.png",--2
    "__base__/graphics/equipment/personal-laser-defense-equipment.png",--3
    "__base__/graphics/equipment/personal-laser-defense-equipment.png",--4
    "__base__/graphics/equipment/personal-laser-defense-equipment.png",--5
    "__base__/graphics/equipment/personal-laser-defense-equipment.png",--6
    "__base__/graphics/equipment/personal-laser-defense-equipment.png",--7
    "__base__/graphics/equipment/personal-laser-defense-equipment.png",--8
    "__base__/graphics/equipment/personal-laser-defense-equipment.png",--9
    "__base__/graphics/equipment/personal-laser-defense-equipment.png",--10
}

local graphics2 = {
    "__base__/graphics/equipment/hr-personal-laser-defense-equipment.png",--1
    "__base__/graphics/equipment/hr-personal-laser-defense-equipment.png",--2
    "__base__/graphics/equipment/hr-personal-laser-defense-equipment.png",--3
    "__base__/graphics/equipment/hr-personal-laser-defense-equipment.png",--4
    "__base__/graphics/equipment/hr-personal-laser-defense-equipment.png",--5
    "__base__/graphics/equipment/hr-personal-laser-defense-equipment.png",--6
    "__base__/graphics/equipment/hr-personal-laser-defense-equipment.png",--7
    "__base__/graphics/equipment/hr-personal-laser-defense-equipment.png",--8
    "__base__/graphics/equipment/hr-personal-laser-defense-equipment.png",--9
    "__base__/graphics/equipment/hr-personal-laser-defense-equipment.png",--10
}

local icon = {
    "__base__/graphics/icons/personal-laser-defense-equipment.png",--1
    "__base__/graphics/icons/personal-laser-defense-equipment.png",--2
    "__base__/graphics/icons/personal-laser-defense-equipment.png",--3
    "__base__/graphics/icons/personal-laser-defense-equipment.png",--4
    "__base__/graphics/icons/personal-laser-defense-equipment.png",--5
    "__base__/graphics/icons/personal-laser-defense-equipment.png",--6
    "__base__/graphics/icons/personal-laser-defense-equipment.png",--7
    "__base__/graphics/icons/personal-laser-defense-equipment.png",--8
    "__base__/graphics/icons/personal-laser-defense-equipment.png",--9
    "__base__/graphics/icons/personal-laser-defense-equipment.png",--10
}

local orders = {
    "eaz[active-defense]-aa[armour-replacer]",--1
    "ebz[active-defense]-ab[armour-replacer]",--2
    "ecz[active-defense]-ac[armour-replacer]",--3
    "edz[active-defense]-ad[armour-replacer]",--4
    "eez[active-defense]-ae[armour-replacer]",--5
    "efz[active-defense]-af[armour-replacer]",--6
    "egz[active-defense]-ag[armour-replacer]",--7
    "ehz[active-defense]-ah[armour-replacer]",--8
    "eiz[active-defense]-ai[armour-replacer]",--9
    "ejz[active-defense]-aj[armour-replacer]",--10
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
    14,
    16,
    18,
    20,
    22,
    24,
    26,
    28,
    30,
    32,
}
local damage_modifier = {
    5,
    10,
    15,
    20,
    25,
    35,
    40,
    45,
    50,
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
            icon = icon[i],
            icon_size = 64, icon_mipmaps = 4,
            placed_as_equipment_result = "l_mk" .. tostring(i),
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
                filename = graphics[i],
                width = 64,
                height = 64,
                priority = "medium",
                hr_version = {
                    filename = graphics2[i],
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
                    energy_consumption = energy_consumption[i],
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
