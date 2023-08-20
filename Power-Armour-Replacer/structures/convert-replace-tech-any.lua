--[[ 
Hey if u came here to remove the reserch. Note i have added items from this reserch to craft it too.
Also i suggest u download "Clowns Sicence" if u haven't. Before u remove anything. As that would make it easier to unlock.
]]
-- Compatibility files
local compat = require("compatibilities.mods-compat")

compat.update_technologies{
  ["base"] = {
    ["spidertron"] = {
      ["fusion-reactor_1"] = "fusion-reactor_5",
      ["exoskeleton_1"] = "exoskeleton_5",
    },
  },

  ["space-spidertron"] = {
    ["spidertron"] = {
      "no-power-equipment_mk2",
    }
  },
--[[
  ["space-exploration"] = {
    ["spidertron"] = {
      ["se-rtg-equipment"] = "fusion-reactor_5",
    },
  },
  [{"krastorio2", "space-exploration"}] = {
    ["worker-robot-speed-8"] = {
      ["se-rtg-equipment-2"] = "fusion-reactor_2",
    },  
  },
  [{"space-exploration", "spidertron-extended", "spidertron-extended-se"}] = {
    ["spidertronmk2-tech"] = {
      ["se-rtg-equipment-2"] = "fusion-reactor_2",
    }  
  },
  
  ]]
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

  ["bobpower"] = {
    ["laser_3"] = {
      "bob-heat-pipe-1",
    },
    ["laser_5"] = {
      ["nuclear-power"] = "bob-heat-pipe-2",
      "bob-heat-pipe-2",
    },
    ["laser_7"] = {
      "bob-heat-pipe-3"
    },
    ["laser_9"] = {
      "bob-heat-pipe-4"
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

  [{"bobrevamp", "bobplate",}] = {
    ["fusion-reactor_7"] = {
      "rtg",
    },
  },

  ["bobrevamp"] = {
    ["armour_8"] = {
      "heat-shield",
    },
    ["laser_7"] = {
      "heat-shield",
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

  ["exotic-industries"] = {
    ["armour_1"] = {
      ["automation"] = "logistics",
    },
  },

  ["248k"] = {
    ["armour_3"] = {
      "el_caster_tech",
    },
    ["battery_3"] = {
      "el_lithium_tech",
    },
    ["nv-bi_mk1"] = {
      "el_lithium_tech",
    },
  },

  [{"248k", "angelssmelting"}] = {
    ["armour_3"] = {
      ["angels-aluminium-smelting-1"] = "el_caster_tech",
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
      "electronics",
      "ir-steel-milestone",
    },
    ["laser_5"] = {
    },
  },

  ["SpaceMod"] = {
    ["protection-fields"] = {
      "shield_10",
    },
    ["fusion-reactor"] = {
      "fusion-reactor_10",
    }
  },

  [{"SpaceMod", "boblibrary", "bobplates", "bobmodules", "bobelectronics", "boblogistics", "bobtech", "bobequipment",}] = {
    ["protection-fields"] = {
      ["shield_10"] = "shield_6",
    },
    ["fusion-reactor"] = {
      ["fusion-reactor_10"] = "fusion-reactor_4",
    }
  },
}