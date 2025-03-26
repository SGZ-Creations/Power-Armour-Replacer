local recipes = {
    {
        type = "recipe",
        name = "par-roboport-mk1",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type="item", name="wood", amount=200},
            {type="item", name="iron-chest", amount=5},
            {type="item", name="electronic-circuit", amount=75},
            {type="item", name="copper-cable", amount=150},
            {type="item", name="small-lamp", amount=10},
        },
        results = {{type="item", name="par-roboport-mk1", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk2",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {type="item", name="par-roboport-mk1", amount=1},
            {type="item", name="electronic-circuit", amount=100},
            {type="item", name="iron-gear-wheel", amount=125},
            {type="item", name="copper-cable", amount=175},
        },
        results = {{type="item", name="par-roboport-mk2", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk3",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {type="item", name="par-roboport-mk2", amount=1},
            {type="item", name="electronic-circuit", amount=125},
            {type="item", name="engine-unit", amount=80},
            {type="item", name="iron-plate", amount=100},
        },
        results = {{type="item", name="par-roboport-mk3", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {type="item", name="par-roboport-mk3", amount=1},
            {type="item", name="electronic-circuit", amount=130},
            {type="item", name="engine-unit", amount=140},
            {type="item", name="steel-plate", amount=160},
            {type="item", name="iron-gear-wheel", amount=170},
        },
        results = {{type="item", name="par-roboport-mk4", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk5",
        enabled = false,
        energy_required = 50,
        ingredients = {
            {type="item", name="par-roboport-mk4", amount=1},
            {type="item", name="steel-chest", amount=30},
            {type="item", name="flying-robot-frame", amount=10},
            {type="item", name="advanced-circuit", amount=40},
        },
        results = {{type="item", name="par-roboport-mk5", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk6",
        enabled = false,
        energy_required = 60,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {type="item", name="par-roboport-mk5", amount=1},
            {type="item", name="processing-unit", amount=50},
            {type="item", name="electric-engine-unit", amount=120},
            {type="item", name="steel-plate", amount=230},
            {type="fluid", name="lubricant", amount=300},
        },
        results = {{type="item", name="par-roboport-mk6", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk7",
        enabled = false,
        energy_required = 70,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="par-roboport-mk6", amount=1},
            {type="item", name="processing-unit", amount=120},
            {type="item", name="uranium-235", amount=50},
            {type="item", name="iron-stick", amount=270},
            {type="item", name="low-density-structure", amount=60},
        },
        results = {{type="item", name="par-roboport-mk7", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk8",
        enabled = false,
        energy_required = 80,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="par-roboport-mk7", amount=1},
            {type="item", name="low-density-structure", amount=130},
            {type="item", name="steel-plate", amount=270},
            {type="item", name="copper-cable", amount=320},
            {type="item", name="uranium-235", amount=160},
        },
        results = {{type="item", name="par-roboport-mk8", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk9",
        enabled = false,
        energy_required = 90,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {type="item", name="par-roboport-mk8", amount=1},
            {type="item", name="armour-control-unit", amount=80},
            {type="item", name="low-density-structure", amount=150},
            {type="item", name="advanced-circuit", amount=160},
            {type="fluid", name="lubricant", amount=600},
        },
        results = {{type="item", name="par-roboport-mk9", amount=1}}
    },
    {
        type = "recipe",
        name = "par-roboport-mk10",
        enabled = false,
        energy_required = 100,
        hide_from_player_crafting = true,
        ingredients = {
            {type="item", name="par-roboport-mk9", amount=1},
            {type="item", name="low-density-structure", amount=195},
            {type="item", name="armour-control-unit", amount=165},
            {type="item", name="processing-unit", amount=170},
        },
        results = {{type="item", name="par-roboport-mk10", amount=1}}
    },
}
data:extend(recipes)

if mods["space-age"]then
    local recipes = {
        {
            type = "recipe",
            name = "par-roboport-mk1",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type="item", name="wood", amount=200},
                {type="item", name="iron-chest", amount=5},
                {type="item", name="electronic-circuit", amount=75},
                {type="item", name="copper-cable", amount=150},
                {type="item", name="small-lamp", amount=10},
            },
            results = {{type="item", name="par-roboport-mk1", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk2",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 20,
            ingredients = {
                {type="item", name="par-roboport-mk1", amount=1},
                {type="item", name="electronic-circuit", amount=100},
                {type="item", name="iron-gear-wheel", amount=125},
                {type="item", name="copper-cable", amount=175},
            },
            results = {{type="item", name="par-roboport-mk2", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk3",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 30,
            ingredients = {
                {type="item", name="par-roboport-mk2", amount=1},
                {type="item", name="electronic-circuit", amount=125},
                {type="item", name="engine-unit", amount=80},
                {type="item", name="iron-plate", amount=100},
            },
            results = {{type="item", name="par-roboport-mk3", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk4",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 40,
            ingredients = {
                {type="item", name="par-roboport-mk3", amount=1},
                {type="item", name="electronic-circuit", amount=130},
                {type="item", name="engine-unit", amount=140},
                {type="item", name="steel-plate", amount=160},
                {type="item", name="iron-gear-wheel", amount=170},
            },
            results = {{type="item", name="par-roboport-mk4", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk5",
            category = "electronics-or-handcrafting",
            enabled = false,
            energy_required = 50,
            ingredients = {
                {type="item", name="par-roboport-mk4", amount=1},
                {type="item", name="steel-chest", amount=30},
                {type="item", name="flying-robot-frame", amount=10},
                {type="item", name="advanced-circuit", amount=40},
            },
            results = {{type="item", name="par-roboport-mk5", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk6",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 60,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-roboport-mk5", amount=1},
                {type="item", name="processing-unit", amount=50},
                {type="item", name="electric-engine-unit", amount=120},
                {type="item", name="steel-plate", amount=230},
                {type="fluid", name="lubricant", amount=300},
            },
            results = {{type="item", name="par-roboport-mk6", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk7",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 70,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-roboport-mk6", amount=1},
                {type="item", name="processing-unit", amount=120},
                {type="item", name="uranium-235", amount=50},
                {type="item", name="iron-stick", amount=270},
                {type="item", name="low-density-structure", amount=60},
            },
            results = {{type="item", name="par-roboport-mk7", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk8",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 80,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-roboport-mk7", amount=1},
                {type="item", name="low-density-structure", amount=130},
                {type="item", name="steel-plate", amount=270},
                {type="item", name="copper-cable", amount=320},
                {type="item", name="uranium-235", amount=160},
            },
            results = {{type="item", name="par-roboport-mk8", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk9",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 90,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-roboport-mk8", amount=1},
                {type="item", name="armour-control-unit", amount=80},
                {type="item", name="low-density-structure", amount=150},
                {type="item", name="advanced-circuit", amount=160},
                {type="fluid", name="lubricant", amount=600},
            },
            results = {{type="item", name="par-roboport-mk9", amount=1}}
        },
        {
            type = "recipe",
            name = "par-roboport-mk10",
            category = "electronics-or-assembling",
            enabled = false,
            energy_required = 100,
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="par-roboport-mk9", amount=1},
                {type="item", name="low-density-structure", amount=195},
                {type="item", name="armour-control-unit", amount=165},
                {type="item", name="processing-unit", amount=170},
            },
            results = {{type="item", name="par-roboport-mk10", amount=1}}
        },
    }
    data:extend(recipes)
end