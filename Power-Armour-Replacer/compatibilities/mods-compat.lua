local compat = {}
local util = require("__Power-Armour-Replacer__.util")

compat.update_ingredients = function(recipe, replacements, setting)
    local setting_val = settings.startup[setting] and settings.startup[setting].value or nil
    for _, replacement in pairs(replacements) do
        for _, dependency in pairs(replacement.dependencies) do
            if not mods[dependency] then
                goto next_replacement
            end
            if setting and setting_val ~= true then
                goto next_replacement
            end
        end
        util.update_ingredients(recipe, replacement.replacements)
        ::next_replacement::
    end
end

compat.update_technologies = function(replacements)
    for dependency, technologies in pairs(replacements) do
        if type(dependency) == "table" then
            for _, mod in pairs(dependency) do
                if not mods[mod] then goto continue end
            end
        else
            if not mods[dependency] then goto continue end
        end
        for technology, prerequisites in pairs(technologies) do
            util.update_technology(technology, prerequisites)
        end
        ::continue::
    end
end

return compat