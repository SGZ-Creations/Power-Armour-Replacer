data:extend({
    {
        type = "technology",
        name = "nv-bi_mk1",
        icon_size = 256, icon_mipmaps = 4,
        icons = util.technology_icon_constant_equipment("__Power-Armour-Replacer__/texture/tech/belt-immunity-night-vision-equipment.png"),
        prerequisites = {"par-armour-tech-3", "par-fusion-reactor-tech-1"},
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "nv_mk1"
            },
            {
                type = "unlock-recipe",
                recipe = "bi_mk1"
            },
        },
        unit =
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
            },
            time = 15
        },
        order = "g-g"
    },
    {
        type = "technology",
        name = "no-power-equipment_mk2",
        icon_size = 256, icon_mipmaps = 4,
        icons = util.technology_icon_constant_equipment("__Power-Armour-Replacer__/texture/tech/belt-immunity-night-vision-equipment-1.png"),
        prerequisites =
        {
            "nv-bi_mk1",
            "par-fusion-reactor-tech-5",
            "par-armour-tech-7",
            "battery",
            "advanced-electronics-2",
            "low-density-structure",
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "nv_mk2"
            },
            {
                type = "unlock-recipe",
                recipe = "bi_mk2"
            },
        },
        unit =
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 2},
                {"logistic-science-pack", 2},
                {"military-science-pack", 2},
                {"chemical-science-pack", 2},
            },
            time = 15
        },
        order = "g-g"
    },
});
