local item_sounds = require("__base__.prototypes.item_sounds")
local icon_utils = require("structures.icon-utils")
---@class LuaSettings
local SS = settings.startup

local roboports = {
    {charging_energy = tostring(SS["RoboportCharging_01"].value) .. "MW", buffer_capacity =tostring(SS["RoboportBuffer_01"].value) .. "MJ", input_flow_limit = tostring(SS["RoboportInputFlow_01"].value) .. "MW", construction_radius =SS["RoboportConstructionRadius_01"].value, robot_limit = SS["RoboportRobotLimit_01"].value, charging_station_count =SS["RoboportBotCharging_01"].value, weightvalue = SS["RoboportWeight_01"].value, order = "ea[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-1", 64, 1), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-1", 128, 128,  1)},
    {charging_energy = tostring(SS["RoboportCharging_02"].value) .. "MW", buffer_capacity =tostring(SS["RoboportBuffer_02"].value) .. "MJ", input_flow_limit = tostring(SS["RoboportInputFlow_02"].value) .. "MW", construction_radius =SS["RoboportConstructionRadius_02"].value, robot_limit = SS["RoboportRobotLimit_02"].value, charging_station_count =SS["RoboportBotCharging_02"].value, weightvalue = SS["RoboportWeight_02"].value, order = "eb[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-1", 64, 2), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-1", 128, 128,  2)},
    {charging_energy = tostring(SS["RoboportCharging_03"].value) .. "MW", buffer_capacity =tostring(SS["RoboportBuffer_03"].value) .. "MJ", input_flow_limit = tostring(SS["RoboportInputFlow_03"].value) .. "MW", construction_radius =SS["RoboportConstructionRadius_03"].value, robot_limit = SS["RoboportRobotLimit_03"].value, charging_station_count =SS["RoboportBotCharging_03"].value, weightvalue = SS["RoboportWeight_03"].value, order = "ec[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-1", 64, 3), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-1", 128, 128,  3)},
    {charging_energy = tostring(SS["RoboportCharging_04"].value) .. "MW", buffer_capacity =tostring(SS["RoboportBuffer_04"].value) .. "MJ", input_flow_limit = tostring(SS["RoboportInputFlow_04"].value) .. "MW", construction_radius =SS["RoboportConstructionRadius_04"].value, robot_limit = SS["RoboportRobotLimit_04"].value, charging_station_count =SS["RoboportBotCharging_04"].value, weightvalue = SS["RoboportWeight_04"].value, order = "ed[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-1", 64, 4), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-1", 128, 128,  4)},
    {charging_energy = tostring(SS["RoboportCharging_05"].value) .. "MW", buffer_capacity =tostring(SS["RoboportBuffer_05"].value) .. "MJ", input_flow_limit = tostring(SS["RoboportInputFlow_05"].value) .. "MW", construction_radius =SS["RoboportConstructionRadius_05"].value, robot_limit = SS["RoboportRobotLimit_05"].value, charging_station_count =SS["RoboportBotCharging_05"].value, weightvalue = SS["RoboportWeight_05"].value, order = "ee[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-1", 64, 5), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-1", 128, 128,  5)},
    {charging_energy = tostring(SS["RoboportCharging_06"].value) .. "MW", buffer_capacity =tostring(SS["RoboportBuffer_06"].value) .. "MJ", input_flow_limit = tostring(SS["RoboportInputFlow_06"].value) .. "MW", construction_radius =SS["RoboportConstructionRadius_06"].value, robot_limit = SS["RoboportRobotLimit_06"].value, charging_station_count =SS["RoboportBotCharging_06"].value, weightvalue = SS["RoboportWeight_06"].value, order = "ef[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-2", 64, 6), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-2", 128, 128,  6)},
    {charging_energy = tostring(SS["RoboportCharging_07"].value) .. "MW", buffer_capacity =tostring(SS["RoboportBuffer_07"].value) .. "MJ", input_flow_limit = tostring(SS["RoboportInputFlow_07"].value) .. "MW", construction_radius =SS["RoboportConstructionRadius_07"].value, robot_limit = SS["RoboportRobotLimit_07"].value, charging_station_count =SS["RoboportBotCharging_07"].value, weightvalue = SS["RoboportWeight_07"].value, order = "eg[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-2", 64, 7), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-2", 128, 128,  7)},
    {charging_energy = tostring(SS["RoboportCharging_08"].value) .. "MW", buffer_capacity =tostring(SS["RoboportBuffer_08"].value) .. "MJ", input_flow_limit = tostring(SS["RoboportInputFlow_08"].value) .. "MW", construction_radius =SS["RoboportConstructionRadius_08"].value, robot_limit = SS["RoboportRobotLimit_08"].value, charging_station_count =SS["RoboportBotCharging_08"].value, weightvalue = SS["RoboportWeight_08"].value, order = "eh[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-2", 64, 8), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-2", 128, 128,  8)},
    {charging_energy = tostring(SS["RoboportCharging_09"].value) .. "MW", buffer_capacity =tostring(SS["RoboportBuffer_09"].value) .. "MJ", input_flow_limit = tostring(SS["RoboportInputFlow_09"].value) .. "MW", construction_radius =SS["RoboportConstructionRadius_09"].value, robot_limit = SS["RoboportRobotLimit_09"].value, charging_station_count =SS["RoboportBotCharging_09"].value, weightvalue = SS["RoboportWeight_09"].value, order = "ei[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-2", 64, 9), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-2", 128, 128,  9)},
    {charging_energy = tostring(SS["RoboportCharging_10"].value) .. "MW", buffer_capacity =tostring(SS["RoboportBuffer_10"].value) .. "MJ", input_flow_limit = tostring(SS["RoboportInputFlow_10"].value) .. "MW", construction_radius =SS["RoboportConstructionRadius_10"].value, robot_limit = SS["RoboportRobotLimit_10"].value, charging_station_count =SS["RoboportBotCharging_10"].value, weightvalue = SS["RoboportWeight_10"].value, order = "ej[roboport]-aa[armour-replacer]", port_texture = icon_utils.create_equipment_icon("personal-roboport-2", 64, 10), port_sprite = icon_utils.create_equipment_sprite("personal-roboport-2", 128, 128, 10)},
}

for tier, roboport in pairs(roboports) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-roboport-mk" .. tostring(tier),
        place_as_equipment_result = "par-roboport-mk" .. tostring(tier),
        icons = roboport.port_texture,
        inventory_move_sound = item_sounds.roboport_inventory_move,
        pick_sound = item_sounds.roboport_inventory_pickup,
        drop_sound = item_sounds.roboport_inventory_move,
        stack_size = 20,
        auto_recycle = false,
        weight = roboport.weightvalue,
        order = roboport.order,
        subgroup = "PAR_Roboport",
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
        charging_station_count = roboport.charging_station_count * 2,
        charging_station_count_affected_by_quality  = true,
        charging_distance = 1.6,
        charging_threshold_distance = 5,
        categories = {"armor"}
    }

    data:extend({
        item,
        equipment
    })
end