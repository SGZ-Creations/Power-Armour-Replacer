local icon_utils = require("structures.icon-utils")
--[[
-------------------------------------------------------------- icon_size,  Mipmaps,    Tier,
icons = icon_utils.create_equipment_technology_icon("battery",       256,        4,      5),
]]

data:extend({
    --Armor
    {
        type = "produce-achievement",
        name = "i-have-friends",
        order = "Aaa[par-armour-mk1]",
        item_product = "par-armour-mk1",
        amount = 10,
        steam_stats_name = "armor-production-overall",
        icon = "__base__/graphics/technology/power-armor.png",
        icon_size = 256,
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "i-have-friends-upgrade-1",
        order = "Aab[par-armour-mk5]",
        item_product = "par-armour-mk5",
        amount = 10,
        steam_stats_name = "armor-production-overall",
        icon = "__Power-Armour-Replacer__/graphics/technology/armour/power-armour-5.png",
        icon_size = 256,
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "i-have-friends-upgrade-2",
        order = "Aac[par-armour-mk10]",
        item_product = "par-armour-mk10",
        amount = 10,
        steam_stats_name = "armor-production-overall",
        icon = "__Power-Armour-Replacer__/graphics/technology/armour/power-armour-5.png",
        icon_size = 256,
        limited_to_one_game = true,
    },
    --Bateries
    {
        type = "produce-achievement",
        name = "mass-equipment-1_1-100-batteries",
        order = "Baa[par-battery-mk5]",
        item_product = "par-battery-mk5",
        amount = 100,
        steam_stats_name = "batteries-production-overall",
        icons = icon_utils.create_equipment_technology_icon("battery", 256, 5),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-1_2-1000-batteries",
        order = "Bab[par-battery-mk5]",
        item_product = "par-battery-mk5",
        amount = 1000,
        steam_stats_name = "batteries-production-overall",
        icons = icon_utils.create_equipment_technology_icon("battery", 256, 5),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-2_3-100-batteries",
        order = "Bac[par-battery-mk10]",
        item_product = "par-battery-mk10",
        amount = 100,
        steam_stats_name = "batteries-production-overall",
        icons = icon_utils.create_equipment_technology_icon("battery", 256, 10),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-2_4-1000-batteries",
        order = "Bad[par-battery-mk10]",
        item_product = "par-battery-mk10",
        amount = 1000,
        steam_stats_name = "batteries-production-overall",
        icons = icon_utils.create_equipment_technology_icon("battery", 256, 10),
        limited_to_one_game = true,
    },
    --Fusion
    {
        type = "produce-achievement",
        name = "mass-equipment-1_1-100-fusion",
        order = "Faa[par-fusion-reactor-mk5]",
        item_product = "par-fusion-reactor-mk5",
        amount = 100,
        steam_stats_name = "fusion-production-overall",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 5),
        icon_size = 256,
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-1_2-1000-fusion",
        order = "Fab[par-fusion-reactor-mk5]",
        item_product = "par-fusion-reactor-mk5",
        amount = 1000,
        steam_stats_name = "fusion-production-overall",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 5),
        icon_size = 256,
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-2_3-100-fusion",
        order = "Fac[par-fusion-reactor-mk10]",
        item_product = "par-fusion-reactor-mk10",
        amount = 100,
        steam_stats_name = "fusion-production-overall",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 10),
        icon_size = 256,
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-2_4-1000-fusion",
        order = "Fad[par-fusion-reactor-mk10]",
        item_product = "par-fusion-reactor-mk10",
        amount = 1000,
        steam_stats_name = "fusion-production-overall",
        icons = icon_utils.create_equipment_technology_icon("fusion-reactor", 256, 10),
        icon_size = 256,
        limited_to_one_game = true,
    },
    --Damage
    {
        type = "player-damaged-achievement",
        name = "the-undying-1",
        order = "Caa[exploration]-g[golem]",
        should_survive = true,
        minimum_damage = 500000,
        steam_stats_name = "surived-damage-in-one-hit",
        icon = "__base__/graphics/achievement/golem.png",
        icon_size = 128,
        limited_to_one_game = true,
    },
    {
        type = "player-damaged-achievement",
        name = "the-undying-2",
        order = "Cab[exploration]-g[golem]",
        should_survive = true,
        minimum_damage = 1000000,
        steam_stats_name = "surived-damage-in-one-hit",
        icon = "__base__/graphics/achievement/golem.png",
        icon_size = 128,
        limited_to_one_game = true,
    },
    {
        type = "player-damaged-achievement",
        name = "the-undying-3",
        order = "Cac[exploration]-g[golem]",
        should_survive = true,
        minimum_damage = 5000000,
        steam_stats_name = "surived-damage-in-one-hit",
        icon = "__base__/graphics/achievement/golem.png",
        icon_size = 128,
        limited_to_one_game = true,
    },
    --laser
    {
        type = "produce-achievement",
        name = "mass-equipment-1_1-100-laser",
        order = "Laa[par-laser-mk5]",
        item_product = "par-laser-mk5",
        amount = 100,
        steam_stats_name = "roboport-production-overall",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 5),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-1_2-1000-laser",
        order = "Lab[par-laser-mk5]",
        item_product = "par-laser-mk5",
        amount = 1000,
        steam_stats_name = "fusion-production-overall",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 5),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-2_1-100-laser",
        order = "Lac[par-laser-mk10]",
        item_product = "par-laser-mk10",
        amount = 100,
        steam_stats_name = "roboport-production-overall",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 10),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-2_2-1000-laser",
        order = "Lad[par-laser-mk10]",
        item_product = "par-laser-mk10",
        amount = 1000,
        steam_stats_name = "roboport-production-overall",
        icons = icon_utils.create_equipment_technology_icon("laser-defense", 256, 10),
        limited_to_one_game = true,
    },
    --roboport
    {
        type = "produce-achievement",
        name = "mass-equipment-1_1-100-roboport",
        order = "Raa[par-roboport-mk5]",
        item_product = "par-roboport-mk5",
        amount = 100,
        steam_stats_name = "roboport-production-overall",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-1", 256, 5),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-1_2-1000-roboport",
        order = "Rab[par-roboport-mk5]",
        item_product = "par-roboport-mk5",
        amount = 1000,
        steam_stats_name = "fusion-production-overall",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-1", 256, 5),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-2_1-100-roboport",
        order = "Rac[par-roboport-mk10]",
        item_product = "par-roboport-mk10",
        amount = 100,
        steam_stats_name = "roboport-production-overall",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-2", 256, 10),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-2_2-1000-roboport",
        order = "Rad[par-roboport-mk10]",
        item_product = "par-roboport-mk10",
        amount = 1000,
        steam_stats_name = "roboport-production-overall",
        icons = icon_utils.create_equipment_technology_icon("personal-roboport-2", 256, 10),
        limited_to_one_game = true,
    },
    --Shield
    {
        type = "produce-achievement",
        name = "mass-equipment-1_1-100-shield",
        order = "Saa[par-shield-mk5]",
        item_product = "par-shield-mk5",
        amount = 100,
        steam_stats_name = "shield-production-overall",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 5),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-1_2-1000-shield",
        order = "Sab[par-shield-mk5]",
        item_product = "par-shield-mk5",
        amount = 1000,
        steam_stats_name = "shield-production-overall",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 5),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-2_3-100-shield",
        order = "Sac[par-shield-mk10]",
        item_product = "par-shield-mk10",
        amount = 100,
        steam_stats_name = "shield-production-overall",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 10),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-2_4-1000-shield",
        order = "Sad[par-shield-mk10]",
        item_product = "par-shield-mk10",
        amount = 1000,
        steam_stats_name = "shield-production-overall",
        icons = icon_utils.create_equipment_technology_icon("energy-shield", 256, 10),
        limited_to_one_game = true,
    },
    --Solar
    {
        type = "produce-achievement",
        name = "mass-equipment-1_1-100-solar",
        order = "PSaa[par-solar-panel-mk5]",
        item_product = "par-solar-panel-mk5",
        amount = 100,
        steam_stats_name = "roboport-production-overall",
        icons = icon_utils.create_equipment_technology_icon("solar-panel", 256, 5),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-1_2-1000-solar",
        order = "PSab[par-solar-panel-mk5]",
        item_product = "par-solar-panel-mk5",
        amount = 1000,
        steam_stats_name = "fusion-production-overall",
        icons = icon_utils.create_equipment_technology_icon("solar-panel", 256, 5),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-2_1-100-solar",
        order = "PSac[par-solar-panel-mk10]",
        item_product = "par-solar-panel-mk10",
        amount = 100,
        steam_stats_name = "roboport-production-overall",
        icons = icon_utils.create_equipment_technology_icon("solar-panel", 256, 10),
        limited_to_one_game = true,
    },
    {
        type = "produce-achievement",
        name = "mass-equipment-2_2-1000-solar",
        order = "PSad[par-solar-panel-mk10]",
        item_product = "par-solar-panel-mk10",
        amount = 1000,
        steam_stats_name = "roboport-production-overall",
        icons = icon_utils.create_equipment_technology_icon("solar-panel", 256, 10),
        limited_to_one_game = true,
    },
})