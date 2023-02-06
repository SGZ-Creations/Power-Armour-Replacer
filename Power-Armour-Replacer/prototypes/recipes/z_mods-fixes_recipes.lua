--[[
data:extend({
If mods["SpaceMod"] then
    {
        type = "recipe",
        name = "protection-field",
        enabled = false,
        energy_required = 100,
        ingredients =
        {
          {"e_mk10", 100},
        },
        result = "protection-field"
    },
    {
        type = "recipe",
        name = "protection-field-goopless",
        enabled = false,
        energy_required = 100,
        ingredients =
        {
          {"e_mk5", 1000},
          {"advanced-processing-unit", 3500},
        },
        result = "protection-field"
    },
})
]]