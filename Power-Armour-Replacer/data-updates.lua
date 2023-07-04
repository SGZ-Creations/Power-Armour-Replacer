-- Compatibility files
local compat = require("compatibilities.mods-compat")
--local remove "remove" tech

local function recursive_add(name, n)
    local tech = data.raw.technology[name]
    if not tech then return end
    tech = tech.normal or tech
    table.insert(tech.unit.ingredients, {"space-science-pack", n})
    local i = name:find("%d")
    name = name:sub(1, i-1)..tonumber(name:sub(i)+1)
    recursive_add(name, n + 1)
end

local function add_space_science(names)
    for _, name in pairs(names) do
        recursive_add(name, 1)
    end
end

if settings.startup["hard_science_required"].value then

    add_space_science{
        "armour_6",
        "battery_6",
        "fusion-reactor_6",
        "exoskeleton_5",
        "laser_6",
        "solar_6",
        "roboport_6",
        "shield_6",
    }
end

compat.update_technologies{
    ["base"] = {
        ["spidertron"] = {
            ["fusion-reactor_1"] = "fusion-reactor_5",
            ["exoskeleton_1"] = "exoskeleton_5",
        },
    },
    ["boblogistics"] = {
        ["roboport_3"] = {
            "bob-robo-modular-1"
        },
        ["roboport_5"] = {
            "bob-robo-modular-2"
        },
        ["roboport_7"] = {
            "bob-robo-modular-3"
        },
        ["roboport_9"] = {
            "bob-robo-modular-4"
        },
    },
    ["bobelectronics"] = {
        ["laser_3"] = {
            ["advanced-electronics"] = "electronics"
        },
        ["laser_4"] = {
            ["advanced-electronics"] = "gem-processing-2"
        },
        ["laser_5"] = {
            "advanced-electronics"
        },
        ["battery_3"] = {
            ["advanced-electronics"] = "electronics"
        },
        ["battery_5"] = {
            "advanced-electronics"
        },
        ["armour_3"] = {
            ["advanced-electronics"] = "electronics"
        },
        ["armour_5"] = {
            ["advanced-electronics-2"] = "advanced-electronics"
        },
        ["armour_7"] = {
            "advanced-electronics-2"
        },
        ["armour_9"] = {
            "advanced-electronics-3"
        },
    },
    ["bobwarfare"] = {
        ["armour_5"] = {
            ["uranium-processing"] = "bob-armor-making-3"
        },
        ["armour_8"] = {
            "bob-armor-making-4"
        },
    },
    ["bobrevamp"] = {
        ["armour_8"] = {
            "heat-shield",
        },
        ["exoskeleton_4"] = {

        },
    },
    [{"bobplate", "angelssmelting"}] = {
        ["armour_1"] = {
            "angels-bronze-smelting-1",
        },
        ["armour_3"] = {
            ["advanced-electronics"] = "angels-brass-smelting-1",
        },
        ["armour_7"] = {
            ["low-density-structure"] = "cobalt-processing",
        },
    },
    ["bobplates"] = {
        ["armour_2"] = {
            ["electronics"] = "automation",
        },
        ["armour_3"] = {
            ["plastics"] = "zinc-processing",
            "aluminium-processing",
            "cobalt-processing",
        },
        ["armour_4"] = {
            ["advanced-electronics"] = "invar-processing"
        },
        ["armour_5"] = {
            ["electric-engine"] = "gem-processing-2"
        },
        ["armour_6"] = {
            ["circuit-network"] = "titanium-processing",
            ["advanced-electronics-3"] = "electric-engine",
            "battery-2",
        },
        ["armour_7"] = {
            ["rocket-control-unit"] = "tungsten-processing",
            "ceramics",
        },
        ["armour_8"] = {
            "battery-3",
            "low-density-structure"
        },
        ["armour_9"] = {
            "nitinol-processing",
        },
        ["armour_10"] = {
            "rocket-control-unit",
        },
    },
    ["bobpower"] = {
        ["laser_3"] = {
            "bob-heat-pipe-1",
        },
        ["laser_5"] = {
            ["nuclear-power"] = "bob-heat-pipe-2",
        },
        ["laser_7"] = {
            "bob-heat-pipe-3"
        },
        ["laser_9"] = {
            "bob-heat-pipe-4"
        },
    },
    ["angelssmelting"] = {
        ["armour_1"] = {
            "angels-solder-smelting-1",
        },
        ["armour_2"] = {
            "angels-steel-smelting-1",
        },
        ["armour_3"] = {
            ["zinc-processing"] = "angels-stone-smelting-1",
            ["cobalt-processing"] = "angels-lead-smelting-2",
            ["aluminium-processing"] = "angels-aluminium-smelting-1",
        },
        ["armour_4"] = {
            "angels-silver-smelting-1",
            "angels-stone-smelting-2",
        },
        ["armour_5"] = {
            "plastic-1",
        },
        ["armour_6"] = {
            ["rocket-fuel"] = "angels-titanium-smelting-1",
            ["titanium-processing"] = "angels-titanium-smelting-1",
            ["battery-2"] = "angels-glass-smelting-2",
            "angels-gold-smelting-1"
        },
        ["armour_7"] = {
           ["tungsten-processing"] = "angels-tungsten-smelting-1",
           ["low-density-structure"] = "angels-cobalt-steel-smelting-1"
        },
        ["armour_9"] = {
            ["nitinol-processing"] = "angels-nitinol-smelting-1",
            "angels-stone-smelting-3"
        },
        ["exoskeleton_3"] = {
            "angels-chrome-smelting-1"
        },
    },
    ["angelspetrochem"] = {
        ["armour_4"] = {
            
        },
    },
    ["Clowns-Processing"] = {
        ["armour_10"] = {
            "advanced-depleted-uranium-smelting-1",
        },
        ["exoskeleton_4"] = {
            "advanced-osmium-smelting",
        },
        ["exoskeleton_5"] = {
            "advanced-depleted-uranium-smelting-1",
        },
    },
    ["Darkstar_utilities_fixed"] = {
        ["laser_5"] = {
            "laser-cores",
        },
    },
    ["248k"] = {
        ["armour_3"] = {
            ["angels-aluminium-smelting-1"] = "el_caster_tech",
            "el_caster_tech",
        },
        ["battery_3"] = {
            "el_lithium_tech",
        },
        ["nv-bi_mk1"] = {
            "el_lithium_tech",
        },
    },
    ["IndustrialRevolution3"] = {
        ["armour_1"] = {
            ["automation"] = "ir-bronze-forestry",
        },
        ["armour_2"] = {
            ["electronics"] = "ir-iron-milestone",
        },
        ["armour_3"] = {
            ["advanced-electronics"] = "electronics",
        },
        ["fusion-reactor_2"] = {
            "ir-iron-milestone",
        },
        ["fusion-reactor_4"] = {
            ["electronics"] = "ir-iron-milestone",
        },
        ["battery_1"] = {
            ["ir-steel-milestone"] = "ir-bronze-milestone"
        },
        ["battery_2"] = {
            "ir-iron-milestone"
        },
        ["battery_3"] = {
            ["advanced-electronics"] = "electronics",
            "ir-steel-milestone",
        },
        ["laser_3"] = {
            ["laser"] = "electronics",
            "ir-steel-milestone",
        },
        ["laser_5"] = {
            ["nuclear-power"] = "laser",
        },
    },
    ["SpaceMod"] = {
        ["protection-fields"] = {
            ["bob-energy-shield-equipment-6"] = "shield_6",
        }
    }
}
-- Hey if u came here to remove the reserch. Note i have added items from this reserch to craft it too.
-- Also i suggest u download "Clowns Sicence" if u haven't. Before u remove that would make it easier to unlock.


compat.update_ingredients(data.raw.recipe["spidertron"], {
    {
        dependencies = {"base"},
        replacements = {
            ["f_mk1"] = {"f_mk5", 2},
            ["e_mk1"] = {"e_mk5", 4},
        }
    },
    {
        dependencies = {"base", "bobrevamp"},
        replacements = {
            ["f_mk5"] = {"rtg", 2},
            ["e_mk5"] = {"", 0},
            
        }
    },
})
--[[
compat.update_ingredients(data.raw.recipe["cannon-spidertron"], {
    {
        dependencies = {"Cannon_Spidertron"},
        replacements = {
            ["f_mk1"] = {"f_mk5", 2},
            ["e_mk1"] = {"e_mk5", 4},
        }
    },
})
compat.update_ingredients(data.raw.recipe["ss-space-spidertron"], {
    {
        dependencies = {"space-spidertron"},
        replacements = {
            ["bi_mk1"] = {"bi_mk2", 4},
            ["belt-immunity-equipment"] = {"bi_mk2", 4},
        }
    },
})
compat.update_ingredients(data.raw.recipe["artillery-spidertron"], {
    {
        dependencies = {"artillery-spidertron"},
        replacements = {
            ["f_mk1"] = {"f_mk5", 2},
            ["e_mk1"] = {"e_mk5", 4},
        }
    },
})
]]
compat.update_ingredients(data.raw.recipe["fusion-reactor"], {
    {
        dependencies = {"SpaceMod",},
        replacements = {
            ["f_mk1"] = {"f_mk4", 40},
        }
    },
})


compat.update_ingredients(data.raw.recipe["protection-field"],
{
    {
        dependencies = {"SpaceMod"},
        replacements = {
            ["s_mk2"] = {"s_mk6", 1000},
        }
    },
})
--[[
compat.update_ingredients(data.raw.recipe["protection-field-goopless"], {
    {
        dependencies = {"SpaceMod", "bobmodules",},
        replacements = {
            ["s_mk1"] = {"s_mk3", 1000},
        }
    },
})
--[[
if mods["Nanobots"] then
    local tech_eff = data.raw.technology["nv-bi_mk1"].effects
        table.add(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-feeder"}),
        table.add(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-nanointerface"}),
        table.add(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-launcher"}),
        table.add(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-trees"}),
        table.add(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-items"}),
end

if mods["Krastorio2"] then
    local tech_eff = data.raw.technology["nv-bi_mk1"].effects
        table.add(tech_eff,{type="unlock-recipe",recipe="vehicle-roboport"}),
end
]]