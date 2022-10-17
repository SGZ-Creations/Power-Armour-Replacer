local recipes = {
    {
        type = "recipe",
        name = "f_mk1",
        ingredients = {
            {"advanced-circuit", 10},
            
            
            
            
        },
        result = "f_mk1"
    },
    {
        type = "recipe",
        name = "f_mk2",
        ingredients = {
            {"f_mk1",1},
            
            
            
            
        },
        result = "f_mk2"
    },
    {
        type = "recipe",
        name = "f_mk3",
        ingredients = {
            {"f_mk2",1},
            
            
            
            
        },
        result = "f_mk3"
    },
    {
        type = "recipe",
        name = "f_mk4",
        ingredients = {
            {"f_mk3",1},
            
            
            
            
        },
        result = "f_mk4"
    },
    {
        type = "recipe",
        name = "f_mk5",
        ingredients = {
            {"f_mk4",1},
            
            
            
            
        },
        result = "f_mk5"
    },
    {
        type = "recipe",
        name = "f_mk6",
        ingredients = {
            {"f_mk5",1},
            
            
            
            
        },
        result = "f_mk6"
    },
    {
        type = "recipe",
        name = "f_mk7",
        ingredients = {
            {"f_mk6",1},
            
            
            
            
        },
        result = "f_mk7"
    },
    {
        type = "recipe",
        name = "f_mk8",
        ingredients = {
            {"f_mk7",1},

        },
        result = "f_mk8"
    },
    {
        type = "recipe",
        name = "f_mk9",
        ingredients = {
            {"f_mk8", 1},

        },
        result = "f_mk9"
    },
    {
        type = "recipe",
        name = "f_mk10",
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