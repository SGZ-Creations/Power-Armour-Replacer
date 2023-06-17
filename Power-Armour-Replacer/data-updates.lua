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
    [{"bobplate", "angelssmelting"}] = {
        ["armour_1"] = {
            "angels-bronze-smelting-1",
        },
        ["armour_3"] = {
            ["advanced-electronics"] = "angels-brass-smelting-1",
        },
        ["armour_7"] = {
            ["angels-cobalt-steel-smelting-1"] = "cobalt-processing",
            ["low-density-structure"] = "cobalt-processing",
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
}
-- Hey if u came here to remove the reserch. Note i have added items from this reserch to craft it too.
-- Also i suggest u download "Clowns Sicence" if u haven't. Before u remove that would make it easier to unlock.