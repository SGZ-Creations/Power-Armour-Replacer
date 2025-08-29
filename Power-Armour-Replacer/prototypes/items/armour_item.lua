local simulations = require("__base__.prototypes.factoriopedia-simulations")
local item_sounds = require("__base__.prototypes.item_sounds")
---@class data.SettingsStartup
local SS = settings.startup
--[[
% 40=0.4 or 105=1.05    
Flatt Resistance 500
Incoming Damage 2000
1. Damage Calculation (2000-1000)x(1 - 0.95) = 50
2. Damage Calculation (2000-1000)x(100 - 95) ÷ 100 = 50
]]

local power_armour = {
    { order = "aaz", inventory_bonus =  50, grid_width = 10,  grid_height = 10,  weightvalue= SS["ArmourWeight_01"].value, durability= SS["ArmourDurability_01"].value, icon = "__base__/graphics/icons/power-armor.png", },
    { order = "abz", inventory_bonus = 100, grid_width = 20,  grid_height = 20,  weightvalue= SS["ArmourWeight_02"].value, durability= SS["ArmourDurability_02"].value, icon = "__base__/graphics/icons/power-armor-mk2.png", },
    { order = "acz", inventory_bonus = 150, grid_width = 30,  grid_height = 30,  weightvalue= SS["ArmourWeight_03"].value, durability= SS["ArmourDurability_03"].value, icon = "__Power-Armour-Replacer__/graphics/icons/armour/icon-power-armour-mk3.png", },
    { order = "adz", inventory_bonus = 200, grid_width = 40,  grid_height = 40,  weightvalue= SS["ArmourWeight_04"].value, durability= SS["ArmourDurability_04"].value, icon = "__Power-Armour-Replacer__/graphics/icons/armour/icon-power-armour-mk4.png", },
    { order = "aez", inventory_bonus = 250, grid_width = 50,  grid_height = 50,  weightvalue= SS["ArmourWeight_05"].value, durability= SS["ArmourDurability_05"].value, icon = "__Power-Armour-Replacer__/graphics/icons/armour/icon-power-armour-mk5.png", },
    { order = "afz", inventory_bonus = 300, grid_width = 60,  grid_height = 60,  weightvalue= SS["ArmourWeight_06"].value, durability= SS["ArmourDurability_06"].value, icon = "__Power-Armour-Replacer__/graphics/icons/armour/icon-power-armour-mk6.png", }, --6
    { order = "agz", inventory_bonus = 350, grid_width = 70,  grid_height = 70,  weightvalue= SS["ArmourWeight_07"].value, durability= SS["ArmourDurability_07"].value, icon = "__Power-Armour-Replacer__/graphics/icons/armour/icon-power-armour-mk5.png", }, --7
    { order = "ahz", inventory_bonus = 400, grid_width = 80,  grid_height = 80,  weightvalue= SS["ArmourWeight_08"].value, durability= SS["ArmourDurability_08"].value, icon = "__Power-Armour-Replacer__/graphics/icons/armour/icon-power-armour-mk5.png", }, --8
    { order = "aiz", inventory_bonus = 450, grid_width = 90,  grid_height = 90,  weightvalue= SS["ArmourWeight_09"].value, durability= SS["ArmourDurability_09"].value, icon = "__Power-Armour-Replacer__/graphics/icons/armour/icon-power-armour-mk5.png", }, --9
    { order = "ajz", inventory_bonus = 500, grid_width = 100, grid_height = 100, weightvalue= SS["ArmourWeight_10"].value, durability= SS["ArmourDurability_10"].value, icon = "__Power-Armour-Replacer__/graphics/icons/armour/icon-power-armour-mk5.png", }, --10
}

local resistances = {
    -- Vanilla               1,   2,   3,   4,   5,   6,   7,   8,   9,   10,
    physical_decrease  = {  20,  40,  60,  80, 100, 120, 140, 160, 180,  200 },
    physical_percent   = {   5,  15,  25,  35,  45,  55,  65,  75,  85,   95 },--p
    acid_decrease      = {  50, 100, 150, 200, 250, 300, 350, 400, 450,  500 },
    acid_percent       = {   5,  15,  25,  35,  45,  55,  65,  75,  85,   95 },--p
    explosion_decrease = { 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000 },
    explosion_percent  = {   5,  15,  25,  35,  45,  55,  65,  75,  85,   95 },--p
    fire_decrease      = {  30,  60,  90, 120, 150, 180, 210, 240, 270,  300 },
    fire_percent       = {  10,  20,  30,  40,  50,  60,  70,  80,  90,  100 },--p
    poison_decrease    = {  20,  40,  60,  80, 100, 120, 140, 160, 180,  200 },
    poison_percent     = {  15,  25,  35,  45,  55,  65,  75,  95, 105,  115 },--p
    electric_decrease  = {  30,  40,  50,  60,  70,  80,  90, 100, 110,  120 },
    electric_percent   = {  20,  40,  60,  80, 100, 120, 140, 160, 180,  200 },--p
    impact_decrease    = {  50, 100, 150, 200, 250, 300, 350, 400, 450,  500 },
    impact_percent     = {   5,  15,  25,  35,  45,  55,  65,  75,  85,   95 },--p
    laser_decrease     = {  11,  22,  33,  44,  55,  66,  77,  88,  99,  110 },
    laser_percent      = {   5,  15,  25,  35,  45,  55,  65,  75,  85,   95 },--p

    -- Bobs Warfare          1,   2,   3,   4,   5,   6,   7,   8,   9,   10,
    plasma_decrease    = { 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000 },
    plasma_percent     = {   5,  15,  25,  35,  45,  55,  65,  75,  85,   95 },--p
    pierce_decrease    = { 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000 },
    pierce_percent     = {   5,  15,  25,  35,  45,  55,  65,  75,  85,   95 },--p

	-- other future mod
}

for tier, equipment in pairs(power_armour) do
    local equipment_name = "par-armour-mk" .. tier
    local equipment_grid_name = "par-a" .. tier .. "-equipment-grid"
    local equipment_order = equipment.order .. "[par-armour-mk" .. tier .. "]-ab[armour-replacer]"

    ---@type data.ArmorPrototype
    local equipment_armor = {
        name = equipment_name,
        type = "armor",
        icon = equipment.icon,
        auto_recycle = false,
        icon_size = 64,
        resistances = {
            {
                type = "physical",
                decrease = resistances.physical_decrease[tier],
                percent = resistances.physical_percent[tier],
            },
            {
                type = "acid",
                decrease = resistances.acid_decrease[tier],
                percent = resistances.acid_percent[tier],
            },
            {
                type = "explosion",
                decrease = resistances.explosion_decrease[tier],
                percent = resistances.explosion_percent[tier],
            },
            {
                type = "fire",
                decrease = resistances.fire_decrease[tier],
                percent = resistances.fire_percent[tier],
            },
            {
                type = "electric",
                decrease = resistances.electric_decrease[tier],
                percent = resistances.electric_percent[tier],
            },
            {
                type = "impact",
                decrease = resistances.impact_decrease[tier],
                percent = resistances.impact_percent[tier],
            },
            {
                type = "laser",
                decrease = resistances.laser_decrease[tier],
                percent = resistances.laser_percent[tier],
            },
            {
                type = "poison",
                decrease = resistances.poison_decrease[tier],
                percent = resistances.poison_percent[tier],
            },
        },
        subgroup = "PAR_Armour",
        order = equipment_order,
        factoriopedia_simulation = simulations.factoriopedia_power_armor_mk2,
        inventory_move_sound = item_sounds.armor_large_inventory_move,
        pick_sound = item_sounds.armor_large_inventory_pickup,
        drop_sound = item_sounds.armor_large_inventory_move,
        stack_size = 1,
        weight = equipment.weightvalue,
        equipment_grid = equipment_grid_name, -- disable to removes quality. now make a setting or function that tells if setting =  grids H-W 0 then remove grid entirely. 
        inventory_size_bonus = equipment.inventory_bonus,
        open_sound = { filename = "__base__/sound/armor-open.ogg", volume = 1 },
        close_sound = { filename = "__base__/sound/armor-close.ogg", volume = 1 }
    }

    if SS["StringDurability"].value == "ArmourdurabilityOFF" then
        equipment_armor.infinite = true
    elseif SS["StringDurability"].value == "ArmourDurabilityAll" then
        equipment_armor.durability = SS["SingleArmourDurabilitySetting"].value
    elseif  SS["StringDurability"].value == "ArmourDurabilitySolo" then
        equipment_armor.durability = equipment.durability
    end

    if mods["bobenemies"] then
        table.insert(equipment_armor.resistances, {
            type = "bob-plasma",
            decrease = resistances.plasma_decrease[tier],
            percent = resistances.plasma_percent[tier],
        })

        table.insert(equipment_armor.resistances, {
            type = "bob-pierce",
            decrease = resistances.pierce_decrease[tier],
            percent = resistances.pierce_percent[tier],
        })
    end

    ---@type data.EquipmentGridPrototype
    local equipment_grid = {
        name = equipment_grid_name,
        type = "equipment-grid",
        equipment_categories = {"armor"},
        width = equipment.grid_width,
        height = equipment.grid_height,
    }

    data:extend({
        equipment_armor,
        equipment_grid
    })
end