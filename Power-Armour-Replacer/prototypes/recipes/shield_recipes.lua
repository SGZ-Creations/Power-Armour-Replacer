local recipes = {
    {
        type = "recipe",
        name = "par-shield-mk1",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type="item", name="iron-plate", amount=100},
            {type="item", name="stone-brick", amount=100},
            {type="item", name="copper-plate", amount=100},
            {type="item", name="electronic-circuit", amount=100},
        },
        results = {{type="item", name="par-shield-mk1", amount=1}}
    },
    {
        type = "recipe",
        name = "par-shield-mk2",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type="item", name="par-shield-mk1", amount=1},
            {type="item", name="electronic-circuit", amount=100},
            {type="item", name="engine-unit", amount=20},
            {type="item", name="steel-plate", amount=130},
            {type="item", name="iron-plate", amount=130},
        },
        results = {{type="item", name="par-shield-mk2", amount=1}}
    },
    {
        type = "recipe",
        name = "par-shield-mk3",
        enabled = false,
        energy_required = 15,
        ingredients = {
            {type="item", name="par-shield-mk2", amount=1},
            {type="item", name="electronic-circuit", amount=160},
            {type="item", name="advanced-circuit", amount=45},
            {type="item", name="battery", amount=25},
        },
        results = {{type="item", name="par-shield-mk3", amount=1}}
    },
    {
        type = "recipe",
        name = "par-shield-mk4",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {type="item", name="par-shield-mk3", amount=1},
            {type="item", name="small-lamp", amount=20},
            {type="item", name="plastic-bar", amount=50},
            {type="item", name="advanced-circuit", amount=65},
        },
        results = {{type="item", name="par-shield-mk4", amount=1}}
    },
    {
        type = "recipe",
        name = "par-shield-mk5",
        enabled = false,
        energy_required = 25,
        ingredients = {
            {type="item", name="par-shield-mk4", amount=1},
            {type="item", name="electric-engine-unit", amount=55},
            {type="item", name="advanced-circuit", amount=90},
            {type="item", name="steel-plate", amount=80},
            {type="item", name="plastic-bar", amount=90},
        },
        results = {{type="item", name="par-shield-mk5", amount=1}}
    },
    {
        type = "recipe",
        name = "par-shield-mk6",
        enabled = false,
        energy_required = 30,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="par-shield-mk5", amount=1},
            {type="item", name="nuclear-fuel", amount=20},
            {type="item", name="battery", amount=100},
            {type="item", name="uranium-235", amount=80},
            {type="item", name="processing-unit", amount=60},
        },
        results = {{type="item", name="par-shield-mk6", amount=1}}
    },
    {
        type = "recipe",
        name = "par-shield-mk7",
        enabled = false,
        energy_required = 35,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="par-shield-mk6", amount=1},
            {type="item", name="copper-plate", amount=165},
            {type="item", name="uranium-238", amount=120},
            {type="item", name="processing-unit", amount=70},
            {type="item", name="low-density-structure", amount=105},
            {type="item", name="solid-fuel", amount=250},
        },
        results = {{type="item", name="par-shield-mk7", amount=1}}
    },
    {
        type = "recipe",
        name = "par-shield-mk8",
        enabled = false,
        energy_required = 40,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {type="item", name="par-shield-mk7", amount=1},
            {type="item", name="uranium-235", amount=120},
            {type="item", name="plastic-bar", amount=124},
            {type="item", name="processing-unit", amount=85},
            {type="fluid", name="lubricant", amount=350},
        },
        results = {{type="item", name="par-shield-mk8", amount=1}}
    },
    {
        type = "recipe",
        name = "par-shield-mk9",
        enabled = false,
        energy_required = 45,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {type="item", name="par-shield-mk8", amount=1},
            {type="item", name="battery", amount=100},
            {type="item", name="uranium-235", amount=55},
            {type="item", name="processing-unit", amount=95},
            {type="item", name="low-density-structure", amount=180},
            {type="fluid", name="petroleum-gas", amount=350},
        },
        results = {{type="item", name="par-shield-mk9", amount=1}}
    },
    {
        type = "recipe",
        name = "par-shield-mk10",
        enabled = false,
        energy_required = 50,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {type="item", name="par-shield-mk9", amount=1},
            {type="item", name="armour-control-unit", amount=75},
            {type="item", name="processing-unit", amount=110},
            {type="item", name="low-density-structure", amount=155},
            {type="fluid", name="sulfuric-acid", amount=350},
        },
        results = {{type="item", name="par-shield-mk10", amount=1}}
    },
}
data:extend(recipes)

if mods["space-age"] then
    local recipes = {
        {
            type = "recipe",
            name = "par-shield-mk1",
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="iron-plate", amount=100},
                {type="item", name="stone-brick", amount=100},
                {type="item", name="copper-plate", amount=100},
                {type="item", name="electronic-circuit", amount=100},
            },
            results = {{type="item", name="par-shield-mk1", amount=1}}
        },
        {
            type = "recipe",
            name = "par-shield-mk2",
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type="item", name="par-shield-mk1", amount=1},
                {type="item", name="electronic-circuit", amount=100},
                {type="item", name="engine-unit", amount=20},
                {type="item", name="steel-plate", amount=130},
                {type="item", name="iron-plate", amount=130},
            },
            results = {{type="item", name="par-shield-mk2", amount=1}}
        },
        {
            type = "recipe",
            name = "par-shield-mk3",
            enabled = false,
            energy_required = 15,
            ingredients = {
                {type="item", name="par-shield-mk2", amount=1},
                {type="item", name="electronic-circuit", amount=160},
                {type="item", name="advanced-circuit", amount=45},
                {type="item", name="battery", amount=25},
            },
            results = {{type="item", name="par-shield-mk3", amount=1}}
        },
        {
            type = "recipe",
            name = "par-shield-mk4",
            enabled = false,
            energy_required = 20,
            ingredients = {
                {type="item", name="par-shield-mk3", amount=1},
                {type="item", name="small-lamp", amount=20},
                {type="item", name="plastic-bar", amount=50},
                {type="item", name="advanced-circuit", amount=65},
            },
            results = {{type="item", name="par-shield-mk4", amount=1}}
        },
        {
            type = "recipe",
            name = "par-shield-mk5",
            enabled = false,
            energy_required = 25,
            ingredients = {
                {type="item", name="par-shield-mk4", amount=1},
                {type="item", name="electric-engine-unit", amount=55},
                {type="item", name="advanced-circuit", amount=90},
                {type="item", name="steel-plate", amount=80},
                {type="item", name="plastic-bar", amount=90},
            },
            results = {{type="item", name="par-shield-mk5", amount=1}}
        },
        {
            type = "recipe",
            name = "par-shield-mk6",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 30,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-shield-mk5", amount=1},
                {type="item", name="nuclear-fuel", amount=20},
                {type="item", name="battery", amount=100},
                {type="item", name="uranium-235", amount=80},
                {type="item", name="processing-unit", amount=60},
            },
            results = {{type="item", name="par-shield-mk6", amount=1}}
        },
        {
            type = "recipe",
            name = "par-shield-mk7",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 35,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-shield-mk6", amount=1},
                {type="item", name="copper-plate", amount=165},
                {type="item", name="uranium-238", amount=120},
                {type="item", name="processing-unit", amount=70},
                {type="item", name="low-density-structure", amount=105},
                {type="item", name="solid-fuel", amount=250},
            },
            results = {{type="item", name="par-shield-mk7", amount=1}}
        },
        {
            type = "recipe",
            name = "par-shield-mk8",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 40,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-shield-mk7", amount=1},
                {type="item", name="uranium-235", amount=120},
                {type="item", name="plastic-bar", amount=124},
                {type="item", name="processing-unit", amount=85},
                {type="fluid", name="lubricant", amount=350},
            },
            results = {{type="item", name="par-shield-mk8", amount=1}}
        },
        {
            type = "recipe",
            name = "par-shield-mk9",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 45,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-shield-mk8", amount=1},
                {type="item", name="battery", amount=100},
                {type="item", name="uranium-235", amount=55},
                {type="item", name="processing-unit", amount=95},
                {type="item", name="low-density-structure", amount=180},
                {type="fluid", name="petroleum-gas", amount=350},
            },
            results = {{type="item", name="par-shield-mk9", amount=1}}
        },
        {
            type = "recipe",
            name = "par-shield-mk10",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 50,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-shield-mk9", amount=1},
                {type="item", name="armour-control-unit", amount=75},
                {type="item", name="processing-unit", amount=110},
                {type="item", name="low-density-structure", amount=155},
                {type="fluid", name="sulfuric-acid", amount=350},
            },
            results = {{type="item", name="par-shield-mk10", amount=1}}
        },
    }
    data:extend(recipes)
end