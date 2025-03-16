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
        hide_from_player_crafting = true,
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
        hide_from_player_crafting = true,
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
        hide_from_player_crafting = true,
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
        hide_from_player_crafting = true,
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
        hide_from_player_crafting = true,
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
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 40,
            hide_from_player_crafting = true,
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
            category = "electromagnetics",
            enabled = false,
            energy_required = 40,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-laser-mk6", amount=1},
                {type="item", name="low-density-structure", amount=60},
                {type="item", name="electric-engine-unit", amount=70},
                {type="item", name="advanced-circuit", amount=100},
                {type="item", name="processing-unit", amount=100},
                {type="item", name="copper-cable", amount=115},
                {type="fluid", name="fluoroketone-cold", amount=200},
            },
            results = {
                {type="item", name="par-laser-mk7", amount=1},
                --{type="fluid", name="fluoroketone-hot", amount=200},
            }
        },
        {
            type = "recipe",
            name = "par-laser-mk8",
            category = "electromagnetics",
            enabled = false,
            energy_required = 40,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-laser-mk7", amount=1},
                {type="item", name="low-density-structure", amount=130},
                {type="item", name="plastic-bar", amount=200},
                {type="item", name="copper-cable", amount=300},
                {type="item", name="processing-unit", amount=100},
                {type="item", name="advanced-circuit", amount=100},
                {type="fluid", name="fluoroketone-cold", amount=200},
            },
            results = {
                {type="item", name="par-laser-mk8", amount=1},
                --{type="fluid", name="fluoroketone-hot", amount=200},
            }
        },
        {
            type = "recipe",
            name = "par-laser-mk9",
            category = "electromagnetics",
            enabled = false,
            energy_required = 40,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-laser-mk8", amount=1},
                {type="item", name="low-density-structure", amount=180},
                {type="item", name="armour-control-unit", amount=60},
                {type="item", name="advanced-circuit", amount=100},
                {type="item", name="processing-unit", amount=100},
                {type="item", name="plastic-bar", amount=300},
                {type="item", name="sulfur", amount=150},
                {type="fluid", name="fluoroketone-cold", amount=200},
            },
            results = {
                {type="item", name="par-laser-mk9", amount=1},
                --{type="fluid", name="fluoroketone-hot", amount=200},
            }
        },
        {
            type = "recipe",
            name = "par-laser-mk10",
            category = "electromagnetics",
            enabled = false,
            energy_required = 40,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-laser-mk9", amount=1},
                {type="item", name="low-density-structure", amount=200},
                {type="item", name="armour-control-unit", amount=100},
                {type="item", name="advanced-circuit", amount=100},
                {type="item", name="processing-unit", amount=100},
                {type="item", name="steel-plate", amount=300},
                {type="item", name="sulfur", amount=150},
                {type="fluid", name="fluoroketone-cold", amount=200},
            },
            results = {
                {type="item", name="par-laser-mk10", amount=1},
                --{type="fluid", name="fluoroketone-hot", amount=200},
            }
        },
    }
    data:extend(recipes)
end