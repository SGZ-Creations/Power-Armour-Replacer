local recipes = {
    {
        type = "recipe",
        name = "f_mk1",
        energy_required = 40,
        ingredients = {
            {"advanced-circuit", 10},
            
            
            
            
        },
        result = "f_mk1"
    },
    {
        type = "recipe",
        name = "f_mk2",
        energy_required = 45,
        ingredients = {
            {"f_mk1",1},
            
            
            
            
        },
        result = "f_mk2"
    },
    {
        type = "recipe",
        name = "f_mk3",
        energy_required = 50,
        ingredients = {
            {"f_mk2",1},
            
            
            
            
        },
        result = "f_mk3"
    },
    {
        type = "recipe",
        name = "f_mk4",
        energy_required = 55,
        ingredients = {
            {"f_mk3",1},
            
            
            
            
        },
        result = "f_mk4"
    },
    {
        type = "recipe",
        name = "f_mk5",
        energy_required = 60,
        ingredients = {
            {"f_mk4",1},
            
            
            
            
        },
        result = "f_mk5"
    },
    {
        type = "recipe",
        name = "f_mk6",
        energy_required = 65,
        ingredients = {
            {"f_mk5",1},
            
            
            
            
        },
        result = "f_mk6"
    },
    {
        type = "recipe",
        name = "f_mk7",
        energy_required = 70,
        ingredients = {
            {"f_mk6",1},
            
            
            
            
        },
        result = "f_mk7"
    },
    {
        type = "recipe",
        name = "f_mk8",
        energy_required = 75,
        ingredients = {
            {"f_mk7",1},

        },
        result = "f_mk8"
    },
    {
        type = "recipe",
        name = "f_mk9",
        energy_required = 80,
        ingredients = {
            {"f_mk8", 1},

        },
        result = "f_mk9"
    },
    {
        type = "recipe",
        name = "f_mk10",
        energy_required = 85,
        ingredients = {
            {"f_mk9", 1},
        },
        result = "f_mk10"
    },
}

local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

function string.random(length)
    if length > 0 then
        return string.random(length - 1) .. charset:sub(math.random(1, 62), 1)
    else
        return ""
    end
end

local i = 1
while i < 11 do

    data:extend({ {
        type = "item",
        name = "f_mk" .. tostring(i),
        icon = "__base__/graphics/icons/fusion-reactor-equipment.png",
        icon_size = 64,
        stack_size = 200,
        order = "[Fusion Reactor]" .. tostring(i - 1) .. string.random(25),
        subgroup = "equipment",
        placed_as_equipment_result = "f_mk" .. tostring(i),
    } })

    i = i + 1
end

data:extend(recipes)