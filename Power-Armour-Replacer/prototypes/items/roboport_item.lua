
local graphics = {
    "__base__/graphics/equipment/personal-roboport-equipment.png",--1
    "__base__/graphics/equipment/personal-roboport-mk2-equipment.png",--2
    "__base__/graphics/equipment/personal-roboport-mk2-equipment.png",--3
    "__base__/graphics/equipment/personal-roboport-mk2-equipment.png",--4
    "__base__/graphics/equipment/personal-roboport-mk2-equipment.png",--5
    "__base__/graphics/equipment/personal-roboport-mk2-equipment.png",--6
    "__base__/graphics/equipment/personal-roboport-mk2-equipment.png",--7
    "__base__/graphics/equipment/personal-roboport-mk2-equipment.png",--8
    "__base__/graphics/equipment/personal-roboport-mk2-equipment.png",--9
    "__base__/graphics/equipment/personal-roboport-mk2-equipment.png",--10
}

local graphics2 = {
    "__base__/graphics/equipment/hr-personal-roboport-equipment.png",--1
    "__base__/graphics/equipment/hr-personal-roboport-mk2-equipment.png",--2
    "__base__/graphics/equipment/hr-personal-roboport-mk2-equipment.png",--3
    "__base__/graphics/equipment/hr-personal-roboport-mk2-equipment.png",--4
    "__base__/graphics/equipment/hr-personal-roboport-mk2-equipment.png",--5
    "__base__/graphics/equipment/hr-personal-roboport-mk2-equipment.png",--6
    "__base__/graphics/equipment/hr-personal-roboport-mk2-equipment.png",--7
    "__base__/graphics/equipment/hr-personal-roboport-mk2-equipment.png",--8
    "__base__/graphics/equipment/hr-personal-roboport-mk2-equipment.png",--9
    "__base__/graphics/equipment/hr-personal-roboport-mk2-equipment.png",--10
}

local icons = {
    "__base__/graphics/icons/personal-roboport-equipment.png",--1
    "__base__/graphics/icons/personal-roboport-mk2-equipment.png",--2
    "__base__/graphics/icons/personal-roboport-mk2-equipment.png",--3
    "__base__/graphics/icons/personal-roboport-mk2-equipment.png",--4
    "__base__/graphics/icons/personal-roboport-mk2-equipment.png",--5
    "__base__/graphics/icons/personal-roboport-mk2-equipment.png",--6
    "__base__/graphics/icons/personal-roboport-mk2-equipment.png",--7
    "__base__/graphics/icons/personal-roboport-mk2-equipment.png",--8
    "__base__/graphics/icons/personal-roboport-mk2-equipment.png",--9
    "__base__/graphics/icons/personal-roboport-mk2-equipment.png",--10
}

local charging_station_count = {
    10,
    12,
    14,
    16,
    18,
    20,
    24,
    26,
    28,
    30,
}
local robot_limit = {
    10,
    12,
    14,
    16,
    18,
    20,
    24,
    26,
    28,
    30,
}
local construction_radius = {
    5,  --1
    10, --2
    15, --3
    20, --4
    25, --5
    30, --6
    40, --7
    60, --8
    80, --9
    100, --10
}
local input_flow_limit =  {
    "1MW",
    "2MW",
    "3MW",
    "4MW",
    "5MW",
    "6MW",
    "7MW",
    "8MW",
    "9MW",
    "10MW",
}
local buffer_capacity =  {
    "4MJ",
    "16MJ",
    "36MJ",
    "64MJ",
    "100MJ",
    "144MJ",
    "196MJ",
    "256MJ",
    "324MJ",
    "400MJ",
}
local charging_energy =  {
    "1MW",
    "2MW",
    "3MW",
    "4MW",
    "5MW",
    "6MW",
    "7MW",
    "8MW",
    "9MW",
    "10MW",
}

local orders = {
    "ea[roboport]-aa[armour-replacer]",--1
    "eb[roboport]-aa[armour-replacer]",--2
    "ec[roboport]-aa[armour-replacer]",--3
    "ed[roboport]-aa[armour-replacer]",--4
    "ee[roboport]-aa[armour-replacer]",--5
    "ef[roboport]-aa[armour-replacer]",--6
    "eg[roboport]-aa[armour-replacer]",--7
    "eh[roboport]-aa[armour-replacer]",--8
    "ei[roboport]-aa[armour-replacer]",--9
    "ej[roboport]-aa[armour-replacer]",--10
}

local i = 1
while i < 11 do
    data:extend({
        {
            type = "item",
            name = "r_mk" .. tostring(i),
            icon = icons[i],
            icon_size = 64,
            stack_size = 20,
            icon_mipmaps = 4,
            order = orders[i],
            subgroup = "replacer_item",
            placed_as_equipment_result = "r_mk" .. tostring(i),
        },
        {
            type = "roboport-equipment",
            name = "r_mk" .. tostring(i),
            take_result = "r_mk" .. tostring(i),
            sprite =
            {
                filename = graphics[i],
                width = 64,
                height = 64,
                priority = "medium",
                hr_version =
                {
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
                buffer_capacity = buffer_capacity[i],
                input_flow_limit = input_flow_limit[i],
                usage_priority = "secondary-input"
            },
            charging_energy = charging_energy[i],

            robot_limit = robot_limit[i],
            construction_radius = construction_radius[i],
            spawn_and_station_height = 0.4,
            spawn_and_station_shadow_height_offset = 0.5,
            charge_approach_distance = 2.6,
            robots_shrink_when_entering_and_exiting = true,

            recharging_animation =
            {
                filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
                draw_as_glow = true,
                priority = "high",
                width = 37,
                height = 35,
                frame_count = 16,
                scale = 1.5,
                animation_speed = 0.5
            },
            recharging_light = { intensity = 0.2, size = 3, color = { r = 0.5, g = 0.5, b = 1.0 } },
            stationing_offset = { 0, -0.6 },
            charging_station_shift = { 0, 0.5 },
            charging_station_count = charging_station_count[i],
            charging_distance = 1.6,
            charging_threshold_distance = 5,
            categories = { "armor" }
        }
    })
    i = i + 1
end
