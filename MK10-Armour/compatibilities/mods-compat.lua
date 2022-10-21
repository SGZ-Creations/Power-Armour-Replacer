local compat = {}
local util = require("__MK10-Armour__.util")

compat.update_ingredients = function(recipe, replacements)
    for mod, replacement in pairs(replacements) do
        if mods[mod] then
            util.update_ingredients(recipe, replacements[mod])
        end
    end
end

compat.update_technologies = function(replacements)
    for mod, technologies in pairs(replacements) do
        if mods[mod] then
            for technology, prerequisites in pairs(technologies) do
                util.update_technology(technology, prerequisites)
            end
        end
    end
end

return compat