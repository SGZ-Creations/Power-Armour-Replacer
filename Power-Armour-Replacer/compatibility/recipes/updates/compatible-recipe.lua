local util = require("compatibility.util")

util.ingredient_prereq(data.raw.recipe["pamk3-lvest"],
{
    {
        dependencies = {"Power Armor MK3"},
        replacements = {
            ["iron-stick"] = {"light-armor", 1},
            ["iron-plate"] = {"copper-plate", 10},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["heavy-armor"],
{
    {
        dependencies = {"Power Armor MK3"},
        replacements = {
            ["steel-plate"] = {"steel-plate", 25},
            ["copper-plate"] = {"copper-plate", 20},
            ["light-armor"] = {"pamk3-lvest", 1},
        }
    },
})

util.ingredient_prereq(data.raw.recipe["pamk3-hvest"],
{
    {
        dependencies = {"Power Armor MK3"},
        replacements = {
            ["steel-plate"] = {"steel-plate", 50},
            ["copper-plate"] = {"copper-plate", 40},
            {"heavy-armor", 1},
        }
    },
})