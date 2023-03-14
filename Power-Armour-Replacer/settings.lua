data:extend({
  {
    type = "bool-setting",
    name = "vanilla-warning",
    setting_type = "startup",
    default_value = true,
    order = "1Aaa"
  },
})

if mods["bobwarfare"] then
data:extend({
    {
      type = "bool-setting",
      name = "bobwarfare-warning",
      setting_type = "startup",
      default_value = true,
      order = "1Aab"
    },
  })
end

if mods["bobequipment"] then
  data:extend({
    {
      type = "bool-setting",
      name = "bobequipment-warning",
      setting_type = "startup",
      default_value = true,
      order = "1Aac"
    },
  })
end

if mods["Power Armor MK3"] then
  data:extend({
    {
      type = "bool-setting",
      name = "P-A_MK3-warning",
      setting_type = "startup",
      default_value = true,
      order = "1Zaa"
    },
  })
end

if mods["RampantArsenal"] then
  data:extend({
    {
      type = "bool-setting",
      name = "arsenal-warning",
      setting_type = "startup",
      default_value = true,
      order = "1Zab"
    },
  })
end