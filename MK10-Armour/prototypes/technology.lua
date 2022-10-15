local compat = require("compat")

compat.update_recipe(recipes[1], {
    ["bobplate"] = {
        ["old-ingredient1"] = "new-ingredient1",
        ["old-ingredient2"] = "new-ingredient2",
        ["old-ingredient3"] = "new-ingredient3",
    },
    ["bobequipment"] = {
        ["old-ingredient4"] = "new-ingredient4",
        ["old-ingredient5"] = "new-ingredient5",
        ["old-ingredient6"] = "new-ingredient6",
    },
    ["space"] = {
        ["old-ingredient1"] = "new-ingredient1",
        ["old-ingredient2"] = "new-ingredient2",
        ["old-ingredient3"] = "new-ingredient3",
    },
})