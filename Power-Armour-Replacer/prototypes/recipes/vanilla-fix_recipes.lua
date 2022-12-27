data:extend({
    {
        type = "recipe",
        name = "spidertron",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
          {"e_mk5", 1},
          {"f_mk5", 1},
          {"rocket-launcher", 4},
          {"rocket-control-unit", 16},
          {"low-density-structure", 150},
          {"radar", 2},
          {"effectivity-module-3", 2},
          {"raw-fish", 1}
        },
        result = "spidertron"
    }
})
-- local compat = require("compatibilities/mods-compat")

-- compat.update_ingredients(recipes[1], {
--     {
--         dependencies = {"bobwarfare"},
--         replacements = {
--             ["e_mk5"] = {"exoskeleton-equipment", 4},
--             ["f_mk5"] = {"fusion-reactor-equipment", 2},
--         }
--     },
-- })
-- data:extend(recipes)