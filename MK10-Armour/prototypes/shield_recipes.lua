local recipes = {
    {
        type = "recipe",
        name = "s_mk1",
        ingredients = {
            {"iron-plate", 10},
        },
        result = "s_mk1"
    },
    {
        type = "recipe",
        name = "s_mk2",
        ingredients = {
            {"s_mk1", 1},

        },
        result = "s_mk2"
    },
    {
        type = "recipe",
        name = "s_mk3",
        ingredients = {
            {"s_mk2", 1},

        },
        result = "s_mk3"
    },
    {
        type = "recipe",
        name = "s_mk4",
        ingredients = {
            {"s_mk3", 1},

        },
        result = "s_mk4"
    },
    {
        type = "recipe",
        name = "s_mk5",
        ingredients = {
            {"s_mk4", 1},

        },
        result = "s_mk5"
    },
    {
        type = "recipe",
        name = "s_mk6",
        ingredients = {
            {"s_mk5", 1},

        },
        result = "s_mk6"
    },
    {
        type = "recipe",
        name = "s_mk7",
        ingredients = {
            {"s_mk6", 1},
            
            
            
            
        },
        result = "s_mk7"
    },
    {
        type = "recipe",
        name = "s_mk8",
        ingredients = {
            {"s_mk7", 1},
            
            
            
        },
        result = "s_mk8"
    },
    {
        type = "recipe",
        name = "s_mk9",
        ingredients = {
            {"s_mk8", 1},
            
            
            
            
        },
        result = "s_mk9"
    },
    {
        type = "recipe",
        name = "s_mk10",
        ingredients = {
            {"s_mk9", 1},
            
            
            
            
        },
        result = "s_mk10"
    },
}

local items = {
    {
        type = "armor",
        name = "s_mk1",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 128,
        stack_size = 1,
    },
    {
        type = "equipment",

        name = "s_mk2",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 128,
        stack_size = 1
    },
    {
        type = "energy-shield-equipment",
        name = "s_mk3",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 128,
        stack_size = 1
    },
    {
        type = "energy-shield-equipment",
        name = "s_mk4",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 128,
        stack_size = 1
    },
    {
        type = "energy-shield-equipment",
        name = "s_mk5",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 128,
        stack_size = 1
    },
    {
        type = "energy-shield-equipment",
        name = "s_mk6",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 128,
        stack_size = 1
    },
    {
        type = "energy-shield-equipment",
        name = "s_mk7",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 128,
        stack_size = 1
    },
    {
        type = "energy-shield-equipment",
        name = "s_mk8",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 128,
        stack_size = 1
    },
    {
        type = "energy-shield-equipment",
        name = "s_mk9",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 128,
        stack_size = 1
    },
    {
        type = "energy-shield-equipment",
        name = "s_mk10",
        icon = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        icon_size = 128,
        stack_size = 1
    },
}

data:extend(recipes)
data:extend(items)
