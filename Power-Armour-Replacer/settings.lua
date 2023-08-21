data:extend({
  {
    type = "bool-setting",
    name = "vanilla-filters",
    setting_type = "startup",
    default_value = true,
    order = "1Aaa"
  },
  {
    type = "bool-setting",
    name = "mod-filters",
    setting_type = "startup",
    default_value = true,
    order = "1Aab"
  },
})

data:extend({
  {
    type = "bool-setting",
    name = "vanilla-warning",
    setting_type = "startup",
    default_value = true,
    order = "2Aaa"
  },
})

if mods["bobwarfare"] then
data:extend({
    {
      type = "bool-setting",
      name = "bobwarfare-warning",
      setting_type = "startup",
      default_value = true,
      order = "2Aab"
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
      order = "2Aac"
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
      order = "2Aad"
    },
  })
end

if mods["custom_power_armor_fix"] then
  data:extend({
    {
      type = "bool-setting",
      name = "cutom's-armour-warning",
      setting_type = "startup",
      default_value = true,
      order = "2Aae"
    },
  })
end

if mods["Darkstar_utilities_fixed"] then
  data:extend({
    {
      type = "bool-setting",
      name = "darkstar-fixed-warning",
      setting_type = "startup",
      default_value = true,
      order = "2Aaf"
    },
  })
end

if mods["PowerAndArmor"] then
  data:extend({
    {
      type = "bool-setting",
      name = "powerandarmor-warning",
      setting_type = "startup",
      default_value = true,
      order = "2Aag"
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
      order = "2Aah"
    },
  })
end

if mods["Insectitron"] then
  data:extend({
    {
      type = "bool-setting",
      name = "Insectitron-issue",
      setting_type = "startup",
      default_value = true,
      order = "3Aaa"
    },
  })
end

if mods["SpaceMod"] then
  data:extend({
    {
      type = "bool-setting",
      name = "SpaceMod-issue",
      setting_type = "startup",
      default_value = true,
      order = "3Aab"
    },
  })
end

if mods["TeleportationEquipment"] then
  data:extend({
    {
      type = "bool-setting",
      name = "Teleportation-issue",
      setting_type = "startup",
      default_value = true,
      order = "3Aac"
    },
  })
end

if mods["osm-radioactivity"] then
  data:extend({
    {
      type = "bool-setting",
      name = "radioactivity-issue",
      setting_type = "startup",
      default_value = true,
      order = "3Aad"
    },
  })
end