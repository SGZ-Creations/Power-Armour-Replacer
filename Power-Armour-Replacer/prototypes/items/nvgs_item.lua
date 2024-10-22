local icon_utils = require("structures.icon-utils")

local nightvisions = {
    {buffer_capacity = "1TJ", input_flow_limit ="150GW", energy_input ="125GW", order ="jcc[night-vision]-ac[armour-replacer]"},
    {buffer_capacity = "1kJ", input_flow_limit =  "1kW", energy_input =   "0W", order ="jdd[night-vision]-ad[armour-replacer]"},
}

for tier, nightvision in pairs(nightvisions) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-nightvision-mk" .. tostring(tier),
        place_as_equipment_result = "par-nightvision-mk" .. tostring(tier),
        order = nightvision.order,
        icons = icon_utils.create_equipment_icon("night-vision", 64, 4, tier),
        inventory_move_sound = item_sounds.electric_small_inventory_move,
        pick_sound = item_sounds.electric_small_inventory_pickup,
        drop_sound = item_sounds.electric_small_inventory_move,
        stack_size = 5,
        weight = 550,
        subgroup = "replacer_item",
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "night-vision-equipment",
        name = "par-nightvision-mk" .. tostring(tier),
        sprite = icon_utils.create_equipment_sprite("night-vision", 64, 64, tier),
        shape =
        {
            width = 1,
            height = 1,
            type = "full"
        },
        energy_source = {
            type = "electric",
            buffer_capacity = nightvision.buffer_capacity,
            input_flow_limit = nightvision.input_flow_limit,
            usage_priority = "primary-input"
        },
        energy_input = nightvision.energy_input,
        categories = {"armor"},
        activate_sound = { filename = "__base__/sound/nightvision-on.ogg", volume = 0.5 },
        deactivate_sound = { filename = "__base__/sound/nightvision-off.ogg", volume = 0.5 },
        darkness_to_turn_on = 0.5,
        color_lookup = {{0.5, "__core__/graphics/color_luts/nightvision.png"}}
    }

    data:extend({
        item,
        equipment
    })
end