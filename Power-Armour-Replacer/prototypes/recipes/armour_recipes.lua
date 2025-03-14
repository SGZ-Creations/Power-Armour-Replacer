local recipes = {
    {
        type = "recipe",
        name = "par-armour-mk1",
        enabled = false,
        energy_required = 50.0,
        ingredients = {
            {type="item", name="heavy-armor", amount=1},
            {type="item", name="stone-brick", amount=50},
            {type="item", name="wood", amount=100},
            {type="item", name="steel-plate", amount=20},
            {type="item", name="electronic-circuit", amount=30}
        },
        results = {{type="item", name="par-armour-mk1", amount=1}},
    },
    {
        type = "recipe",
        name = "par-armour-mk2",
        enabled = false,
        energy_required = 50.0,
        ingredients = {
            {type="item", name="par-armour-mk1", amount=1},
            {type="item", name="copper-plate", amount=170},
            {type="item", name="iron-gear-wheel", amount=150},
            {type="item", name="steel-plate", amount=50},
            {type="item", name="electronic-circuit", amount=80},
        },
        results = {{type="item", name="par-armour-mk2", amount=1}},
    },
    {
        type = "recipe",
        name = "par-armour-mk3",
        enabled = false,
        energy_required = 50.0,
        ingredients = {
            {type="item", name="par-armour-mk2", amount=1},
            {type="item", name="plastic-bar", amount=50},
            {type="item", name="steel-plate", amount=175},
            {type="item", name="engine-unit", amount=100},
            {type="item", name="advanced-circuit", amount=125},
        },
        results = {{type="item", name="par-armour-mk3", amount=1}},
    },
    {
        type = "recipe",
        name = "par-armour-mk4",
        enabled = false,
        energy_required = 50.0,
        ingredients = {
            {type="item", name="par-armour-mk3", amount=1},
            {type="item", name="iron-gear-wheel", amount=150},
            {type="item", name="engine-unit", amount=100},
            {type="item", name="plastic-bar", amount=100},
            {type="item", name="advanced-circuit", amount=125},
        },
        results = {{type="item", name="par-armour-mk4", amount=1}},
    },
    {
        type = "recipe",
        name = "par-armour-mk5",
        enabled = false,
        energy_required = 50.0,
        ingredients = {
            {type="item", name="par-armour-mk4", amount=1},
            {type="item", name="battery", amount=50},
            {type="item", name="electric-engine-unit", amount=25},
            {type="item", name="advanced-circuit", amount=150},
            {type="item", name="armour-control-unit", amount=200},
        },
        results = {{type="item", name="par-armour-mk5", amount=1}},
    },
    {
        type = "recipe",
        name = "par-armour-mk6",
        category="crafting-with-fluid",
        enabled = false,
        energy_required = 10.0,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="par-armour-mk5", amount=1},
            {type="item", name="armour-control-unit", amount=200},
            {type="item", name="processing-unit", amount=90},
            {type="item", name="copper-plate", amount=100},
            {type="item", name="steel-plate", amount=100},
            {type="fluid", name="petroleum-gas", amount=250},
        },
        results = {{type="item", name="par-armour-mk6", amount=1}},
    },
    {
        type = "recipe",
        name = "par-armour-mk7",
        category="crafting-with-fluid",
        enabled = false,
        energy_required = 10.0,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="par-armour-mk6", amount=1},
            {type="item", name="copper-cable", amount=200},
            {type="item", name="steel-plate", amount=100},
            {type="item", name="uranium-fuel-cell", amount=100},
            {type="item", name="low-density-structure", amount=75},
            {type="fluid", name="petroleum-gas", amount=500},
        },
        results = {{type="item", name="par-armour-mk7", amount=1}},
    },
    {
        type = "recipe",
        name = "par-armour-mk8",
        category="crafting-with-fluid",
        enabled = false,
        energy_required = 10.0,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="par-armour-mk7", amount=1},
            {type="item", name="battery", amount=100},
            {type="item", name="nuclear-fuel", amount=10},
            {type="item", name="low-density-structure", amount=125},
            {type="fluid", name="lubricant", amount=250},
        },
        results = {{type="item", name="par-armour-mk8", amount=1}},
    },
    {
        type = "recipe",
        name = "par-armour-mk9",
        category="crafting-with-fluid",
        enabled = false,
        energy_required = 10.0,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="par-armour-mk8", amount=1},
            {type="item", name="processing-unit", amount=200},
            {type="item", name="armour-control-unit", amount=200},
            {type="item", name="low-density-structure", amount=175},
            {type="fluid", name="lubricant", amount=500},
        },
        results = {{type="item", name="par-armour-mk9", amount=1}},
    },
    {
        type = "recipe",
        name = "par-armour-mk10",
        category="crafting-with-fluid",
        enabled = false,
        energy_required = 10.0,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="par-armour-mk9", amount=1},
            {type="item", name="armour-control-unit", amount=200},
            {type="item", name="processing-unit", amount=400},
            {type="item", name="low-density-structure", amount=250},
            {type="fluid", name="lubricant", amount=750},
        },
        results = {{type="item", name="par-armour-mk10", amount=1}},
    },
}
data:extend(recipes)
if mods["space-age"] then
    local recipes = {
        {
            type = "recipe",
            name = "par-armour-mk1",
            allow_decomposition = true,
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {type="item", name="heavy-armor", amount=1},
                {type="item", name="stone-brick", amount=50},
                {type="item", name="wood", amount=100},
                {type="item", name="steel-plate", amount=20},
                {type="item", name="electronic-circuit", amount=30},
            },
            results = {{type="item", name="par-armour-mk1", amount=1}},
        },
        {
            type = "recipe",
            name = "par-armour-mk2",
            allow_decomposition = true,
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {type="item", name="par-armour-mk1", amount=1},
                {type="item", name="copper-plate", amount=170},
                {type="item", name="iron-gear-wheel", amount=150},
                {type="item", name="steel-plate", amount=50},
                {type="item", name="electronic-circuit", amount=80},
            },
            results = {{type="item", name="par-armour-mk2", amount=1}},
        },
        {
            type = "recipe",
            name = "par-armour-mk3",
            allow_decomposition = true,
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {type="item", name="par-armour-mk2", amount=1},
                {type="item", name="plastic-bar", amount=50},
                {type="item", name="steel-plate", amount=175},
                {type="item", name="engine-unit", amount=100},
                {type="item", name="advanced-circuit", amount=125},
            },
            results = {{type="item", name="par-armour-mk3", amount=1}},
        },
        {
            type = "recipe",
            name = "par-armour-mk4",
            allow_decomposition = true,
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {type="item", name="par-armour-mk3", amount=1},
                {type="item", name="iron-gear-wheel", amount=150},
                {type="item", name="engine-unit", amount=100},
                {type="item", name="plastic-bar", amount=100},
                {type="item", name="advanced-circuit", amount=125},
            },
            results = {{type="item", name="par-armour-mk4", amount=1}},
        },
        {
            type = "recipe",
            name = "par-armour-mk5",
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {type="item", name="par-armour-mk4", amount=1},
                {type="item", name="battery", amount=50},
                {type="item", name="electric-engine-unit", amount=25},
                {type="item", name="advanced-circuit", amount=125},
                {type="item", name="armour-control-unit", amount=200},
                {type="item", name="carbon", amount=50},
            },
            results = {{type="item", name="par-armour-mk5", amount=1}},
        },
        {
            type = "recipe",
            name = "par-armour-mk6",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 10.0,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-armour-mk5", amount=1},
                {type="item", name="armour-control-unit", amount=200},
                {type="item", name="processing-unit", amount=70},
                {type="item", name="carbon-fiber", amount=100},
                {type="item", name="tungsten-plate", amount=100},
                {type="item", name="holmium-plate", amount=100},
            },
            results = {{type="item", name="par-armour-mk6", amount=1}},
        },
        {
            type = "recipe",
            name = "par-armour-mk7",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 10.0,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-armour-mk6", amount=1},
                {type="item", name="armour-control-unit", amount=200},
                {type="item", name="low-density-structure", amount=75},
                {type="item", name="lithium-plate", amount=100},
                {type="item", name="tungsten-carbide", amount=100},
                {type="item", name="supercapacitor", amount=50},
            },
            results = {{type="item", name="par-armour-mk7", amount=1}},
        },
        {
            type = "recipe",
            name = "par-armour-mk8",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 10.0,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-armour-mk7", amount=1},
                {type="item", name="battery", amount=100},
                {type="item", name="low-density-structure", amount=125},
                {type="item", name="carbon-fiber", amount=100},
                {type="item", name="tungsten-carbide", amount=175},
                {type="fluid", name="fluoroketone-cold", amount=100},
                {type="item", name="supercapacitor", amount=100},
            },
            results = {{type="item", name="par-armour-mk8", amount=1}},
        },
        {
            type = "recipe",
            name = "par-armour-mk9",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 10.0,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-armour-mk8", amount=1},
                {type="item", name="armour-control-unit", amount=200},
                {type="item", name="carbon-fiber", amount=100},
                {type="item", name="tungsten-carbide", amount=175},
                {type="item", name="tungsten-plate", amount=175},
                {type="item", name="supercapacitor", amount=100},
                {type="fluid", name="fluoroketone-cold", amount=200},
                {type="item", name="quantum-processor", amount=10},
            },
            results = {{type="item", name="par-armour-mk9", amount=1}},
        },
        {
            type = "recipe",
            name = "par-armour-mk10",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 10.0,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-armour-mk9", amount=1},
                {type="item", name="low-density-structure", amount=250},
                {type="item", name="armour-control-unit", amount=200},
                {type="item", name="carbon-fiber", amount=100},
                {type="item", name="tungsten-carbide", amount=200},
                {type="item", name="tungsten-plate", amount=200},
                {type="item", name="holmium-plate", amount=100},
                {type="item", name="supercapacitor", amount=100},
                {type="item", name="lithium-plate", amount=100},
                {type="item", name="quantum-processor", amount=20},
                {type="fluid", name="fluoroketone-cold", amount=200},
            },
            results = {{type="item", name="par-armour-mk10", amount=1}},
        },
    }
    data:extend(recipes)
end

