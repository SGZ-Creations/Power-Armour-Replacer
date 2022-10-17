local recipes = {
    {
        type = "recipe",
        name = "b_mk1",
        energy_required = 22,
        ingredients = {
            {"lab", 2},
            {"electronic-circuit", 15},
            {"copper-cable", 50},
        },
        result = "b_mk1"
        
    },
    {
        type = "recipe",
        name = "b_mk2",
        energy_required = 24,
        ingredients = {
            {"b_mk1", 1},
            {"small-lamp", 5},
            {"steel-chest", 4},
        },
        result = "b_mk2"
    },
    {
        type = "recipe",
        name = "b_mk3",
        energy_required = 26,
        ingredients = {
            {"b_mk2", 1},
            {"constant-combinator", 2},
            {"steel-chest", 4},
        },
        result = "b_mk3"
    },
    {
        type = "recipe",
        name = "b_mk4",
        energy_required = 28,
        ingredients = {
            {"b_mk3", 1},
            {"small-lamp", 5},
            {"constant-combinator", 3},
        },
        result = "b_mk4"
    },
    {
        type = "recipe",
        name = "b_mk5",
        energy_required = 30,
        ingredients = {
            {"b_mk4", 1},
            {"advanced-circuit", 20},
            
            
            
        },
        result = "b_mk5"
    },
    {
        type = "recipe",
        name = "b_mk6",
        energy_required = 32,
        ingredients = {
            {"b_mk5", 1},
            
            
            
            
        },
        result = "b_mk6"
    },
    {
        type = "recipe",
        name = "b_mk7",
        energy_required = 34,
        ingredients = {
            {"b_mk6", 1},
            
            
            
            
        },
        result = "b_mk7"
    },
    {
        type = "recipe",
        name = "b_mk8",
        energy_required = 36,
        ingredients = {
            {"b_mk7", 1},
            
            
            
            
        },
        result = "b_mk8"
    },
    {
        type = "recipe",
        name = "b_mk9",
        energy_required = 38,
        ingredients = {
            {"b_mk8", 1},
            
            
            
            
        },
        result = "b_mk9"
    },
    {
        type = "recipe",
        name = "b_mk10",
        energy_required = 40,
        ingredients = {
            {"b_mk9", 1},
            
            
            
            
        },
        result = "b_mk10"
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

data:extend({ {
    type = "item",
    name = "b_mk1",
    icon = "__base__/graphics/icons/battery-equipment.png",
    icon_size = 64,
    stack_size = 200,
    order = "[Battery]" .. "0" .. string.random(25),
    subgroup = "equipment",
    placed_as_equipment_result = "b_mk1",
}})


local i = 2
while i < 11 do

    data:extend({{
        type = "item",
        name = "b_mk" .. tostring(i),
        icon = "__base__/graphics/icons/battery-mk2-equipment.png",
        icon_size = 64,
        stack_size = 200,
        order = "[Battery]" .. tostring(i - 1) .. string.random(25),
        subgroup = "equipment",
        placed_as_equipment_result = "b_mk" .. tostring(i),
    }})

    i = i + 1
end

data:extend(recipes)

