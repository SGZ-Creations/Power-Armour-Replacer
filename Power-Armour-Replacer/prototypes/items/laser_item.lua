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
    "daz[active-defense]-aa[armour-replacer]",--1
    "dbz[active-defense]-ab[armour-replacer]",--2
    "dcz[active-defense]-ac[armour-replacer]",--3
    "ddz[active-defense]-ad[armour-replacer]",--4
    "dez[active-defense]-ae[armour-replacer]",--5
    "dfz[active-defense]-af[armour-replacer]",--6
    "dgz[active-defense]-ag[armour-replacer]",--7
    "dhz[active-defense]-ah[armour-replacer]",--8
    "diz[active-defense]-ai[armour-replacer]",--9
    "djz[active-defense]-aj[armour-replacer]",--10
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
    5, --1
    10,--2
    15,--3
    20,--4
    25,--5
    30,--6
    35,--7
    40,--8
    45,--9
    50,--10
}
local energy_consumption = {
    "1MJ",
    "2MJ",
    "3MJ",
    "4MJ",
    "5MJ",
    "6MJ",
    "7MJ",
    "8MJ",
    "9MJ",
    "10MJ",
}
local buffer_capacity = {
    "10MJ",--1
    "15MJ",--2
    "20MJ",--3
    "25MJ",--4
    "30MJ",--5
    "35MJ",--6
    "40MJ",--7
    "45MJ",--8
    "50MJ",--9
    "55MJ",--0
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
            subgroup = "replacer_item",
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
