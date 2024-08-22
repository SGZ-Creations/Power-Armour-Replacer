
    local recipes = {
    {
        type = "recipe",
        name = "par-nightvision-mk1",
        enabled = false,
        energy_required = 10,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"iron-gear-wheel", 100},
            {"battery", 5},
            {"small-lamp", 10},
            {"electronic-circuit", 30},
            {type="fluid", name="lubricant", amount=200},
        },
        result = "par-nightvision-mk1"
    },
    {
        type = "recipe",
        name = "par-nightvision-mk2",
        enabled = false,
        energy_required = 20,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-nightvision-mk1", 1},
            {"nuclear-fuel", 10},
            {"low-density-structure", 25},
            {"advanced-circuit", 55},
            {"processing-unit", 40},
            {type="fluid", name="petroleum-gas", amount=250},
        },
        result = "par-nightvision-mk2"
    },
}
data:extend(recipes)