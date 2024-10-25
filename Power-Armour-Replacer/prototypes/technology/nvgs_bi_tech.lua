data:extend({
    {
        type = "technology",
        name = "par-night-immunity-tech-1",
        icon_size = 256,
        icons = util.technology_icon_constant_equipment("__Power-Armour-Replacer__/graphics/technology/night-immunity/belt-immunity-night-vision-equipment.png"),
        prerequisites = {"par-fusion-reactor-tech-5" },
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
        research_trigger = {type ="craft-item", item ="par-fusion-reactor-mk5", count = 5},
        order = "g-g"
    },
    {
        type = "technology",
        name = "par-night-immunity-tech-2",
        icon_size = 256,
        icons = util.technology_icon_constant_equipment("__Power-Armour-Replacer__/graphics/technology/night-immunity/belt-immunity-night-vision-equipment-1.png"),
        prerequisites =
        {
            "par-night-immunity-tech-1",
            "par-armour-tech-10",
            "battery",
            "processing-unit",
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
            count = 750,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "military-science-pack",   1 },
                { "chemical-science-pack",   1 },
                { "production-science-pack", 1 },
            },
            time = 15
        },
        order = "g-g"
    },
});
