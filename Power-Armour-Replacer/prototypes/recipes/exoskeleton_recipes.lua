local recipes = {
    {
        type = "recipe",
        name = "par-exoskeleton-mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type="item", name="electronic-circuit", amount=100},
            {type="item", name="steel-plate", amount=100},
            {type="item", name="copper-cable", amount=200},
            {type="item", name="iron-gear-wheel", amount=50},
            {type="item", name="iron-stick", amount=50},
        },
        results = {{type="item", name="par-exoskeleton-mk1", amount=1}}
    },
    {
        type = "recipe",
        name = "par-exoskeleton-mk2",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type="item", name="par-exoskeleton-mk1", amount=1},
            {type="item", name="battery", amount=120},
            {type="item", name="iron-gear-wheel", amount=50},
            {type="item", name="electronic-circuit", amount=125},
            {type="item", name="steel-plate", amount=125},
            {type="item", name="iron-stick", amount=75},
        },
        results = {{type="item", name="par-exoskeleton-mk2", amount=1}}
    },
    {
        type = "recipe",
        name = "par-exoskeleton-mk3",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = 15,
        ingredients = {
            {type="item", name="par-exoskeleton-mk2", amount=1},
            {type="item", name="battery", amount=165},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="steel-plate", amount=150},
            {type="item", name="iron-stick", amount=175},
            {type="fluid", name="lubricant", amount=450},
        },
        results = {{type="item", name="par-exoskeleton-mk3", amount=1}}
    },
    {
        type = "recipe",
        name = "par-exoskeleton-mk4",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {type="item", name="par-exoskeleton-mk3", amount=1},
            {type="item", name="battery", amount=205},
            {type="item", name="plastic-bar", amount=190},
            {type="item", name="steel-plate", amount=180},
            {type="item", name="processing-unit", amount=100},
            {type="item", name="low-density-structure", amount=120},
        },
        results = {{type="item", name="par-exoskeleton-mk4", amount=1}}
    },
    {
        type = "recipe",
        name = "par-exoskeleton-mk5",
        enabled = false,
        energy_required = 25,
        ingredients = {
            {type="item", name="par-exoskeleton-mk4", amount=1},
            {type="item", name="battery", amount=250},
            {type="item", name="steel-plate", amount=250},
            {type="item", name="processing-unit", amount=100},
            {type="item", name="armour-control-unit", amount=150},
            {type="item", name="low-density-structure", amount=150},
        },
        results = {{type="item", name="par-exoskeleton-mk5", amount=1}}
    },
}
data:extend(recipes)

if mods["space-age"]then
    local recipes = {
        {
            type = "recipe",
            name = "par-exoskeleton-mk1",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="copper-plate", amount=100},
                {type="item", name="electronic-circuit", amount=100},
                {type="item", name="steel-plate", amount=100},
                {type="item", name="copper-cable", amount=100},
                {type="item", name="iron-gear-wheel", amount=50},
                {type="item", name="iron-stick", amount=50},
            },
            results = {{type="item", name="par-exoskeleton-mk1", amount=1}}
        },
        {
            type = "recipe",
            name = "par-exoskeleton-mk2",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type="item", name="par-exoskeleton-mk1", amount=1},
                {type="item", name="battery", amount=120},
                {type="item", name="iron-gear-wheel", amount=50},
                {type="item", name="electronic-circuit", amount=125},
                {type="item", name="steel-plate", amount=125},
                {type="item", name="iron-stick", amount=75},
            },
            results = {{type="item", name="par-exoskeleton-mk2", amount=1}}
        },
        {
            type = "recipe",
            name = "par-exoskeleton-mk3",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 15,
            ingredients = {
                {type="item", name="par-exoskeleton-mk2", amount=1},
                {type="item", name="battery", amount=165},
                {type="item", name="advanced-circuit", amount=100},
                {type="item", name="steel-plate", amount=150},
                {type="item", name="iron-stick", amount=175},
                {type="fluid", name="lubricant", amount=450},
            },
            results = {{type="item", name="par-exoskeleton-mk3", amount=1}}
        },
        {
            type = "recipe",
            name = "par-exoskeleton-mk4",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 20,
            ingredients = {
                {type="item", name="par-exoskeleton-mk3", amount=1},
                {type="item", name="battery", amount=205},
                {type="item", name="plastic-bar", amount=190},
                {type="item", name="steel-plate", amount=180},
                {type="item", name="processing-unit", amount=100},
                {type="item", name="low-density-structure", amount=120},
            },
            results = {{type="item", name="par-exoskeleton-mk4", amount=1}}
        },
        {
            type = "recipe",
            name = "par-exoskeleton-mk5",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 25,
            ingredients = {
                {type="item", name="par-exoskeleton-mk4", amount=1},
                {type="item", name="steel-plate", amount=250},
                {type="item", name="processing-unit", amount=100},
                {type="item", name="armour-control-unit", amount=150},
                {type="item", name="low-density-structure", amount=150},
                {type="item", name="lithium-plate", amount=100},
                {type="item", name="quantum-processor", amount=20},
                {type="item", name="supercapacitor", amount=250},
            },
            results = {{type="item", name="par-exoskeleton-mk5", amount=1}}
        },
    }
    data:extend(recipes)
end