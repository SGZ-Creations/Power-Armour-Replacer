local recipes = {
    {
        type = "recipe",
        name = "par-solar-panel-mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type="item", name="electronic-circuit", amount=20},
            {type="item", name="copper-plate", amount=65},
            {type="item", name="iron-plate", amount=50},
            {type="item", name="wood", amount=15},
        },
        results = {{type="item", name="par-solar-panel-mk1", amount=1}}
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk2",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type="item", name="par-solar-panel-mk1", amount=1},
            {type="item", name="electronic-circuit", amount=30},
            {type="item", name="copper-plate", amount=70},
            {type="item", name="steel-plate", amount=50},
            {type="item", name="wood", amount=35},
        },
        results = {{type="item", name="par-solar-panel-mk2", amount=1}}
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk3",
        enabled = false,
        energy_required = 15,
        ingredients = {
            {type="item", name="par-solar-panel-mk2", amount=1},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="copper-plate", amount=40},
            {type="item", name="steel-plate", amount=75},
            {type="item", name="wood", amount=50},
        },
        results = {{type="item", name="par-solar-panel-mk3", amount=1}}
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk4",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {type="item", name="par-solar-panel-mk3", amount=1},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="engine-unit", amount=120},
            {type="item", name="battery", amount=150},
        },
        results = {{type="item", name="par-solar-panel-mk4", amount=1}}
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk5",
        enabled = false,
        energy_required = 25,
        ingredients = {
            {type="item", name="par-solar-panel-mk4", amount=1},
            {type="item", name="armour-control-unit", amount=80},
            {type="item", name="advanced-circuit", amount=110},
            {type="item", name="steel-plate", amount=115},
            {type="item", name="battery", amount=190},
        },
        results = {{type="item", name="par-solar-panel-mk5", amount=1}}
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk6",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {type="item", name="par-solar-panel-mk5", amount=1},
            {type="item", name="armour-control-unit", amount=105},
            {type="item", name="electric-engine-unit", amount=80},
            {type="item", name="processing-unit", amount=60},
            {type="item", name="engine-unit", amount=140},
            {type="item", name="iron-stick", amount=300},
        },
        results = {{type="item", name="par-solar-panel-mk6", amount=1}}
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk7",
        enabled = false,
        energy_required = 35,
        ingredients = {
            {type="item", name="par-solar-panel-mk6", amount=1},
            {type="item", name="armour-control-unit", amount=125},
            {type="item", name="plastic-bar", amount=140},
            {type="item", name="processing-unit", amount=70},
            {type="item", name="electric-engine-unit", amount=120},
            {type="item", name="low-density-structure", amount=175},
        },
        results = {{type="item", name="par-solar-panel-mk7", amount=1}}
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk8",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="par-solar-panel-mk7", amount=1},
            {type="item", name="armour-control-unit", amount=155},
            {type="item", name="battery", amount=200},
            {type="item", name="plastic-bar", amount=170},
            {type="item", name="low-density-structure", amount=175},
        },
        results = {{type="item", name="par-solar-panel-mk8", amount=1}}
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk9",
        category="crafting-with-fluid",
        enabled = false,
        energy_required = 45,
        ingredients = {
            {type="item", name="par-solar-panel-mk8", amount=1},
            {type="item", name="processing-unit", amount=123},
            {type="item", name="armour-control-unit", amount=175},
            {type="item", name="low-density-structure", amount=175},
            {type="fluid", name="lubricant", amount=250},
        },
        results = {{type="item", name="par-solar-panel-mk9", amount=1}}
    },
    {
        type = "recipe",
        name = "par-solar-panel-mk10",
        category="crafting-with-fluid",
        enabled = false,
        energy_required = 50,
        ingredients = {
            {type="item", name="par-solar-panel-mk9", amount=1},
            {type="item", name="processing-unit", amount=144},
            {type="item", name="armour-control-unit", amount=200},
            {type="item", name="low-density-structure", amount=200},
            {type="fluid", name="lubricant", amount=350},
        },
        results = {{type="item", name="par-solar-panel-mk10", amount=1}}
    },
}
data:extend(recipes)

if mods["space-age"] then
    local recipes = {
        {
            type = "recipe",
            name = "par-solar-panel-mk1",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="electronic-circuit", amount=25},
                {type="item", name="copper-plate", amount=25},
                {type="item", name="steel-plate", amount=25},
                {type="item", name="iron-plate", amount=25},
                {type="item", name="wood", amount=25},
            },
            results = {{type="item", name="par-solar-panel-mk1", amount=1}}
        },
        {
            type = "recipe",
            name = "par-solar-panel-mk2",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type="item", name="par-solar-panel-mk1", amount=1},
                {type="item", name="electronic-circuit", amount=50},
                {type="item", name="copper-plate", amount=50},
                {type="item", name="steel-plate", amount=50},
                {type="item", name="wood", amount=50},
            },
            results = {{type="item", name="par-solar-panel-mk2", amount=1}}
        },
        {
            type = "recipe",
            name = "par-solar-panel-mk3",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 15,
            ingredients = {
                {type="item", name="par-solar-panel-mk2", amount=1},
                {type="item", name="advanced-circuit", amount=75},
                {type="item", name="copper-plate", amount=75},
                {type="item", name="steel-plate", amount=75},
                {type="item", name="plastic-bar", amount=75},
            },
            results = {{type="item", name="par-solar-panel-mk3", amount=1}}
        },
        {
            type = "recipe",
            name = "par-solar-panel-mk4",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 20,
            ingredients = {
                {type="item", name="par-solar-panel-mk3", amount=1},
                {type="item", name="advanced-circuit", amount=100},
                {type="item", name="copper-plate", amount=100},
                {type="item", name="steel-plate", amount=100},
                {type="item", name="plastic-bar", amount=100},
            },
            results = {{type="item", name="par-solar-panel-mk4", amount=1}}
        },
        {
            type = "recipe",
            name = "par-solar-panel-mk5",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 25,
            ingredients = {
                {type="item", name="par-solar-panel-mk4", amount=1},
                {type="item", name="low-density-structure", amount=125},
                {type="item", name="armour-control-unit", amount=125},
                {type="item", name="processing-unit", amount=125},
                {type="item", name="steel-plate", amount=125},
                {type="item", name="carbon", amount=125},
            },
            results = {{type="item", name="par-solar-panel-mk5", amount=1}}
        },
        {
            type = "recipe",
            name = "par-solar-panel-mk6",
            category = "electronics",
            enabled = false,
            energy_required = 30,
            ingredients = {
                {type="item", name="par-solar-panel-mk5", amount=1},
                {type="item", name="low-density-structure", amount=150},
                {type="item", name="armour-control-unit", amount=150},
                {type="item", name="processing-unit", amount=150},
                {type="item", name="pentapod-egg", amount=150},
                {type="item", name="carbon-fiber", amount=150},
                {type="item", name="carbon", amount=150},
            },
            results = {{type="item", name="par-solar-panel-mk6", amount=1}}
        },
        {
            type = "recipe",
            name = "par-solar-panel-mk7",
            category = "electronics",
            enabled = false,
            energy_required = 35,
            ingredients = {
                {type="item", name="par-solar-panel-mk6", amount=1},
                {type="item", name="low-density-structure", amount=200},
                {type="item", name="armour-control-unit", amount=200},
                {type="item", name="tungsten-carbide", amount=200},
                {type="item", name="processing-unit", amount=200},
                {type="item", name="superconductor", amount=200},
                {type="item", name="carbon-fiber", amount=200},
                {type="item", name="pentapod-egg", amount=200},
                --Fluid
                {type="fluid", name="electrolyte", amount=1000},
            },
            results = {{type="item", name="par-solar-panel-mk7", amount=1}}
        },
        {
            type = "recipe",
            name = "par-solar-panel-mk8",
            main_product = "par-solar-panel-mk8",
            category = "electronics",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-solar-panel-mk7", amount=1},
                {type="item", name="low-density-structure", amount=300},
                {type="item", name="armour-control-unit", amount=300},
                {type="item", name="quantum-processor", amount=300},
                {type="item", name="supercapacitor", amount=300},
                {type="item", name="holmium-plate", amount=300},
                {type="item", name="carbon-fiber", amount=300},
                {type="item", name="plastic-bar", amount=300},
                --Fluid
                {type="fluid", name="electrolyte", amount=1000},
            },
            results = {{type="item", name="par-solar-panel-mk8", amount=1}}
        },
        {
            type = "recipe",
            name = "par-solar-panel-mk9",
            main_product = "par-solar-panel-mk9",
            category = "electronics",
            enabled = false,
            energy_required = 45,
            ingredients = {
                {type="item", name="par-solar-panel-mk8", amount=1},
                {type="item", name="low-density-structure", amount=400},
                {type="item", name="armour-control-unit", amount=400},
                {type="item", name="quantum-processor", amount=400},
                {type="item", name="tungsten-carbide", amount=400},
                {type="item", name="tungsten-plate", amount=400},
                {type="item", name="superconductor", amount=400},
                {type="item", name="supercapacitor", amount=400},
                {type="item", name="lithium-plate", amount=400},
                {type="item", name="holmium-plate", amount=400},
                {type="item", name="carbon-fiber", amount=400},
                {type="item", name="biter-egg", amount=400},
                --Fluid
                {type="fluid", name="electrolyte", amount=1000},
                {type="fluid", name="fluoroketone-cold", amount=100},
            },
            results = {
                {type="item", name="par-solar-panel-mk9", amount=1},
                {type="fluid", name="fluoroketone-hot", amount=100},
            }
        },
        {
            type = "recipe",
            name = "par-solar-panel-mk10",
            main_product = "par-solar-panel-mk10",
            category = "electronics",
            enabled = false,
            energy_required = 50,
            ingredients = {
                {type="item", name="par-solar-panel-mk9", amount=1},
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
                {type="fluid", name="electrolyte", amount=1000},
                {type="fluid", name="fluoroketone-cold", amount=200},
            },
            results = {
                {type="item", name="par-solar-panel-mk10", amount=1},
                {type="fluid", name="fluoroketone-hot", amount=200},
            }
        },
    }
    data:extend(recipes)
end