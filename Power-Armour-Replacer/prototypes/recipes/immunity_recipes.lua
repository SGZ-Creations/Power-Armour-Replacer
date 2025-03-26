local recipes = {
    {
        type = "recipe",
        name = "par-belt-immunity-mk1",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = 10,
        hide_from_player_crafting = true,
        ingredients = {
            {type="fluid", name="lubricant", amount=200},
            {type="item", name="electronic-circuit", amount=30},
            {type="item", name="steel-plate", amount=55},
            {type="item", name="battery", amount=5},
        },
        results = {{type="item", name="par-belt-immunity-mk1", amount=1}}
    },
    {
        type = "recipe",
        name = "par-belt-immunity-mk2",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = 20,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="par-belt-immunity-mk1", amount=1},
            {type="item", name="low-density-structure", amount=25},
            {type="item", name="advanced-circuit", amount=55},
            {type="item", name="processing-unit", amount=40},
            {type="item", name="nuclear-fuel", amount=10},
            {type="item", name="sulfur", amount=30},
            {type="fluid", name="sulfuric-acid", amount=150},
            {type="fluid", name="fluoroketone-cold", amount=150},
        },
        results = {{type="item", name="par-belt-immunity-mk2", amount=1}}
    },
}
data:extend(recipes)

if mods["space-age"]then
    local recipes = {
        {
            type = "recipe",
            name = "par-belt-immunity-mk1",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 10,
            hide_from_player_crafting = true,
            ingredients = {
                {type="fluid", name="lubricant", amount=200},
                {type="item", name="electronic-circuit", amount=30},
                {type="item", name="steel-plate", amount=55},
                {type="item", name="battery", amount=5},
            },
            results = {{type="item", name="par-belt-immunity-mk1", amount=1}}
        },
        {
            type = "recipe",
            name = "par-belt-immunity-mk2",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 20,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-belt-immunity-mk1", amount=1},
                {type="item", name="low-density-structure", amount=25},
                {type="item", name="advanced-circuit", amount=55},
                {type="item", name="processing-unit", amount=40},
                {type="fluid", name="sulfuric-acid", amount=150},
                {type="item", name="nuclear-fuel", amount=10},
                {type="item", name="sulfur", amount=30},
            },
            results = {{type="item", name="par-belt-immunity-mk2", amount=1}}
        },
    }
    data:extend(recipes)
end