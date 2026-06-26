local SS = settings.startup

local recipes = {
    {
        type = "recipe",
        name = "par-roboport-mk1",
        categories = {"par-electronic-hands"},
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type="item", name="electronic-circuit", amount=25},
            {type="item", name="iron-gear-wheel", amount=25},
            {type="item", name="copper-cable", amount=25},
            {type="item", name="steel-plate", amount=25},
            {type="item", name="wood", amount=25},
        },
        results = {{type="item", name="par-roboport-mk1", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk2",
        categories = {"par-electronic-hands"},
        enabled = false,
        energy_required = 20,
        ingredients = {
            {type="item", name="par-roboport-mk1", amount= SS["EquipmentMulti"].value},
            {type="item", name="electronic-circuit", amount=50},
            {type="item", name="iron-gear-wheel", amount=50},
            {type="item", name="copper-cable", amount=50},
            {type="item", name="steel-plate", amount=50},
            {type="item", name="wood", amount=50},
        },
        results = {{type="item", name="par-roboport-mk2", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk3",
        categories = {"par-electronic-hands"},
        enabled = false,
        energy_required = 30,
        ingredients = {
            {type="item", name="par-roboport-mk2", amount= SS["EquipmentMulti"].value},
            {type="item", name="advanced-circuit", amount=75},
            {type="item", name="copper-plate", amount=75},
            {type="item", name="steel-plate", amount=75},
            {type="item", name="engine-unit", amount=75},
        },
        results = {{type="item", name="par-roboport-mk3", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk4",
        categories = {"par-electronic-hands"},
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="par-roboport-mk3", amount= SS["EquipmentMulti"].value},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="copper-plate", amount=100},
            {type="item", name="steel-plate", amount=100},
            {type="item", name="engine-unit", amount=100},
        },
        results = {{type="item", name="par-roboport-mk4", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk5",
        categories = {"par-electronic-hands"},
        enabled = false,
        energy_required = 50,
        ingredients = {
            {type="item", name="par-roboport-mk4", amount= SS["EquipmentMulti"].value},
            {type="item", name="electric-engine-unit", amount=125},
            {type="item", name="armour-control-unit", amount=125},
            {type="item", name="advanced-circuit", amount=125},
            {type="item", name="steel-plate", amount=125},
            {type="item", name="battery", amount=125},
        },
        results = {{type="item", name="par-roboport-mk5", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk6",
        categories = {"par-electronics"},
        enabled = false,
        energy_required = 60,
        ingredients = {
            {type="item", name="par-roboport-mk5", amount= SS["EquipmentMulti"].value},
                {type="item", name="electric-engine-unit", amount=150},
                {type="item", name="armour-control-unit", amount=150},
                {type="item", name="processing-unit", amount=150},
                {type="item", name="steel-plate", amount=150},
                {type="item", name="battery", amount=150},
        },
        results = {{type="item", name="par-roboport-mk6", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk7",
        categories = {"par-electronics"},
        enabled = false,
        energy_required = 70,
        ingredients = {
            {type="item", name="par-roboport-mk6", amount= SS["EquipmentMulti"].value},
            {type="item", name="battery", amount=200},
            {type="item", name="steel-plate", amount=200},
            {type="item", name="processing-unit", amount=200},
            {type="item", name="armour-control-unit", amount=200},
            {type="item", name="electric-engine-unit", amount=200},
            {type="item", name="low-density-structure", amount=200},
        },
        results = {{type="item", name="par-roboport-mk7", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk8",
        categories = {"par-electronics"},
        enabled = false,
        energy_required = 80,
        ingredients = {
            {type="item", name="par-roboport-mk7", amount= SS["EquipmentMulti"].value},
            {type="item", name="low-density-structure", amount=300},
            {type="item", name="electric-engine-unit", amount=300},
            {type="item", name="armour-control-unit", amount=300},
            {type="item", name="processing-unit", amount=300},
            {type="item", name="steel-plate", amount=300},
            {type="item", name="battery", amount=300},
        },
        results = {{type="item", name="par-roboport-mk8", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk9",
        enabled = false,
        energy_required = 90,
        categories = {"par-electronics"},
        ingredients = {
            {type="item", name="par-roboport-mk8", amount= SS["EquipmentMulti"].value},
            {type="item", name="low-density-structure", amount=400},
            {type="item", name="electric-engine-unit", amount=400},
            {type="item", name="armour-control-unit", amount=400},
            {type="item", name="processing-unit", amount=400},
            {type="item", name="battery", amount=400},
            {type="fluid", name="lubricant", amount=400},
        },
        results = {{type="item", name="par-roboport-mk9", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk10",
        categories = {"par-electronics"},
        enabled = false,
        energy_required = 100,
        ingredients = {
            {type="item", name="par-roboport-mk9", amount= SS["EquipmentMulti"].value},
            {type="item", name="low-density-structure", amount=500},
            {type="item", name="electric-engine-unit", amount=500},
            {type="item", name="armour-control-unit", amount=500},
            {type="item", name="processing-unit", amount=500},
            {type="item", name="battery", amount=500},
            {type="fluid", name="lubricant", amount=500},
        },
        results = {{type="item", name="par-roboport-mk10", amount=1}}
    },
}
data:extend(recipes)

if mods["space-age"]then
    data:extend({
        {
            type = "recipe",
            name = "par-roboport-mk1",
            categories = {"par-electronic-hands"},
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type="item", name="electronic-circuit", amount=25},
                {type="item", name="iron-gear-wheel", amount=25},
                {type="item", name="copper-cable", amount=25},
                {type="item", name="steel-plate", amount=25},
                {type="item", name="wood", amount=25},
            },
            results = {{type="item", name="par-roboport-mk1", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk2",
            categories = {"par-electronic-hands"},
            enabled = false,
            energy_required = 20,
            ingredients = {
                {type="item", name="par-roboport-mk1", amount= SS["EquipmentMulti"].value},
                {type="item", name="electronic-circuit", amount=50},
                {type="item", name="iron-gear-wheel", amount=50},
                {type="item", name="copper-cable", amount=50},
                {type="item", name="steel-plate", amount=50},
                {type="item", name="wood", amount=50},
            },
            results = {{type="item", name="par-roboport-mk2", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk3",
            categories = {"par-electronic-hands"},
            enabled = false,
            energy_required = 30,
            ingredients = {
                {type="item", name="par-roboport-mk2", amount= SS["EquipmentMulti"].value},
                {type="item", name="advanced-circuit", amount=75},
                {type="item", name="steel-plate", amount=75},
                {type="item", name="engine-unit", amount=75},
                {type="item", name="copper-plate", amount=75},
            },
            results = {{type="item", name="par-roboport-mk3", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk4",
            categories = {"par-electronic-hands"},
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-roboport-mk3", amount= SS["EquipmentMulti"].value},
                {type="item", name="advanced-circuit", amount=100},
                {type="item", name="steel-plate", amount=100},
                {type="item", name="engine-unit", amount=100},
                {type="item", name="copper-plate", amount=100},
            },
            results = {{type="item", name="par-roboport-mk4", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk5",
            categories = {"par-electronic-hands"},
            enabled = false,
            energy_required = 50,
            ingredients = {
                {type="item", name="par-roboport-mk4", amount= SS["EquipmentMulti"].value},
                {type="item", name="low-density-structure", amount=125},
                {type="item", name="electric-engine-unit", amount=125},
                {type="item", name="processing-unit", amount=125},
                {type="item", name="steel-plate", amount=125},
                {type="item", name="carbon", amount=125},
            },
            results = {{type="item", name="par-roboport-mk5", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk6",
            categories = {"par-electronics"},
            enabled = false,
            energy_required = 60,
            ingredients = {
                {type="item", name="par-roboport-mk5", amount= SS["EquipmentMulti"].value},
                {type="item", name="low-density-structure", amount=150},
                {type="item", name="electric-engine-unit", amount=150},
                {type="item", name="armour-control-unit", amount=150},
                {type="item", name="tungsten-carbide", amount=150},
                {type="item", name="processing-unit", amount=150},
                {type="item", name="tungsten-plate", amount=150},
                {type="item", name="battery", amount=150},
            },
            results = {{type="item", name="par-roboport-mk6", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk7",
            categories = {"par-electronics"},
            enabled = false,
            energy_required = 70,
            ingredients = {
                {type="item", name="par-roboport-mk6", amount= SS["EquipmentMulti"].value},
                {type="item", name="low-density-structure", amount=200},
                {type="item", name="electric-engine-unit", amount=200},
                {type="item", name="armour-control-unit", amount=200},
                {type="item", name="tungsten-carbide", amount=200},
                {type="item", name="processing-unit", amount=200},
                {type="item", name="tungsten-plate", amount=200},
                {type="item", name="lithium-plate", amount=200},
                --Fluid
                {type="fluid", name="electrolyte", amount=1000},
            },
            results = {{type="item", name="par-roboport-mk7", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk8",
            categories = {"par-electronics"},
            enabled = false,
            energy_required = 80,
            ingredients = {
                {type="item", name="par-roboport-mk7", amount= SS["EquipmentMulti"].value},
                {type="item", name="low-density-structure", amount=300},
                {type="item", name="armour-control-unit", amount=300},
                {type="item", name="quantum-processor", amount=300},
                {type="item", name="tungsten-carbide", amount=300},
                {type="item", name="tungsten-plate", amount=300},
                {type="item", name="superconductor", amount=300},
                {type="item", name="holmium-plate", amount=300},
                {type="item", name="carbon-fiber", amount=300},
                {type="item", name="supercapacitor", amount=300},
                {type="item", name="lithium-plate", amount=300},
                --Fluid
                {type="fluid", name="electrolyte", amount=1000},
            },
            results = {{type="item", name="par-roboport-mk8", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk9",
            main_product = "par-roboport-mk9",
            categories = {"par-electronics"},
            enabled = false,
            energy_required = 90,
            ingredients = {
                {type="item", name="par-roboport-mk8", amount= SS["EquipmentMulti"].value},
                {type="item", name="low-density-structure", amount=400},
                {type="item", name="armour-control-unit", amount=400},
                {type="item", name="quantum-processor", amount=400},
                {type="item", name="tungsten-carbide", amount=400},
                {type="item", name="tungsten-plate", amount=400},
                {type="item", name="superconductor", amount=400},
                {type="item", name="holmium-plate", amount=400},
                {type="item", name="carbon-fiber", amount=400},
                {type="item", name="supercapacitor", amount=400},
                {type="item", name="lithium-plate", amount=400},
                --Fluid
                {type="fluid", name="electrolyte", amount=1000},
                {type="fluid", name="fluoroketone-cold", amount=100},
            },
            results = {
                {type="item", name="par-roboport-mk9", amount=1},
                {type="fluid", name="fluoroketone-hot", amount=100},
            }
        },
        {
            type = "recipe",
            name = "par-roboport-mk10",
            main_product = "par-roboport-mk10",
            categories = {"par-electronics"},
            enabled = false,
            energy_required = 100,
            ingredients = {
                {type="item", name="par-roboport-mk9", amount= SS["EquipmentMulti"].value},
                {type="item", name="low-density-structure", amount=500},
                {type="item", name="armour-control-unit", amount=500},
                {type="item", name="quantum-processor", amount=500},
                {type="item", name="tungsten-carbide", amount=500},
                {type="item", name="tungsten-plate", amount=500},
                {type="item", name="superconductor", amount=500},
                {type="item", name="holmium-plate", amount=500},
                {type="item", name="carbon-fiber", amount=500},
                {type="item", name="supercapacitor", amount=500},
                {type="item", name="lithium-plate", amount=500},
                --Fluid
                {type="fluid", name="electrolyte", amount=1000},
                {type="fluid", name="fluoroketone-cold", amount=200},
            },
            results = {
                {type="item", name="par-roboport-mk10", amount=1},
                {type="fluid", name="fluoroketone-hot", amount=200},
            }
        },
    })
end