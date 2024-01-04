data:extend({
    {
        type = "bool-setting",
        name = "PA&R-info",
        setting_type = "startup",
        default_value = true,
        order = "1Aaa"
    },
    {
        type = "bool-setting",
        name = "vanilla-warning",
        setting_type = "startup",
        default_value = true,
        order = "1Aab"
    },
    {
        type = "bool-setting",
        name = "vanilla-filters",
        setting_type = "startup",
        default_value = true,
        order = "1Aac"
    },
})

if mods["bobwarfare"] then
data:extend({
        {
            type = "bool-setting",
            name = "bobwarfare-warning",
            setting_type = "startup",
            default_value = true,
            order = "2Baa"
        },
        {
            type = "bool-setting",
            name = "BobW-filters",
            setting_type = "startup",
            default_value = true,
            order = "2Bab"
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
            order = "2Caa"
        },
        {
            type = "bool-setting",
            name = "BobE-filters",
            setting_type = "startup",
            default_value = true,
            order = "2Cab"
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
            order = "2Daa"
        },
        {
            type = "bool-setting",
            name = "CPAF-filters",
            setting_type = "startup",
            default_value = true,
            order = "2Dab"
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
            order = "2Eaa"
        },
        {
            type = "bool-setting",
            name = "darkstar-fixed-filters",
            setting_type = "startup",
            default_value = true,
            order = "2Eab"
        },
    })
end

if mods["Hiladdar_Gear"] then
    data:extend({
        {
            type = "bool-setting",
            name = "hl_gear-warning",
            setting_type = "startup",
            default_value = true,
            order = "2Faa"
        },
        {
            type = "bool-setting",
            name = "hl_gear-filters",
            setting_type = "startup",
            default_value = true,
            order = "2Fab"
        },
    })
end

if mods["Krastorio2"] and mods["space-exploration"] then
    data:extend({
        {
            type = "bool-setting",
            name = "KE-warning",
            setting_type = "startup",
            default_value = true,
            order = "2Gaa"
        },
        {
            type = "bool-setting",
            name = "KE-filters",
            setting_type = "startup",
            default_value = true,
            order = "2Gab"
        },
        {
            type = "bool-setting",
            name = "SE-filters",
            setting_type = "startup",
            default_value = true,
            order = "2Lab"
        },
    })
elseif mods["Krastorio2"] then
    data:extend({
        {
            type = "bool-setting",
            name = "K2-warning",
            setting_type = "startup",
            default_value = true,
            order = "2Haa"
        },
        {
            type = "bool-setting",
            name = "K2-filters",
            setting_type = "startup",
            default_value = true,
            order = "2Hab"
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
            order = "2Iaa"
        },
        {
            type = "bool-setting",
            name = "P&A-filters",
            setting_type = "startup",
            default_value = true,
            order = "2Iab"
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
            order = "2Jaa"
        },
        {
            type = "bool-setting",
            name = "MK3-filters",
            setting_type = "startup",
            default_value = true,
            order = "2Jab"
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
            order = "2Kaa"
        },
        {
            type = "bool-setting",
            name = "Arsenal-filters",
            setting_type = "startup",
            default_value = true,
            order = "2Kab"
        },
    })
end

if mods["space-exploration"] and not mods["Krastorio2"] then
    data:extend({
        {
            type = "bool-setting",
            name = "SE-warning",
            setting_type = "startup",
            default_value = true,
            order = "2Laa"
        },
        {
            type = "bool-setting",
            name = "SE-filters",
            setting_type = "startup",
            default_value = true,
            order = "2Lab"
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

if mods["IndustrialRevolution3"] then
    data:extend({
        {
            type = "bool-setting",
            name = "IR3-warning",
            setting_type = "startup",
            default_value = true,
            order = "2Maa"
        },
    })
end

if mods["SpaceModFeorasFork"] then
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