local recipes = {
    {
        type = "recipe",
        name = "par-solar-panel-mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type="item", name="iron-plate", amount=10},
            {type="item", name="copper-plate", amount=65},
            {type="item", name="iron-stick", amount=35},
            {type="item", name="electronic-circuit", amount=20},
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
            {type="item", name="copper-plate", amount=70},
            {type="item", name="steel-plate", amount=50},
            {type="item", name="electronic-circuit", amount=30},
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
            --{type="item", name="battery", amount=30}, --change this.
            {type="item", name="steel-plate", amount=75},
            {type="item", name="copper-plate", amount=40},
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
            {type="item", name="electronic-circuit", amount=135},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="engine-unit", amount=120},
            --{type="item", name="battery", amount=150},--change this.
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
            --{type="item", name="battery", amount=190}, --change this.
            {type="item", name="advanced-circuit", amount=110},
            {type="item", name="sulfur", amount=123},
            {type="item", name="steel-plate", amount=115},
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
            {type="item", name="processing-unit", amount=60},
            {type="item", name="engine-unit", amount=140},
            {type="item", name="electric-engine-unit", amount=80},
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
            {type="item", name="copper-cable", amount=300},
            --{type="item", name="battery", amount=200}, --change this.
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
                {type="item", name="wood", amount=35},
                {type="item", name="iron-plate", amount=10},
                {type="item", name="copper-plate", amount=65},
                {type="item", name="electronic-circuit", amount=20},
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
                {type="item", name="electronic-circuit", amount=30},
                {type="item", name="copper-plate", amount=70},
                {type="item", name="steel-plate", amount=50},
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
                {type="item", name="plastic-bar", amount=60},
                {type="item", name="steel-plate", amount=75},
                {type="item", name="copper-plate", amount=40},
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
                {type="item", name="electronic-circuit", amount=135},
                {type="item", name="advanced-circuit", amount=100},
                {type="item", name="plastic-bar", amount=150},
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
                {type="item", name="advanced-circuit", amount=110},
                {type="item", name="steel-plate", amount=115},
                {type="item", name="carbon", amount=100},
                {type="item", name="sulfur", amount=123},
            },
            results = {{type="item", name="par-solar-panel-mk5", amount=1}}
        },
        {
            type = "recipe",
            name = "par-solar-panel-mk6",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 30,
            ingredients = {
                {type="item", name="par-solar-panel-mk5", amount=1},
                {type="item", name="processing-unit", amount=60},
                {type="item", name="carbon-fiber", amount=50},
                {type="item", name="jelly", amount=100},
            },
            results = {{type="item", name="par-solar-panel-mk6", amount=1}}
        },
        {
            type = "recipe",
            name = "par-solar-panel-mk7",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 35,
            ingredients = {
                {type="item", name="par-solar-panel-mk6", amount=1},
                {type="item", name="low-density-structure", amount=175},
                {type="item", name="processing-unit", amount=70},
                {type="item", name="superconductor", amount=120},
                {type="item", name="tungsten-carbide", amount=120},
                {type="item", name="plastic-bar", amount=140},
                {type="item", name="carbon-fiber", amount=100},
            },
            results = {{type="item", name="par-solar-panel-mk7", amount=1}}
        },
        {
            type = "recipe",
            name = "par-solar-panel-mk8",
            main_product = "par-solar-panel-mk8",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-solar-panel-mk7", amount=1},
                {type="item", name="holmium-plate", amount=300},
                {type="item", name="supercapacitor", amount=150},
                {type="item", name="carbon-fiber", amount=100},
                {type="item", name="plastic-bar", amount=170},
                {type="item", name="low-density-structure", amount=175},
            },
            results = {{type="item", name="par-solar-panel-mk8", amount=1}}
        },
        {
            type = "recipe",
            name = "par-solar-panel-mk9",
            main_product = "par-solar-panel-mk9",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 45,
            ingredients = {
                {type="item", name="par-solar-panel-mk8", amount=1},
                {type="item", name="processing-unit", amount=123},
                {type="item", name="armour-control-unit", amount=175},
                {type="item", name="low-density-structure", amount=175},
                {type="fluid", name="lubricant", amount=250},
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
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 50,
            ingredients = {
                {type="item", name="par-solar-panel-mk9", amount=1},
                {type="item", name="processing-unit", amount=144},
                {type="item", name="armour-control-unit", amount=200},
                {type="item", name="low-density-structure", amount=200},
                {type="fluid", name="lubricant", amount=350},
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