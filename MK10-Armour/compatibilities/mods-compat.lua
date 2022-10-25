local compat = {}
local util = require("__MK10-Armour__.util")

compat.update_ingredients = function(recipe, replacements)
    for _, replacement in pairs(replacements) do
        for _, dependency in pairs(replacement.dependencies) do
            if not mods[dependency] then
                goto next_replacement
            end
        end
        util.update_ingredients(recipe, replacement.replacements)
        ::next_replacement::
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