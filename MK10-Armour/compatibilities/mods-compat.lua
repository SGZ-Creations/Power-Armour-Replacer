local compat = {}
local util = require("__MK10-Armour__.util")

compat.mods = {
    "bobplate",
    "bobequipment",
    "bobrevamp",
    "bobequipment",
    "bobwarfare",
    "space-exploration",
    "Krastorio2",
    "angels",
    "angels",
}

compat.update_recipe = function(recipe, replacements)
    for _, mod in pairs(compat.mods) do
        if mods[compat.mods] then
            util.replace_ingredients(recipe, replacements[compat.mods])
        end
    end
end

return compat