--require("ShieldSettings")

data:extend({
    {
        type = "bool-setting",
        name = "vanilla-filters",
        setting_type = "startup",
        default_value = true,
        order = "1Aac"
    },
    {
        type = "int-setting",
        name = "BotChargingAmount",
        setting_type = "startup",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 1000,
        order = "1Aad"
    },
    {
        type = "int-setting",
        name = "ShieldHealthValue",
        setting_type = "startup",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 10000000,
        order = "1Aad"
    },
})
--[[
if (mods["space-age"] or mods["mech-armor"])then
    data:extend({
        {
            type = "bool-setting",
            name = "MechTechFilters",
            setting_type = "startup",
            default_value = true,
            order = "1Aad"
        },
    })
end
]]
if mods["space-age"] then
    data:extend({
        {
            type = "bool-setting",
            name = "SAFilters",
            setting_type = "startup",
            default_value = true,
            order = "1Aad"
        },
    })
end
if mods["bobwarfare"] then
data:extend({
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
            name = "PA-filters",
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
            name = "SE-filters",
            setting_type = "startup",
            default_value = true,
            order = "2Lab"
        },
    })
end