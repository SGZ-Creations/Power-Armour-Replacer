local recipes = {
    {
        type = "recipe",
        name = "par-battery-mk1",
        enabled = false,
        energy_required = 25,
        ingredients = {
            {type="item", name="electronic-circuit", amount=30},
            {type="item", name="steel-plate", amount=30},
            {type="item", name="copper-cable", amount=50},
            {type="item", name="stone-brick", amount=40},
            {type="item", name="wood", amount=40},
        },
        results = {{type="item", name="par-battery-mk1", amount=1}}
    },
    {
        type = "recipe",
        name = "par-battery-mk2",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {type="item", name="par-battery-mk1", amount=1},
            {type="item", name="electronic-circuit", amount=15},
            {type="item", name="copper-cable", amount=50},
            {type="item", name="steel-plate", amount=30},
            {type="item", name="wood", amount=40},
        },
        results = {{type="item", name="par-battery-mk2", amount=1}}
    },
    {
        type = "recipe",
        name = "par-battery-mk3",
        enabled = false,
        energy_required = 35,
        ingredients = {
            {type="item", name="par-battery-mk2", amount=1},
            {type="item", name="electronic-circuit", amount=25},
            {type="item", name="advanced-circuit", amount=40},
            {type="item", name="battery", amount=30},
            {type="item", name="steel-plate", amount=50},
        },
        results = {{type="item", name="par-battery-mk3", amount=1}}
    },
    {
        type = "recipe",
        name = "par-battery-mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="par-battery-mk3", amount=1},
            {type="item", name="electronic-circuit", amount=50},
            {type="item", name="advanced-circuit", amount=20},
            {type="item", name="copper-cable", amount=150},
            {type="item", name="steel-plate", amount=75},
            {type="item", name="battery", amount=40},
        },
        results = {{type="item", name="par-battery-mk4", amount=1}}
    },
    {
        type = "recipe",
        name = "par-battery-mk5",
        enabled = false,
        energy_required = 45,
        ingredients = {
            {type="item", name="par-battery-mk4", amount=1},
            {type="item", name="advanced-circuit", amount=120},
            {type="item", name="low-density-structure", amount=75},
            {type="item", name="steel-plate", amount=125},
            {type="item", name="battery", amount=60},
        },
        results = {{type="item", name="par-battery-mk5", amount=1}}
    },
    {
        type = "recipe",
        name = "par-battery-mk6",
        enabled = false,
        energy_required = 50,
        ingredients = {
            {type="item", name="par-battery-mk5", amount=1},
            {type="item", name="advanced-circuit", amount=125},
            {type="item", name="low-density-structure", amount=150},
            {type="item", name="steel-plate", amount=140},
            {type="item", name="plastic-bar", amount=135},
            {type="item", name="battery", amount=70},
        },
        results = {{type="item", name="par-battery-mk6", amount=1}}
    },
    {
        type = "recipe",
        name = "par-battery-mk7",
        category="crafting-with-fluid",
        enabled = false,
        energy_required = 55,
        ingredients = {
            {type="item", name="par-battery-mk6", amount=1},
            {type="item", name="battery", amount=80},
            {type="item", name="plastic-bar", amount=65},
            {type="item", name="advanced-circuit", amount=40},
            {type="fluid", name="lubricant", amount=300},
        },
        results = {{type="item", name="par-battery-mk7", amount=1}}
    },
    {
        type = "recipe",
        name = "par-battery-mk8",
        category= "crafting-with-fluid",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {type="item", name="par-battery-mk7", amount=1},
            {type="item", name="battery", amount=90},
            {type="item", name="armour-control-unit", amount=65},
            {type="item", name="processing-unit", amount=50},
            {type="fluid", name="water", amount=500},
        },
        results = {{type="item", name="par-battery-mk8", amount=1}}
    },
    {
        type = "recipe",
        name = "par-battery-mk9",
        enabled = false,
        energy_required = 65,
        ingredients = {
            {type="item", name="par-battery-mk8", amount=1},
            {type="item", name="battery", amount=100},
            {type="item", name="plastic-bar", amount=135},
            {type="item", name="processing-unit", amount=50},
            {type="item", name="armour-control-unit", amount=95},
            {type="item", name="low-density-structure", amount=175},
        },
        results = {{type="item", name="par-battery-mk9", amount=1}}
    },
    {
        type = "recipe",
        name = "par-battery-mk10",
        category= "crafting-with-fluid",
        enabled = false,
        energy_required = 70,
        ingredients = {
            {type="item", name="par-battery-mk9", amount=1},
            {type="item", name="battery", amount=140},
            {type="item", name="processing-unit", amount=50},
            {type="item", name="armour-control-unit", amount=135},
            {type="item", name="low-density-structure", amount=200},
            {type="fluid", name="sulfuric-acid", amount=150},
        },
        results = {{type="item", name="par-battery-mk10", amount=1}}
    },
}
data:extend(recipes)
if mods["space-age"] then
    local recipes = {
        {
            type = "recipe",
            name = "par-battery-mk1",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 25,
            ingredients = {
                {type="item", name="electronic-circuit", amount=30},
                {type="item", name="steel-plate", amount=30},
                {type="item", name="copper-cable", amount=50},
                {type="item", name="stone-brick", amount=40},
                {type="item", name="wood", amount=40},
            },
            results = {{type="item", name="par-battery-mk1", amount=1}}
        },
        {
            type = "recipe",
            name = "par-battery-mk2",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 30,
            ingredients = {
                {type="item", name="par-battery-mk1", amount=1},
                {type="item", name="electronic-circuit", amount=30},
                {type="item", name="copper-cable", amount=50},
                {type="item", name="steel-plate", amount=30},
                {type="item", name="wood", amount=40},
            },
            results = {{type="item", name="par-battery-mk2", amount=1}}
        },
        {
            type = "recipe",
            name = "par-battery-mk3",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 35,
            ingredients = {
                {type="item", name="par-battery-mk2", amount=1},
                {type="item", name="advanced-circuit", amount=50},
                {type="item", name="steel-plate", amount=50},
                {type="item", name="battery", amount=30},
            },
            results = {{type="item", name="par-battery-mk3", amount=1}}
        },
        {
            type = "recipe",
            name = "par-battery-mk4",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-battery-mk3", amount=1},
                {type="item", name="advanced-circuit", amount=50},
                {type="item", name="copper-cable", amount=100},
                {type="item", name="steel-plate", amount=75},
                {type="item", name="battery", amount=40},
            },
            results = {{type="item", name="par-battery-mk4", amount=1}}
        },
        {
            type = "recipe",
            name = "par-battery-mk5",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 45,
            ingredients = {
                {type="item", name="par-battery-mk4", amount=1},
                {type="item", name="armour-control-unit", amount=20},
                {type="item", name="low-density-structure", amount=75},
                {type="item", name="carbon", amount=100},
                {type="item", name="battery", amount=60},
            },
            results = {{type="item", name="par-battery-mk5", amount=1}}
        },
        {
            type = "recipe",
            name = "par-battery-mk6",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 50,
            ingredients = {
                {type="item", name="par-battery-mk5", amount=1},
                {type="item", name="carbon", amount=100},
                {type="item", name="battery", amount=70},
                {type="item", name="carbon-fiber", amount=100},
                {type="item", name="advanced-circuit", amount=140},
                {type="item", name="armour-control-unit", amount=20},
                {type="item", name="low-density-structure", amount=150},
            },
            results = {{type="item", name="par-battery-mk6", amount=1}}
        },
        {
            type = "recipe",
            name = "par-battery-mk7",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 55,
            ingredients = {
                {type="item", name="par-battery-mk6", amount=1},
                {type="item", name="battery", amount=80},
                {type="item", name="carbon-fiber", amount=100},
                {type="item", name="processing-unit", amount=50},
                {type="item", name="armour-control-unit", amount=40},
                {type="fluid", name="electrolyte", amount=250},
                {type="fluid", name="sulfuric-acid", amount=250},
            },
            results = {{type="item", name="par-battery-mk7", amount=1}}
        },
        {
            type = "recipe",
            name = "par-battery-mk8",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 60,
            ingredients = {
                {type="item", name="par-battery-mk7", amount=1},
                {type="item", name="supercapacitor", amount=100},
                {type="item", name="armour-control-unit", amount=40},
                {type="item", name="processing-unit", amount=50},
                {type="item", name="carbon-fiber", amount=100},
                {type="fluid", name="sulfuric-acid", amount=250},
                {type="fluid", name="electrolyte", amount=250},
            },
            results = {{type="item", name="par-battery-mk8", amount=1}}
        },
        {
            type = "recipe",
            name = "par-battery-mk9",
            main_product = "par-battery-mk9",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 65,
            ingredients = {
                {type="item", name="par-battery-mk8", amount=1},
                {type="item", name="carbon-fiber", amount=100},
                {type="item", name="supercapacitor", amount=150},
                {type="item", name="quantum-processor", amount=10},
                {type="item", name="armour-control-unit", amount=95},
                {type="item", name="low-density-structure", amount=175},
                {type="fluid", name="electrolyte", amount=250},
                {type="fluid", name="fluoroketone-cold", amount=100},
            },
            results = {
                {type="item", name="par-battery-mk9", amount=1},
                {type="fluid", name="fluoroketone-hot", amount=100},
            }
        },
        {
            type = "recipe",
            name = "par-battery-mk10",
            main_product = "par-battery-mk10",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 70,
            ingredients = {
                {type="item", name="par-battery-mk9", amount=1},
                {type="item", name="carbon-fiber", amount=100},
                {type="item", name="supercapacitor", amount=200},
                {type="item", name="quantum-processor", amount=20},
                {type="item", name="armour-control-unit", amount=135},
                {type="item", name="low-density-structure", amount=200},
                {type="fluid", name="fluoroketone-cold", amount=200},
                {type="fluid", name="electrolyte", amount=250},
            },
            results = {
                {type="item", name="par-battery-mk10", amount=1},
                {type="fluid", name="fluoroketone-hot", amount=200},
            }
        },
    }
    data:extend(recipes)
end