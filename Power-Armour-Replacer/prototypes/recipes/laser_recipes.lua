local recipes = {
    {
        type = "recipe",
        name = "par-laser-mk1",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="electronic-circuit", amount=100},
            {type="item", name="steel-plate", amount=100},
            {type="item", name="iron-plate", amount=100},
            {type="item", name="copper-plate", amount=100},
        },
        results = {{type="item", name="par-laser-mk1", amount=1}}
    },
    {
        type = "recipe",
        name = "par-laser-mk2",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="par-laser-mk1", amount=1},
            {type="item", name="electronic-circuit", amount=100},
            {type="item", name="engine-unit", amount=15},
            {type="item", name="copper-plate", amount=150},
        },
        results = {{type="item", name="par-laser-mk2", amount=1}}
    },
    {
        type = "recipe",
        name = "par-laser-mk3",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="par-laser-mk2", amount=1},
            {type="item", name="electronic-circuit", amount=100},
            {type="item", name="battery", amount=45},
            {type="item", name="steel-plate", amount=50},
            {type="item", name="plastic-bar", amount=55},
        },
        results = {{type="item", name="par-laser-mk3", amount=1}}
    },
    {
        type = "recipe",
        name = "par-laser-mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="par-laser-mk3", amount=1},
            {type="item", name="pipe", amount=50},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="iron-gear-wheel", amount=85},
        },
        results = {{type="item", name="par-laser-mk4", amount=1}}
    },
    {
        type = "recipe",
        name = "par-laser-mk5",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="par-laser-mk4", amount=1},
            {type="item", name="heat-pipe", amount=50},
            {type="item", name="copper-cable", amount=200},
            {type="item", name="plastic-bar", amount=120},
            {type="item", name="sulfur", amount=80},
        },
        results = {{type="item", name="par-laser-mk5", amount=1}}
    },
    {
        type = "recipe",
        name = "par-laser-mk6",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="par-laser-mk5", amount=1},
            {type="item", name="heat-pipe", amount=150},
            {type="item", name="sulfur", amount=150},
            {type="item", name="processing-unit", amount=50},
            {type="item", name="battery", amount=125},
            {type="item", name="engine-unit", amount=100},
        },
        results = {{type="item", name="par-laser-mk6", amount=1}}
    },
    {
        type = "recipe",
        name = "par-laser-mk7",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="par-laser-mk6", amount=1},
            {type="item", name="low-density-structure", amount=60},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="processing-unit", amount=100},
            {type="item", name="electric-engine-unit", amount=70},
            {type="item", name="copper-cable", amount=115},
        },
        results = {{type="item", name="par-laser-mk7", amount=1}}
    },
    {
        type = "recipe",
        name = "par-laser-mk8",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="par-laser-mk7", amount=1},
            {type="item", name="low-density-structure", amount=130},
            {type="item", name="plastic-bar", amount=200},
            {type="item", name="copper-cable", amount=300},
            {type="item", name="processing-unit", amount=100},
            {type="item", name="advanced-circuit", amount=100},
        },
        results = {{type="item", name="par-laser-mk8", amount=1}}
    },
    {
        type = "recipe",
        name = "par-laser-mk9",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="par-laser-mk8", amount=1},
            {type="item", name="armour-control-unit", amount=60},
            {type="item", name="low-density-structure", amount=180},
            {type="item", name="processing-unit", amount=100},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="sulfur", amount=150},
            {type="item", name="plastic-bar", amount=300},
        },
        results = {{type="item", name="par-laser-mk9", amount=1}}
    },
    {
        type = "recipe",
        name = "par-laser-mk10",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="par-laser-mk9", amount=1},
            {type="item", name="armour-control-unit", amount=100},
            {type="item", name="low-density-structure", amount=200},
            {type="item", name="processing-unit", amount=100},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="steel-plate", amount=300},
            {type="item", name="sulfur", amount=150},
        },
        results = {{type="item", name="par-laser-mk10", amount=1}}
    },
}
data:extend(recipes)

if mods["space-age"] then
    local recipes = {
        {
            type = "recipe",
            name = "par-laser-mk1",
            main_product = "par-laser-mk1",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="electronic-circuit", amount=25},
                {type="item", name="steel-plate", amount=25},
                {type="item", name="iron-plate", amount=25},
                {type="item", name="copper-plate", amount=25},
            },
            results = {{type="item", name="par-laser-mk1", amount=1}}
        },
        {
            type = "recipe",
            name = "par-laser-mk2",
            main_product = "par-laser-mk2",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-laser-mk1", amount=1},
                {type="item", name="electronic-circuit", amount=50},
                {type="item", name="engine-unit", amount=50},
                {type="item", name="copper-plate", amount=50},
            },
            results = {{type="item", name="par-laser-mk2", amount=1}}
        },
        {
            type = "recipe",
            name = "par-laser-mk3",
            main_product = "par-laser-mk3",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-laser-mk2", amount=1},
                {type="item", name="advanced-circuit", amount=75},
                {type="item", name="steel-plate", amount=75},
                {type="item", name="engine-unit", amount=75},
                {type="item", name="plastic-bar", amount=75},
                {type="item", name="battery", amount=75},
            },
            results = {{type="item", name="par-laser-mk3", amount=1}}
        },
        {
            type = "recipe",
            name = "par-laser-mk4",
            main_product = "par-laser-mk4",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-laser-mk3", amount=1},
                {type="item", name="advanced-circuit", amount=100},
                {type="item", name="iron-gear-wheel", amount=100},
                {type="item", name="steel-plate", amount=100},
                {type="item", name="plastic-bar", amount=100},
            },
            results = {{type="item", name="par-laser-mk4", amount=1}}
        },
        {
            type = "recipe",
            name = "par-laser-mk5",
            main_product = "par-laser-mk5",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-laser-mk4", amount=1},
                {type="item", name="armour-control-unit", amount=125},
                {type="item", name="processing-unit", amount=125},
                {type="item", name="heat-pipe", amount=125},
                {type="item", name="carbon", amount=125},
                {type="item", name="battery", amount=125},
            },
            results = {{type="item", name="par-laser-mk5", amount=1}}
        },
        {
            type = "recipe",
            name = "par-laser-mk6",
            main_product = "par-laser-mk6",
            category = "electronics",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-laser-mk5", amount=1},
                {type="item", name="carbon", amount=150},
                {type="item", name="calcite", amount=150},
                {type="item", name="battery", amount=150},
                {type="item", name="heat-pipe", amount=150},
                {type="item", name="engine-unit", amount=150},
                {type="item", name="tungsten-plate", amount=150},
                {type="item", name="processing-unit", amount=150},
                {type="item", name="tungsten-carbide", amount=150},
                {type="item", name="armour-control-unit", amount=150},
            },
            results = {{type="item", name="par-laser-mk6", amount=1}}
        },
        {
            type = "recipe",
            name = "par-laser-mk7",
            main_product = "par-laser-mk7",
            category = "electronics",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-laser-mk6", amount=1},
                {type="item", name="armour-control-unit", amount=200},
                {type="item", name="low-density-structure", amount=200},
                {type="item", name="electric-engine-unit", amount=200},
                {type="item", name="tungsten-carbide", amount=200},
                {type="item", name="processing-unit", amount=200},
                {type="item", name="superconductor", amount=200},
                {type="item", name="tungsten-plate", amount=200},
                {type="item", name="lithium-plate", amount=200},
                {type="item", name="carbon-fiber", amount=200},
                {type="item", name="calcite", amount=200},
                {type="item", name="carbon", amount=200},
                --Fluid
                {type="fluid", name="electrolyte", amount=250},
            },
            results = {
                {type="item", name="par-laser-mk7", amount=1},
            }
        },
        {
            type = "recipe",
            name = "par-laser-mk8",
            main_product = "par-laser-mk8",
            category = "electronics",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-laser-mk7", amount=1},
                {type="item", name="low-density-structure", amount=300},
                {type="item", name="armour-control-unit", amount=300},
                {type="item", name="processing-unit", amount=300},
                {type="item", name="tungsten-carbide", amount=300},
                {type="item", name="superconductor", amount=300},
                {type="item", name="tungsten-plate", amount=300},
                {type="item", name="lithium-plate", amount=300},
                {type="item", name="carbon-fiber", amount=300},
                {type="item", name="calcite", amount=300},
                {type="item", name="carbon", amount=300},
                --Fluid
                {type="fluid", name="electrolyte", amount=250},
            },
            results = {
                {type="item", name="par-laser-mk8", amount=1},
            }
        },
        {
            type = "recipe",
            name = "par-laser-mk9",
            main_product = "par-laser-mk9",
            category = "electronics",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-laser-mk8", amount=1},
                {type="item", name="low-density-structure", amount=400},
                {type="item", name="quantum-processor", amount=400},
                {type="item", name="tungsten-carbide", amount=400},
                {type="item", name="supercapacitor", amount=400},
                {type="item", name="tungsten-plate", amount=400},
                {type="item", name="lithium-plate", amount=400},
                {type="item", name="carbon-fiber", amount=400},
                {type="item", name="biter-egg", amount=400},
                {type="item", name="calcite", amount=400},
                {type="item", name="carbon", amount=400},
                --Fluid
                {type="fluid", name="electrolyte", amount=250},
                {type="fluid", name="fluoroketone-cold", amount=100},
            },
            results = {
                {type="item", name="par-laser-mk9", amount=1},
                {type="fluid", name="fluoroketone-hot", amount=100},
            }
        },
        {
            type = "recipe",
            name = "par-laser-mk10",
            main_product = "par-laser-mk10",
            category = "electronics",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-laser-mk9", amount=1},
                {type="item", name="low-density-structure", amount=500},
                {type="item", name="armour-control-unit", amount=500},
                {type="item", name="quantum-processor", amount=500},
                {type="item", name="tungsten-carbide", amount=500},
                {type="item", name="supercapacitor", amount=500},
                {type="item", name="tungsten-plate", amount=500},
                {type="item", name="lithium-plate", amount=500},
                {type="item", name="carbon-fiber", amount=500},
                {type="item", name="biter-egg", amount=500},
                {type="item", name="calcite", amount=500},
                {type="item", name="carbon", amount=500},
                --Fluid
                {type="fluid", name="electrolyte", amount=500},
                {type="fluid", name="fluoroketone-cold", amount=500},
            },
            results = {
                {type="item", name="par-laser-mk10", amount=1},
                {type="fluid", name="fluoroketone-hot", amount=200},
            }
        },
    }
    data:extend(recipes)
end