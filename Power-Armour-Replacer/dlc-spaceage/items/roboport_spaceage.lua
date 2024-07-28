local icon_utils = require("structures.icon-utils")

local roboports = {
    { charging_energy = "1MW", buffer_capacity =   "4MJ", input_flow_limit = "1MW", construction_radius =  5, robot_limit =10, charging_station_count =10, order = "ea[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-1", 64, 4,  1), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-1", 64, 64,  1)},
    { charging_energy = "2MW", buffer_capacity =  "16MJ", input_flow_limit = "2MW", construction_radius = 10, robot_limit =12, charging_station_count =12, order = "eb[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-1", 64, 4,  2), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-1", 64, 64,  2)},
    { charging_energy = "3MW", buffer_capacity =  "36MJ", input_flow_limit = "3MW", construction_radius = 15, robot_limit =14, charging_station_count =14, order = "ec[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-1", 64, 4,  3), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-1", 64, 64,  3)},
    { charging_energy = "4MW", buffer_capacity =  "64MJ", input_flow_limit = "4MW", construction_radius = 20, robot_limit =16, charging_station_count =16, order = "ed[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-1", 64, 4,  4), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-1", 64, 64,  4)},
    { charging_energy = "5MW", buffer_capacity = "100MJ", input_flow_limit = "5MW", construction_radius = 25, robot_limit =18, charging_station_count =18, order = "ee[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-1", 64, 4,  5), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-1", 64, 64,  5)},
    { charging_energy = "6MW", buffer_capacity = "144MJ", input_flow_limit = "6MW", construction_radius = 30, robot_limit =20, charging_station_count =20, order = "ef[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-2", 64, 4,  6), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-2", 64, 64,  6)},
    { charging_energy = "7MW", buffer_capacity = "196MJ", input_flow_limit = "7MW", construction_radius = 40, robot_limit =24, charging_station_count =24, order = "eg[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-2", 64, 4,  7), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-2", 64, 64,  7)},
    { charging_energy = "8MW", buffer_capacity = "256MJ", input_flow_limit = "8MW", construction_radius = 60, robot_limit =26, charging_station_count =26, order = "eh[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-2", 64, 4,  8), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-2", 64, 64,  8)},
    { charging_energy = "9MW", buffer_capacity = "324MJ", input_flow_limit = "9MW", construction_radius = 80, robot_limit =28, charging_station_count =28, order = "ei[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-2", 64, 4,  9), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-2", 64, 64,  9)},
    { charging_energy ="10MW", buffer_capacity = "400MJ", input_flow_limit ="10MW", construction_radius =100, robot_limit =30, charging_station_count =30, order = "ej[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-2", 64, 4, 10), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-2", 64, 64, 10)},
}

for tier, roboport in pairs(roboports) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-roboport-mk" .. tostring(tier),
        placed_as_equipment_result = "par-roboport-mk" .. tostring(tier),
        icons = roboport.port_texture,
        stack_size = 20,
        order = roboport.order,
        subgroup = "replacer_item",
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "roboport-equipment",
        name = "par-roboport-mk" .. tostring(tier),
        take_result = "par-roboport-mk" .. tostring(tier),
        sprite = roboport.port_sprite,
        shape = {
                width = 2,
                height = 2,
                type = "full"
            },
        energy_source = {
                type = "electric",
                buffer_capacity = roboport.buffer_capacity,
                input_flow_limit = roboport.input_flow_limit,
                usage_priority = "secondary-input"
            },
        charging_energy = roboport.charging_energy,
        robot_limit = roboport.robot_limit,
        construction_radius = roboport.construction_radius,
        spawn_and_station_height = 0.4,
        spawn_and_station_shadow_height_offset = 0.5,
        charge_approach_distance = 2.6,
        robots_shrink_when_entering_and_exiting = true,
        recharging_animation = {
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
        charging_station_count = roboport.charging_station_count,
        charging_distance = 1.6,
        charging_threshold_distance = 5,
        categories = { "armor" }
    }

    data:extend({
        item,
        equipment
    })
end