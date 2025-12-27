data:extend({
    {
        type = "recipe",
        name = "par-belt-immunity-mk1",
        category = "electronics-or-handcrafting",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type="item", name="armour-control-unit", amount=200},
            {type="item", name="advanced-circuit", amount=200},
            {type="item", name="steel-plate", amount=200},
            {type="item", name="battery", amount=200},
        },
        results = {{type="item", name="par-belt-immunity-mk1", amount=1}}
    },
    {
        type = "recipe",
        name = "par-belt-immunity-mk2",
        category = "electronics-or-handcrafting",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {type="item", name="par-belt-immunity-mk1", amount=1},
            {type="item", name="armour-control-unit", amount=500},
            {type="item", name="low-density-structure", amount=50},
            {type="item", name="processing-unit", amount=60},
        },
        results = {{type="item", name="par-belt-immunity-mk2", amount=1}}
    },
})

if mods["space-age"] then
    data:extend({
        {
            type = "recipe",
            name = "par-belt-immunity-mk1",
            main_product = "par-belt-immunity-mk1",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type="item", name="low-density-structure", amount=250},
                {type="item", name="armour-control-unit", amount=250},
                {type="item", name="advanced-circuit", amount=250},
                {type="item", name="battery", amount=250},
                {type="item", name="carbon", amount=250},
                {type="item", name="ice", amount=250},
            },
            results = {
                {type="item", name="par-belt-immunity-mk1", amount=1},
                {type="fluid", name="water", amount=1000}
            }
        },
        {
            type = "recipe",
            name = "par-belt-immunity-mk2",
            main_product = "par-belt-immunity-mk2",
            category = "electronics",
            enabled = false,
            energy_required = 20,
            ingredients = {
                {type="item", name="par-belt-immunity-mk1", amount=1},
                {type="item", name="low-density-structure", amount=500},
                {type="item", name="armour-control-unit", amount=500},
                {type="item", name="quantum-processor", amount=500},
                {type="item", name="tungsten-carbide", amount=500},
                {type="item", name="tungsten-plate", amount=500},
                {type="item", name="superconductor", amount=500},
                {type="item", name="supercapacitor", amount=500},
                {type="item", name="lithium-plate", amount=500},
                {type="item", name="holmium-plate", amount=500},
                {type="item", name="carbon-fiber", amount=500},
                {type="item", name="biter-egg", amount=500},
                --Fluid
                {type="fluid", name="electrolyte", amount=500},
                {type="fluid", name="ammonia", amount=1000},
            },
            results = {
                {type="item", name="par-belt-immunity-mk2", amount=1},
            }
        },
    })
end