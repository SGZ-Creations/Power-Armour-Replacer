local icon_utils = require("structures.icon-utils")

local Immunities = {
    {buffer_capacity ="1TJ", input_flow_limit = "150GW", energy_consumption = "125GW", order = "jaa[belt-immunity]-aa[armour-replacer]"},
    {buffer_capacity ="1kJ", input_flow_limit =   "1kW", energy_consumption =    "1W", order = "jbb[belt-immunity]-ab[armour-replacer]"},
}

for tier, immunity in pairs(Immunities) do
    ---@type data.ItemPrototype
    local item = {
        type = "item",
        name = "par-belt-immunity-mk" .. tostring(tier),
        placed_as_equipment_result = "par-belt-immunity-mk" .. tostring(tier),
        icon = "__base__/graphics/icons/belt-immunity-equipment.png",
        icon_size = 64,
        mip_maps = 4,
        stack_size = 5,
        order = immunity.order,
        subgroup = "replacer_item",
    }

    ---@type data.EquipmentPrototype
    local equipment = {
        type = "belt-immunity-equipment",
        name = "par-belt-immunity-mk" .. tostring(tier),
        sprite ={
            filename = "__base__/graphics/icons/belt-immunity-equipment.png",
            width = 64,
            height = 64,
            priority = "medium",
            hr_version =
            {
                filename = "__base__/graphics/equipment/hr-belt-immunity-equipment.png",
                width = 64,
                height = 64,
                priority = "medium",
                scale = 0.5
            }
        },
        shape = {
            width = 1,
            height = 1,
            type = "full"
        },
        energy_source = {
            type = "electric",
            buffer_capacity = immunity.buffer_capacity,
            input_flow_limit = immunity.input_flow_limit,
            usage_priority = "primary-input"
        },
        energy_consumption = immunity.energy_consumption,
        categories = {"armor"},
        order = immunity.order
    }

    data:extend({
        item,
        equipment,
    })
end