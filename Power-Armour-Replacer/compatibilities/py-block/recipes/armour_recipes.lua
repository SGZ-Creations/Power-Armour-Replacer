if mods["PyBlock"] then
    local recipes = {
        {
            type = "recipe",
            name = "a_mk1",
            enabled = false,
            total_raw = true,
            energy_required = 50.0,
            ingredients = {
                {"stone-brick", 50},
                {"wood", 100},
            },
            result = "a_mk1",
            allow_decomposition = true,
        },
        {
            type = "recipe",
            name = "a_mk2",
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {"a_mk1", 1},
                {"copper-plate", 100},
                {"iron-gear-wheel", 50},
            },
            result = "a_mk2",
            allow_decomposition = true,
        },
        {
            type = "recipe",
            name = "a_mk3",
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {"a_mk2", 1},
                {"plastic-bar", 50},
                {"steel-plate", 75},
                {"electronic-circuit", 10}
            },
            result = "a_mk3",
            allow_decomposition = true,
        },
        {
            type = "recipe",
            name = "a_mk4",
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {"a_mk3", 1},
                {"iron-gear-wheel", 150},
                {"plastic-bar", 100},
                {"electronic-circuit", 15}
            },
            result = "a_mk4",
            allow_decomposition = true,
        },
        {
            type = "recipe",
            name = "a_mk5",
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {"a_mk4", 1},
                {"battery", 50},
                {"advanced-circuit", 150},
                {"uranium-235", 350},
            },
            result = "a_mk5",
        },
        {
            type = "recipe",
            name = "a_mk6",
            enabled = false,
            energy_required = 10.0,
            category="crafting-with-fluid",
            hide_from_player_crafting = true,
            ingredients = {
                {"a_mk5", 1},
                {"solar-panel", 20},
                {"processing-unit", 150},
                --{"red-wire", 100},
                --{"green-wire", 100},
                {type="fluid", name="petroleum-gas", amount=350},
            },
            result = "a_mk6",
        },
        {
            type = "recipe",
            name = "a_mk7",
            enabled = false,
            energy_required = 10.0,
            category="crafting-with-fluid",
            hide_from_player_crafting = true,
            ingredients = {
                {"a_mk6", 1},
                --{"red-wire", 100},
                --{"green-wire", 100},
                {"uranium-fuel-cell", 100},
                {"low-density-structure", 75},
                {type="fluid", name="petroleum-gas", amount=700},
            },
            result = "a_mk7",
        },
        {
            type = "recipe",
            name = "a_mk8",
            enabled = false,
            energy_required = 10.0,
            category="crafting-with-fluid",
            hide_from_player_crafting = true,
            ingredients = {
                {"a_mk7", 1},
                {"battery", 100},
                {"nuclear-fuel", 10},
                {"low-density-structure", 125},
                {type="fluid", name="lubricant", amount=350},
            },
            result = "a_mk8",
        },
        {
            type = "recipe",
            name = "a_mk9",
            enabled = false,
            energy_required = 10.0,
            category="crafting-with-fluid",
            hide_from_player_crafting = true,
            ingredients = {
                {"a_mk8", 1},
                {"solar-panel", 30},
                {"rocket-control-unit", 100},
                {"low-density-structure", 175},
                {type="fluid", name="lubricant", amount=700},
            },
            result = "a_mk9",
        },
        {
            type = "recipe",
            name = "a_mk10",
            enabled = false,
            energy_required = 10.0,
            hide_from_player_crafting = true,
            ingredients = {
                {"a_mk9", 1},
                {"solar-panel", 40},
                {"rocket-control-unit", 200},
                {"processing-unit", 250},
                {"low-density-structure", 250},
            },
            result = "a_mk10",
        },
    }
    data:extend(recipes)
end