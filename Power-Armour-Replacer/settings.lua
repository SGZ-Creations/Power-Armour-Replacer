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
      order = "1Aaa"
    },
  })
end