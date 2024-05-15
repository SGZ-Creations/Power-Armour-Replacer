data:extend({
    {
        type = "technology",
        name = "par-night-immunity-tech-1",
        icon_size = 256,
        icon_mipmaps = 4,
        icons = util.technology_icon_constant_equipment("__Power-Armour-Replacer__/graphics/technology/night-immunity/belt-immunity-night-vision-equipment.png"),
        prerequisites = { "par-armour-tech-1", "par-fusion-reactor-tech-5" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-nightvision-mk1"
            },
            {
                type = "unlock-recipe",
                recipe = "par-belt-immunity-mk1"
            },
        },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "military-science-pack",   1 },
            },
            time = 15
        },
        order = "g-g"
    },
    {
        type = "technology",
        name = "par-night-immunity-tech-2",
        icon_size = 256,
        icon_mipmaps = 4,
        icons = util.technology_icon_constant_equipment("__Power-Armour-Replacer__/graphics/technology/night-immunity/belt-immunity-night-vision-equipment-1.png"),
        prerequisites =
        {
            "par-night-immunity-tech-1",
            "par-armour-tech-10",
            "battery",
            "advanced-electronics-2",
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "par-nightvision-mk2"
            },
            {
                type = "unlock-recipe",
                recipe = "par-belt-immunity-mk2"
            },
        },
        unit =
        {
            count = 500,
            ingredients = {
                { "automation-science-pack", 2 },
                { "logistic-science-pack",   2 },
                { "military-science-pack",   2 },
                { "chemical-science-pack",   2 },
                { "production-science-pack", 2 },
            },
            time = 15
        },
        order = "g-g"
    },
});
