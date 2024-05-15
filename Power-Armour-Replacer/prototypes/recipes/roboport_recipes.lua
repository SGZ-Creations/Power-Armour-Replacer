local recipes = {
    {
        type = "recipe",
        name = "par-roboport-mk1",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"wood", 200},
            {"iron-chest", 5},
            {"electronic-circuit", 75},
            {"copper-cable", 150},
            {"small-lamp", 10},
        },
        result = "par-roboport-mk1"
    },
    {
        type = "recipe",
        name = "par-roboport-mk2",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"par-roboport-mk1", 1},
            {"electronic-circuit", 100},
            {"iron-gear-wheel", 125},
            {"copper-cable", 175},
        },
        result = "par-roboport-mk2"
    },
    {
        type = "recipe",
        name = "par-roboport-mk3",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {"par-roboport-mk2", 1},
            {"electronic-circuit", 125},
            {"engine-unit", 80},
            {"iron-plate", 100},
        },
        result = "par-roboport-mk3"
    },
    {
        type = "recipe",
        name = "par-roboport-mk4",
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"par-roboport-mk3", 1},
            {"electronic-circuit", 130},
            {"engine-unit", 140},
            {"steel-plate", 160},
            {"iron-gear-wheel", 170},
        },
        result = "par-roboport-mk4"
    },
    {
        type = "recipe",
        name = "par-roboport-mk5",
        enabled = false,
        energy_required = 50,
        ingredients = {
            {"par-roboport-mk4", 1},
            {"steel-chest", 30},
            {"flying-robot-frame", 65},
            {"battery", 45},
        },
        result = "par-roboport-mk5"
    },
    {
        type = "recipe",
        name = "par-roboport-mk6",
        enabled = false,
        energy_required = 60,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-roboport-mk5", 1},
            {"processing-unit", 50},
            {"electric-engine-unit", 120},
            {"steel-plate", 230},
            {type="fluid", name="lubricant", amount=300},
        },
        result = "par-roboport-mk6"
    },
    {
        type = "recipe",
        name = "par-roboport-mk7",
        enabled = false,
        energy_required = 70,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-roboport-mk6", 1},
            {"processing-unit", 120},
            {"uranium-235", 50},
            {"iron-stick", 270},
            {"low-density-structure", 60},
        },
        result = "par-roboport-mk7"
    },
    {
        type = "recipe",
        name = "par-roboport-mk8",
        enabled = false,
        energy_required = 80,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-roboport-mk7", 1},
            {"low-density-structure", 130},
            {"steel-plate", 270},
            {"copper-cable", 320},
            {"uranium-235", 160},
        },
        result = "par-roboport-mk8"
    },
    {
        type = "recipe",
        name = "par-roboport-mk9",
        enabled = false,
        energy_required = 90,
        hide_from_player_crafting = true,
        category = "crafting-with-fluid",
        ingredients = {
            {"par-roboport-mk8", 1},
            {"rocket-control-unit", 80},
            {"low-density-structure", 150},
            {"advanced-circuit", 160},
            {type="fluid", name="lubricant", amount=600},
        },
        result = "par-roboport-mk9"
    },
    {
        type = "recipe",
        name = "par-roboport-mk10",
        enabled = false,
        energy_required = 100,
        hide_from_player_crafting = true,
        ingredients = {
            {"par-roboport-mk9", 1},
            {"low-density-structure", 196},
            {"rocket-control-unit", 164},
            {"processing-unit", 171},
        },
        result = "par-roboport-mk10"
    },
}

local util = require("compatibilities.util")

--Compatibility section
util.ingredient_prereq(recipes[1], {
    --0(Base recipe or item added ends up removed) return the amount of number with the amount of diffrent items being used
    --1(roboport-door), Applies to Bob's logistics mod.
    --2(roboport-antenna),
    --3(roboport-chargepad),  
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["wood"] = {"resin", 200},
            ["small-lamp"] = {"rubber", 150},
            ["electronic-circuit"] = {"basic-circuit-board", 100},
            ["copper-cable"] = {"insualted-cable", 100},
            ["iron-chest"] = {"steel-gear-wheel", 100},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 100},
            ["small-lamp"] = {"carbon", 100},
            ["wood"] = {"resin", 150},
            ["iron-chest"] = {"carbon", 100},
            {"stone-brick", 50},
            {"carbon", 100},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["iron-chest"] = {"solder", 150},
            ["copper-cable"] = {"tinned-copper-cable", 100},
            ["insualted-cable"] = {"tinned-copper-cable", 100},
        }
    },
    {
        dependencies = {"angelspetrochem", "bobplates",},
        replacements = {
            ["rubber"] = {"tin-plate", 100},
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
            {"rubber", 150}
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
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["small-lamp"] = {"copper-frame-large", 20},
            ["electronic-circuit"] = {"glass", 80},
            ["wood"] = {"rubber", 50},
            ["iron-chest"] = {"tin-plate", 100},
            {"copper-roboport-equipment", 1}
        }
    },
})
util.ingredient_prereq(recipes[2], {
    --0(Base recipe or item added ends up removed) return the amount of number with the amount of diffrent items being used
    --1(roboport-door), Applies to Bob's logistics mod.
    --2(roboport-antenna),
    --3(roboport-chargepad),  
    {
        dependencies = {"bobelectronics"},
        replacements = {
            ["electronic-circuit"] = {"basic-circuit-board", 200},
            {"insualted-cable", 180},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 200},
            ["iron-gear-wheel"] = {"steel-bearing", 100},
            {"carbon", 200},
        }
    },
    {
        dependencies = {"Darkstar_utilities_fixed"},
        replacements = {
            {"silicon", 200},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"tinned-copper-cable", 175},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["electronic-circuit"] = {"glass", 80},
            {"iron-plate-heavy", 60},
            {"copper-rotor", 60},
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
    --0(Base recipe or item added ends up removed) return the amount of number with the amount of diffrent items being used
    --1(roboport-door), Applies to Bob's logistics mod.
    --2(roboport-antenna),
    --3(roboport-chargepad),  
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 150},
            {"rubber", 150},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 150},
            {"rubber", 150},
            ["iron-plate"] = {"bronze-alloy", 150},
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["electronic-circuit"] = {"roboport-antenna-1", 5},
            ["engine-unit"] = {"roboport-chargepad-1", 5},
            ["iron-plate"] = {"roboport-door-1", 5},
            ["bronze-alloy"] = {"roboport-door-1", 5},
            ["rubber"] = {"", 0},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            ["electronic-circuit"] = {"computer-mk1", 100},
            {"iron-rotor", 20},
            {"gold-foil", 50},
        }
    },
})
util.ingredient_prereq(recipes[4], {
    --0(Base recipe or item added ends up removed) return the amount of number with the amount of diffrent items being used
    --1(roboport-door), Applies to Bob's logistics mod.
    --2(roboport-antenna),
    --3(roboport-chargepad),  
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 200},
            {"rubber", 200},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["electronic-circuit"] = {"electronic-circuit", 200},
            ["iron-gear-wheel"] = {"bronze-alloy", 200},
            ["steel-plate"] = {"brass-alloy", 200},
            {"rubber", 200},
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["electronic-circuit"] = {"roboport-antenna-1", 10},
            ["engine-unit"] = {"roboport-chargepad-1", 10},
            ["steel-plate"] = {"roboport-door-1", 10},
            ["brass-alloy"] = {"roboport-door-1", 10},
            ["iron-gear-wheel"] = {"", 0},
            ["bronze-alloy"] = {"", 0},
            ["rubber"] = {"", 0},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
        }
    },
})
util.ingredient_prereq(recipes[5], {
    --0(Base recipe or item added ends up removed) return the amount of number with the amount of diffrent items being used
    --1(roboport-door), Applies to Bob's logistics mod.
    --2(roboport-antenna),
    --3(roboport-chargepad),  
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["steel-chest"] = {"advanced-circuit", 250}, --2
            ["flying-robot-frame"] = {"insualted-cable", 250}, --1
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["steel-chest"] = {"advanced-circuit", 250}, --2
            ["insualted-cable"] = {"aluminium-plate", 200}, --1
            ["flying-robot-frame"] = {"aluminium-plate", 200}, --1
            ["battery"] = {"lithium-ion-battery", 250}, --3
            {"ceramic-bearing", 200}, --0
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["steel-chest"] = {"roboport-antenna-2", 5}, --2
            ["advanced-circuit"] = {"roboport-antenna-2", 5}, --2
            ["flying-robot-frame"] = {"roboport-door-2", 5}, --1
            ["insualted-cable"] = {"roboport-door-2", 200}, --1
            ["aluminium-plate"] = {"roboport-door-2", 5}, --1
            ["battery"] = {"roboport-chargepad-2", 5}, --3
            ["lithium-ion-battery"] = {"roboport-chargepad-2", 5}, --3
            ["ceramic-bearing"] = {"", 0}, --0
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
        }
    },
})

util.ingredient_prereq(recipes[6], {
    --0(Base recipe or item added ends up removed) return the amount of number with the amount of diffrent items being used
    --1(roboport-door), Applies to Bob's logistics mod.
    --2(roboport-antenna),
    --3(roboport-chargepad),  
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 300},
            ["lubricant"] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-circuit", 300},
            ["steel-plate"] = {"invar-alloy", 300},
            {"silicon-nitride", 300},
            ["lubricant"] = {"", 0},
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["electric-engine-unit"] = {"roboport-chargepad-2", 10},
            ["advanced-circuit"] = {"roboport-antenna-2", 10},
            ["processing-unit"] = {"roboport-antenna-2", 10},
            ["steel-plate"] = {"roboport-door-2", 10},
            ["invar-alloy"] = {"roboport-door-2", 10},
            ["silicon-nitride"] = {"", 0},
            ["lubricant"] = {"", 0},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
        }
    },
})

util.ingredient_prereq(recipes[7], {
    --0(Base recipe or item added ends up removed) return the amount of number with the amount of diffrent items being used
    --1(roboport-door), Applies to Bob's logistics mod.
    --2(roboport-antenna),
    --3(roboport-chargepad),  
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["uranium-235"] = {"insualted-cable", 350}, --3
            {"processing-unit", 350}, --2
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["uranium-235"] = {"titanium-plate", 350}, --3
            ["insualted-cable"] = {"titanium-plate", 350}, --3
            {"processing-unit", 350}, --2
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["iron-stick"] = {"solder-alloy", 100},--1
            {"gilded-copper-cable", 350},--0
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["processing-unit"] = {"roboport-antenna-3", 5}, --2
            ["uranium-235"] = {"roboport-chargepad-3", 5}, --3
            ["titanium-plate"] = {"roboport-chargepad-3", 5}, --3
            ["insualted-cable"] = {"roboport-chargepad-3", 5}, --3
            ["iron-stick"] = {"roboport-door-3", 5}, --1
            ["solder-alloy"] = {"roboport-door-3", 5}, --1
            ["low-density-structure"] = {"", 0}, --0
            ["gilded-copper-cable"] = {"", 0},--0
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
        }
    },
})
util.ingredient_prereq(recipes[8], {
    --0(Base recipe or item added ends up removed) return the amount of number with the amount of diffrent items being used
    --1(roboport-door), Applies to Bob's logistics mod.
    --2(roboport-antenna),
    --3(roboport-chargepad),  
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["uranium-235"] = {"rubber", 400}, --0
            {"processing-unit", 400}, --0
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["uranium-235"] = {"tungsten-plate", 400}, --0
            ["rubber"] = {"tungsten-plate", 400}, --0
            ["steel-plate"] = {"silver-plate", 400}, --3
            {"processing-unit", 400}, --0
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            ["copper-cable"] = {"gilded-copper-cable", 400}, --1
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["low-density-structure"] = {"roboport-antenna-3", 10}, --2
            ["steel-plate"] = {"roboport-chargepad-3", 10}, --3
            ["silver-plate"] = {"roboport-chargepad-3", 10}, --3
            ["copper-cable"] = {"roboport-door-3", 10}, --1
            ["gilded-copper-cable"] = {"roboport-door-3", 10}, --1
            ["uranium-235"] = {"", 0}, --0
            ["processing-unit"] = {"", 0}, --0
            ["tungsten-plate"] = {"", 0}, --0
            ["rubber"] = {"", 0}, --0
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
        }
    },
})
util.ingredient_prereq(recipes[9], {
    --0(Base recipe or item added ends up removed) return the amount of number with the amount of diffrent items being used
    --1(roboport-door), Applies to Bob's logistics mod.
    --2(roboport-antenna),
    --3(roboport-chargepad),  
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["advanced-circuit"] = {"advanced-processing-unit", 450},
            ["lubricant"] = {"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["advanced-circuit"] = {"advanced-processing-unit", 450},
            ["lubricant"] = {"", 0},
            {"copper-tungsten-alloy", 450},
            {"silicon-wafer", 450},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            {"solder", 300},
            {"tinned-copper-cable", 300},
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["rocket-control-unit"] = {"roboport-antenna-4", 5},
            ["low-density-structure"] = {"roboport-chargepad-4", 5},
            ["advanced-circuit"] = {"roboport-door-4", 5},
            ["advanced-processing-unit"] = {"roboport-door-4", 5},
            ["tinned-copper-cable"] = {"", 0},
            ["copper-tungsten-alloy"] = {"", 0},
            ["silicon-wafer"] = {"", 0},
            ["lubricant"] = {"", 0},
            ["solder"] = {"", 0},
        }
    },
    --IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
        }
    },
})
util.ingredient_prereq(recipes[10], {
    --0(Base recipe or item added ends up removed) return the amount of number with the amount of diffrent items being used
    --1(roboport-door), Applies to Bob's logistics mod.
    --2(roboport-antenna),
    --3(roboport-chargepad),  
    {
        dependencies = {"bobelectronics",},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 500},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            ["processing-unit"] = {"advanced-processing-unit", 500},
            {"silver-zinc-battery", 500},
            {"tungsten-carbide", 500},
            {"nitinol-alloy", 500},
        }
    },
    {
        dependencies = {"boblogistics"},
        replacements = {
            ["low-density-structure"] = {"roboport-antenna-4", 10},
            ["rocket-control-unit"] = {"roboport-chargepad-4", 10},
            ["advanced-processing-unit"] = {"roboport-door-4", 10},
            ["processing-unit"] = {"roboport-door-4", 10},
            ["silver-zinc-battery"] = {"", 0},
            ["tungsten-carbide"] = {"", 0},
            ["nitinol-alloy"] = {"", 0},
        }
    },
    --K2
    {
        dependencies = {"Krastorio2"},
        replacements = {
            ["rocket-control-unit"] = {"matter-cube", 2},
        }
    },
})

data:extend(recipes)