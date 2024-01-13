local power_armour_equipment = {
    { order = "aaz", inventory_bonus =  50, grid_width = 10,  grid_height = 10,  icon = "__base__/graphics/icons/power-armor.png", },
    { order = "abz", inventory_bonus = 100, grid_width = 20,  grid_height = 20,  icon = "__base__/graphics/icons/power-armor-mk2.png", },
    { order = "acz", inventory_bonus = 150, grid_width = 30,  grid_height = 30,  icon = "__Power-Armour-Replacer__/graphics/icons/armour/power-armour-mk3.png", },
    { order = "adz", inventory_bonus = 200, grid_width = 40,  grid_height = 40,  icon = "__Power-Armour-Replacer__/graphics/icons/armour/power-armour-mk4.png", },
    { order = "aez", inventory_bonus = 250, grid_width = 50,  grid_height = 50,  icon = "__Power-Armour-Replacer__/graphics/icons/armour/power-armour-mk5.png", },
    { order = "afz", inventory_bonus = 300, grid_width = 60,  grid_height = 60,  icon = "__Power-Armour-Replacer__/graphics/icons/armour/power-armour-mk5.png", }, --6
    { order = "agz", inventory_bonus = 350, grid_width = 70,  grid_height = 70,  icon = "__Power-Armour-Replacer__/graphics/icons/armour/power-armour-mk5.png", }, --7
    { order = "ahz", inventory_bonus = 400, grid_width = 80,  grid_height = 80,  icon = "__Power-Armour-Replacer__/graphics/icons/armour/power-armour-mk5.png", }, --8
    { order = "aiz", inventory_bonus = 450, grid_width = 90,  grid_height = 90,  icon = "__Power-Armour-Replacer__/graphics/icons/armour/power-armour-mk5.png", }, --9
    { order = "ajz", inventory_bonus = 500, grid_width = 100, grid_height = 100, icon = "__Power-Armour-Replacer__/graphics/icons/armour/power-armour-mk5.png", }, --10
}

local resistances = {
    -- Vanilla               1,   2,   3,   4,   5,   6,   7,   8,   9,   10,
    physical_decrease  = {  20,  40,  60,  80, 100, 120, 140, 160, 180,  200 },
    physical_percent   = {  10,  20,  30,  40,  50,  60,  70,  80,  90,  100 },
    acid_decrease      = {  50, 100, 150, 200, 250, 300, 350, 400, 450,  500 },
    acid_percent       = {  15,  30,  45,  60,  75,  80,  85,  90, 100,  105 },
    explosion_decrease = { 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000 },
    explosion_percent  = {  15,  30,  45,  60,  75, 100,  24,  26,  28,   30 },
    fire_decrease      = {  30,  60,  90, 120, 150, 180, 210, 240, 270,  300 },
    fire_percent       = {  10,  20,  30,  40,  50,  60,  70,  80,  90,  100 },
    poison_decrease    = {  20,  40,  60,  80, 100, 120, 140, 160, 180,  200 },
    poison_percent     = {  25,  30,  35,  40,  45,  50,  55,  60,  65,   70 },
    electric_decrease  = {  30,  40,  50,  60,  70,  80,  90, 100, 110,  120 },
    electric_percent   = {  12,  24,  36,  48,  60,  72,  84,  96, 108,  120 },
    impact_decrease    = {  50, 100, 150, 200, 250, 300, 350, 400, 450,  500 },
    impact_percent     = {   5,  10,  15,  20,  25,  30,  35,  40,  45,   50 },
    laser_decrease     = {  11,  22,  33,  44,  55,  66,  77,  88,  99,  111 },
    laser_percent      = {   5,  15,  25,  35,  45,  55,  65,  75,  85,   95 },

    -- Bobs Warfare          1,   2,   3,   4,   5,   6,   7,   8,   9,   10,
    plasma_decrease    = {  15,  30,  45,  60,  75, 100, 115, 130, 145,  160 },
    plasma_percent     = {  50,  55,  60,  65,  70,  75,  80,  85,  90,   95 },
    pierce_decrease    = { 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000 },
    pierce_percent     = {  25,  25,  50,  50,  75,  75,  85,  85, 110,  110 },

	-- other future mod
}

for tier, equipment in pairs(power_armour_equipment) do
    local equipment_name = "par-armour-mk" .. tier
    local equipment_grid_name = "par-a" .. tier .. "-equipment-grid"
    local equipment_order = equipment.order .. "[par-armour-mk" .. tier .. "]-ab[armour-replacer]"

    ---@type data.ArmorPrototype
    local equipment_armor = {
        name = equipment_name,
        type = "armor",
        icon = equipment.icon,
        icon_size = 64,
        icon_mipmaps = 4,
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
        subgroup = "replacer_item",
        order = equipment_order,
        stack_size = 1,
        infinite = true,
        equipment_grid = equipment_grid_name,
        inventory_size_bonus = equipment.inventory_bonus,
        open_sound = { filename = "__base__/sound/armor-open.ogg", volume = 1 },
        close_sound = { filename = "__base__/sound/armor-close.ogg", volume = 1 }
    }

    if mods["bobwarfare"] then
        table.insert(equipment_armor.resistances, {
            type = "plasma",
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