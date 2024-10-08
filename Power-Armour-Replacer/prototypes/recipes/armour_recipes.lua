-- if setting.startup[""] then
--end
local recipes = {
    {
        type = "recipe",
        name = "par-armour-mk1",
        enabled = false,
        total_raw = true,
        energy_required = 50.0,
        ingredients = {
            {"heavy-armor", 1},
            {"stone-brick", 50},
            {"wood", 100},
            {"steel-plate", 20},
            {"electronic-circuit", 30}
        },
        result = "par-armour-mk1",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "par-armour-mk2",
        enabled = false,
        energy_required = 50.0,
        ingredients = {
            {"par-armour-mk1", 1},
            {"copper-plate", 170},
            {"iron-gear-wheel", 150},
            {"steel-plate", 50},
            {"electronic-circuit", 80},
        },
        result = "par-armour-mk2",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "par-armour-mk3",
        enabled = false,
        energy_required = 50.0,
        ingredients = {
            {"par-armour-mk2", 1},
            {"plastic-bar", 50},
            {"steel-plate", 175},
            {"engine-unit", 100},
            {"advanced-circuit", 125},
        },
        result = "par-armour-mk3",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "par-armour-mk4",
        enabled = false,
        energy_required = 50.0,
        ingredients = {
            {"par-armour-mk3", 1},
            {"iron-gear-wheel", 150},
            {"engine-unit", 100},
            {"plastic-bar", 100},
            {"advanced-circuit", 125},
        },
        result = "par-armour-mk4",
        allow_decomposition = true,
    },
    {
        type = "recipe",
        name = "par-armour-mk5",
        enabled = false,
        energy_required = 50.0,
        ingredients = {
            {"par-armour-mk4", 1},
            {"battery", 50},
            {"electric-engine-unit", 25},
            {"advanced-circuit", 150},
            {"uranium-235", 350},
        },
        result = "par-armour-mk5",
    },
    {
        type = "recipe",
        name = "par-armour-mk6",
        enabled = false,
        energy_required = 10.0,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"par-armour-mk5", 1},
            {"solar-panel", 20},
            {"processing-unit", 150},
            {"copper-plate", 100},
            {"steel-plate", 100},
            {type="fluid", name="petroleum-gas", amount=350},
        },
        result = "par-armour-mk6",
    },
    {
        type = "recipe",
        name = "par-armour-mk7",
        enabled = false,
        energy_required = 10.0,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"par-armour-mk6", 1},
            {"copper-cable", 200},
            {"steel-plate", 100},
            {"uranium-fuel-cell", 100},
            {"low-density-structure", 75},
            {type="fluid", name="petroleum-gas", amount=700},
        },
        result = "par-armour-mk7",
    },
    {
        type = "recipe",
        name = "par-armour-mk8",
        enabled = false,
        energy_required = 10.0,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"par-armour-mk7", 1},
            {"battery", 100},
            {"nuclear-fuel", 10},
            {"low-density-structure", 125},
            {type="fluid", name="lubricant", amount=350},
        },
        result = "par-armour-mk8",
    },
    {
        type = "recipe",
        name = "par-armour-mk9",
        enabled = false,
        energy_required = 10.0,
        category="crafting-with-fluid",
        hide_from_player_crafting = true,
        ingredients = {
            {"par-armour-mk8", 1},
            {"solar-panel", 30},
            {"rocket-control-unit", 100},
            {"low-density-structure", 175},
            {type="fluid", name="lubricant", amount=700},
        },
        result = "par-armour-mk9",
    },
    {
        type = "recipe",
        name = "par-armour-mk10",
        enabled = false,
        energy_required = 10.0,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-armour-mk9", 1},
            {"solar-panel", 40},
            {"rocket-control-unit", 200},
            {"processing-unit", 250},
            {"low-density-structure", 250},
        },
        result = "par-armour-mk10",
    },
}
data:extend(recipes)