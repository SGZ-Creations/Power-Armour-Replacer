local recipes = {
    {
        type = "recipe",
        name = "par-belt-immunity-mk1",
        enabled = false,
        energy_required = 10,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {type="fluid", name="lubricant", amount=200},
            {"electronic-circuit", 30},
            {"steel-plate", 55},
            {"battery", 5},
        },
        result = "par-belt-immunity-mk1"
    },
    {
        type = "recipe",
        name = "par-belt-immunity-mk2",
        enabled = false,
        energy_required = 20,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-belt-immunity-mk1", 1},
            {type="fluid", name="sulfuric-acid", amount=150},
            {"nuclear-fuel", 10},
            {"advanced-circuit", 55},
            {"processing-unit", 40},
            {"low-density-structure", 25},
            {"sulfur", 30},
        },
        result = "par-belt-immunity-mk2"
    },
}
data:extend(recipes)