local recipes = {
    {
        type = "recipe",
        name = "r_mk1",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"iron-chest", 5},
            {"electronic-circuit", 75},
            {"copper-cable", 150},
            {"small-lamp", 20},
        },
        result = "r_mk1"
    },
    {
        type = "recipe",
        name = "r_mk2",
        enabled = false,
        energy_required = 20,
        
        ingredients = {
            {"r_mk1", 1},
            {"electronic-circuit", 100},
            {"iron-gear-wheel", 125},
            {"copper-cable", 175},
        },
        result = "r_mk2"
    },
    {
        type = "recipe",
        name = "r_mk3",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {"r_mk2", 1},
            {"electronic-circuit", 125},
            {"engine-unit", 80},
            {"iron-plate", 100},
        },
        result = "r_mk3"
    },
    {
        type = "recipe",
        name = "r_mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"r_mk3", 1},
            {"electronic-circuit", 132},
            {"engine-unit", 140},
            {"steel-plate", 167},
            {"iron-gear-wheel", 173},
            
        },
        result = "r_mk4"
    },
    {
        type = "recipe",
        name = "r_mk5",
        enabled = false,
        energy_required = 50,
        ingredients = {
            {"r_mk4", 1},
            {"steel-chest", 30},
            {"flying-robot-frame", 65},
            {"b_mk3", 3},
        },
        result = "r_mk5"
    },
    {
        type = "recipe",
        name = "r_mk6",
        enabled = false,
        energy_required = 60,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"r_mk5", 1},
            {"advanced-circuit", 82},
            {"electric-engine-unit", 128},
            {"steel-plate", 231},
            {type="fluid", name="lubricant", amount=300},
        },
        result = "r_mk6"
    },
    {
        type = "recipe",
        name = "r_mk7",
        enabled = false,
        energy_required = 70,
        hide_from_player_crafting = true,
        ingredients = {
            {"r_mk6", 1},
            {"processing-unit", 117},
            {"p-s_mk5", 5},
            {"iron-stick", 272},
            {"low-density-structure", 57},
        },
        result = "r_mk7"
    },
    {
        type = "recipe",
        name = "r_mk8",
        enabled = false,
        energy_required = 80,
        hide_from_player_crafting = true,
        ingredients = {
            {"r_mk7", 1},
            {"low-density-structure", 128},
            {"steel-plate", 268},
            {"copper-cable", 321},
            {"uranium-235", 162},
        },
        result = "r_mk8"
    },
    {
        type = "recipe",
        name = "r_mk9",
        enabled = false,
        energy_required = 90,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"r_mk8", 1},
            {"rocket-control-unit", 82},
            {"low-density-structure", 143},
            {"advanced-circuit", 157},
            {type="fluid", name="lubricant", amount=600},
        },
        result = "r_mk9"
    },
    {
        type = "recipe",
        name = "r_mk10",
        enabled = false,
        energy_required = 100,
        hide_from_player_crafting = true,
        ingredients = {
            {"r_mk9", 1},
            {"low-density-structure", 196},
            {"rocket-control-unit", 164},
            {"processing-unit", 171},
        },
        result = "r_mk10"
    },
}

local compat = require("compatibilities/mods-compat")
--Compatibility section
compat.update_ingredients(recipes[1], {
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 30},
            ["iron-chest"] = {"solder", 75},
            ["small-lamp"] = {"rubber", 50},
            ["copper-cable"] = {"copper-cable", 100},
        }
    },
    {
        dependencies = {"angelspetrochem", "bobplates", "SeaBlockMetaPack"},
        replacements = {
            ["rubber"] = {"tin-plate", 50},
        }
    },
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["iron-chest"] = {"iron-beam", 10},
            ["copper-cable"] = {"glass", 25},
        }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 20},
            ["small-lamp"] = {"motor", 10},
        }
    },
})
compat.update_ingredients(recipes[2], {
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 45},
            ["iron-gear-wheel"] = {"iron-gear-wheel", 50},
            ["copper-cable"] = {"tinned-copper-cable", 75},
      }
    },
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 30},
            ["copper-cable"] = {"motor", 10},
        }
    },
})
compat.update_ingredients(recipes[3], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["electronic-circuit"] = {"roboport-antenna-1", 5},
            ["engine-unit"] = {"roboport-chargepad-1", 5},
            ["iron-plate"] = {"roboport-door-1", 5},
        }
    },
})
compat.update_ingredients(recipes[4], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["electronic-circuit"] = {"roboport-antenna-1", 10},
            ["engine-unit"] = {"roboport-chargepad-1", 10},
            ["steel-plate"] = {"roboport-door-1", 10},
            ["iron-gear-wheel"] = {"", 0},
        }
    },
})
compat.update_ingredients(recipes[5], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["steel-chest"] = {"roboport-antenna-2", 5},
            ["b_mk3"] = {"roboport-chargepad-2", 5},
            ["flying-robot-frame"] = {"roboport-door-2", 5},
        }
    },
})

compat.update_ingredients(recipes[6], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["advanced-circuit"] = {"roboport-antenna-2", 10},
            ["electric-engine-unit"] = {"roboport-chargepad-2", 10},
            ["steel-plate"] = {"roboport-door-2", 10},
            ["lubricant"] = {"", 0},
        }
    },
})

compat.update_ingredients(recipes[7], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["processing-unit"] = {"roboport-antenna-3", 5},
            ["p-s_mk5"] = {"roboport-chargepad-3", 5},
            ["iron-stick"] = {"roboport-door-3", 5},
            ["low-density-structure"] = {"", 0},
        }
    },
})
compat.update_ingredients(recipes[8], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["low-density-structure"] = {"roboport-antenna-3", 10},
            ["steel-plate"] = {"roboport-chargepad-3", 10},
            ["copper-cable"] = {"roboport-door-3", 10},
            ["uranium-235"] = {"", 0},
        }
    },
})
compat.update_ingredients(recipes[9], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["rocket-control-unit"] = {"roboport-antenna-4", 5},
            ["low-density-structure"] = {"roboport-chargepad-4", 5},
            ["advanced-circuit"] = {"roboport-door-4", 5},
            ["lubricant"] = {"", 0},
        }
    },
})
compat.update_ingredients(recipes[10], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["low-density-structure"] = {"roboport-antenna-4", 10},
            ["rocket-control-unit"] = {"roboport-chargepad-4", 10},
            ["processing-unit"] = {"roboport-door-4", 10},
        }
    },
})

data:extend(recipes)