local recipes = {
    {
        type = "recipe",
        name = "par-nightvision-mk1",
        enabled = false,
        energy_required = 10,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {type="item", name="iron-gear-wheel", amount=100},
            {type="item", name="battery", amount=5},
            {type="item", name="small-lamp", amount=10},
            {type="item", name="electronic-circuit", amount=30},
            {type="fluid", name="lubricant", amount=200},
        },
        results = {{type="item", name="par-nightvision-mk1", amount=1}}
    },
    {
        type = "recipe",
        name = "par-nightvision-mk2",
        enabled = false,
        energy_required = 20,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {type="item", name="par-nightvision-mk1", amount=1},
            {type="item", name="nuclear-fuel", amount=10},
            {type="item", name="low-density-structure", amount=25},
            {type="item", name="advanced-circuit", amount=55},
            {type="item", name="processing-unit", amount=40},
            {type="fluid", name="petroleum-gas", amount=250},
        },
        results = {{type="item", name="par-nightvision-mk2", amount=1}}
    },
}
data:extend(recipes)

if mods["space-age"] then
    local recipes = {
        {
            type = "recipe",
            name = "par-nightvision-mk1",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 10,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="iron-gear-wheel", amount=100},
                {type="item", name="battery", amount=5},
                {type="item", name="small-lamp", amount=10},
                {type="item", name="electronic-circuit", amount=30},
                {type="fluid", name="lubricant", amount=200},
            },
            results = {{type="item", name="par-nightvision-mk1", amount=1}}
        },
        {
            type = "recipe",
            name = "par-nightvision-mk2",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 20,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-nightvision-mk1", amount=1},
                {type="item", name="nuclear-fuel", amount=10},
                {type="item", name="low-density-structure", amount=25},
                {type="item", name="advanced-circuit", amount=55},
                {type="item", name="processing-unit", amount=40},
                {type="fluid", name="petroleum-gas", amount=250},
            },
            results = {{type="item", name="par-nightvision-mk2", amount=1}}
        },
    }
    data:extend(recipes)
end