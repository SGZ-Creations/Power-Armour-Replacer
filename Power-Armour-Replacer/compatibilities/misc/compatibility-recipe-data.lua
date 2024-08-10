local util = require("compatibilities.util")

util.ingredient_prereq(data.raw.recipe["heavy-armor"],
{
    {
        dependencies = {"base"},
        replacements = {
            {"light-armor", 1},
        }
    },
})