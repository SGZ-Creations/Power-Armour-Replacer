local icon_utils = require("structures.icon-utils")

local exoskeletons = {
    { energy_consumption = "10.0GW", speed_bonus = 1.0, order = "ia[exoskeleton]-aa[armour-replacer]" },
    { energy_consumption = "20.0GW", speed_bonus = 2.0, order = "ib[exoskeleton]-ab[armour-replacer]" },
    { energy_consumption = "30.0GW", speed_bonus = 3.0, order = "ic[exoskeleton]-ac[armour-replacer]" },
    { energy_consumption = "40.0GW", speed_bonus = 4.0, order = "id[exoskeleton]-ad[armour-replacer]" },
    { energy_consumption = "50.0GW", speed_bonus = 5.0, order = "ie[exoskeleton]-ae[armour-replacer]" },
}

for tier, exoskeleton in pairs(exoskeletons) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-exoskelton-mk" .. tostring(tier),
        placed_as_equipment_result = "par-exoskelton-mk" .. tostring(tier),
        subgroup = "replacer_item",
        order = exoskeleton.order,
        icons = icon_utils.create_equipment_icon("exoskeleton", 64, 4, tier),
        stack_size = 20,
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "movement-bonus-equipment",
        name = "par-exoskelton-mk" .. tostring(tier),
        sprite = icon_utils.create_equipment_sprite("exoskeleton", 64, 128, tier,
            "__base__/graphics/equipment/exoskeleton-equipment.png",
            "__base__/graphics/equipment/hr-exoskeleton-equipment.png"),
        shape =
        {
            width = 2,
            height = 4,
            type = "full"
        },
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input"
        },
        energy_consumption = exoskeleton.energy_consumption,
        movement_bonus = exoskeleton.speed_bonus,
        categories = { "armor" }
    }

    data:extend({
        item,
        equipment,
    })
end
