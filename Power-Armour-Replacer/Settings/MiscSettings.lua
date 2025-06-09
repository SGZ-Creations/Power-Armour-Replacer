--require("ShieldSettings")

data:extend({
    {
        type = "bool-setting",
        name = "vanilla-filters",
        setting_type = "startup",
        default_value = true,
        order = "10Aac"
    },
})
if mods["PARs-SpaceAge-Extension"] then
    if (mods["space-age"] or mods["mech-armor"])then
        data:extend({
            {
                type = "bool-setting",
                name = "MechTechFilters",
                setting_type = "startup",
                default_value = true,
                order = "10Aad"
            },
        })
    end
end
if mods["space-age"] then
    data:extend({
        {
            type = "bool-setting",
            name = "SAFilters",
            setting_type = "startup",
            default_value = true,
            order = "10Aad"
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
            order = "20Bab"
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
            order = "20Cab"
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
            order = "20Dab"
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
            order = "20Eab"
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
            order = "20Fab"
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
            order = "20Gab"
        },
        {
            type = "bool-setting",
            name = "SE-filters",
            setting_type = "startup",
            default_value = true,
            order = "20Lab"
        },
    })
elseif mods["Krastorio2"] then
    data:extend({
        {
            type = "bool-setting",
            name = "K2-filters",
            setting_type = "startup",
            default_value = true,
            order = "20Hab"
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
            order = "20Iab"
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
            order = "20Jab"
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
            order = "20Kab"
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
            order = "20Lab"
        },
    })
end