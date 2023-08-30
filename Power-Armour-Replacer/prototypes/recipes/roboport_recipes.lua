local recipes = {
    {
        type = "recipe",
        name = "r_mk1",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"wood", 200},
            {"iron-chest", 5},
            {"electronic-circuit", 75},
            {"copper-cable", 150},
            {"small-lamp", 10},
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
            {"electronic-circuit", 130},
            {"engine-unit", 140},
            {"steel-plate", 160},
            {"iron-gear-wheel", 170},
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
            {"battery", 45},
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
            {"processing-unit", 50},
            {"electric-engine-unit", 120},
            {"steel-plate", 230},
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
            {"processing-unit", 120},
            {"uranium-235", 50},
            {"iron-stick", 270},
            {"low-density-structure", 60},
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
            {"low-density-structure", 130},
            {"steel-plate", 270},
            {"copper-cable", 320},
            {"uranium-235", 160},
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
            {"rocket-control-unit", 80},
            {"low-density-structure", 150},
            {"advanced-circuit", 160},
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

local util = require("compatibilities.util")

--Compatibility section
util.ingredient_prereq(recipes[1], {
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["wood"] = {"resin", 200},
            ["electronic-circuit"] = {"basic-circuit-board", 30},
            ["iron-chest"] = {"solder", 75},
            ["small-lamp"] = {"rubber", 50},
            ["copper-cable"] = {"copper-cable", 100},
        }
    },
    {
        dependencies = {"angelspetrochem", "bobplates",},
        replacements = {
            ["rubber"] = {"tin-plate", 50},
            ["resin"] = {"wood", 200},
        }
    },
    {
        dependencies = {"angelspetrochem", "bobplates", "SeaBlockMetaPack"},
        replacements = {
            ["rubber"] = {"tin-plate", 50},
            ["resin"] = {"wood", 200},
        }
    },
    {
        dependencies = {"angelspetrochem", "Bio_Industries"},
        replacements = {
            {"rubber", 50}
        }
    },
    --SE-K2
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
util.ingredient_prereq(recipes[2], {
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 45},
            ["copper-cable"] = {"tinned-copper-cable", 75},
            {"insualted-cable", 60},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["iron-gear-wheel"] = {"steel-gear-wheel", 60},
        }
    },
    {
        dependencies = {"bobplates", "Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 100},
        }
    },
    --SE-K2
    {
        dependencies = {"space-exploration"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 30},
            ["copper-cable"] = {"motor", 10},
        }
    },
})
util.ingredient_prereq(recipes[3], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["electronic-circuit"] = {"roboport-antenna-1", 5},
            ["engine-unit"] = {"roboport-chargepad-1", 5},
            ["iron-plate"] = {"roboport-door-1", 5},
        }
    },
})
util.ingredient_prereq(recipes[4], {
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
util.ingredient_prereq(recipes[5], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["steel-chest"] = {"roboport-antenna-2", 5},
            ["battery"] = {"roboport-chargepad-2", 5},
            ["flying-robot-frame"] = {"roboport-door-2", 5},
        }
    },
})

util.ingredient_prereq(recipes[6], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["processing-unit"] = {"roboport-antenna-2", 10},
            ["electric-engine-unit"] = {"roboport-chargepad-2", 10},
            ["steel-plate"] = {"roboport-door-2", 10},
            ["lubricant"] = {"", 0},
        }
    },
})

util.ingredient_prereq(recipes[7], {
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["processing-unit"] = {"roboport-antenna-3", 5},
            ["uranium-235"] = {"roboport-chargepad-3", 5},
            ["iron-stick"] = {"roboport-door-3", 5},
            ["low-density-structure"] = {"", 0},
        }
    },
})
util.ingredient_prereq(recipes[8], {
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
util.ingredient_prereq(recipes[9], {
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
util.ingredient_prereq(recipes[10], {
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