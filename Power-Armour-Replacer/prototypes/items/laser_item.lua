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
                buffer_capacity = "220kJ"
            },

            attack_parameters =
            {
                type = "beam",
                cooldown = 40,
                range = 15,
                --source_direction_count = 64,
                --source_offset = {0, -3.423489 / 4},
                damage_modifier = 3,
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
                            max_length = 15,
                            duration = 40,
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
