--local add = require("__Power-Armour-Replacer__.util")
--[[
if mods["Nanobots"] then
  local tech_eff = data.raw.technology["nv-bi_mk1"].effects
  table.add(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-feeder"})
  table.add(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-nanointerface"})
  table.add(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-launcher"})
  table.add(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-trees"})
  table.add(tech_eff,{type="unlock-recipe",recipe="equipment-bot-chip-items"})
end

if mods["Krastorio2"] then
  local tech_eff = data.raw.technology["nv-bi_mk1"].effects
  table.add(tech_eff,{type="unlock-recipe",recipe="vehicle-roboport"})
end
]]