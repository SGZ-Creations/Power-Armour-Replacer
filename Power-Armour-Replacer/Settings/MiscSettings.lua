--require("ShieldSettings")

data:extend({
    {
        type = "bool-setting",
        name = "vanilla-filters",
        setting_type = "startup",
        default_value = true,
        order = "ZAac-9"
    },
    {
        type = "bool-setting",
        name = "HideRecipesFromPlayer",
        setting_type = "startup",
        default_value = false,
        order = "ZAad-9"
    },
    {
        type = "bool-setting",
        name = "OptionalTech6Texture",
        setting_type = "startup",
        default_value = false,
        order = "ZAae-9"
    },
})
if mods["PARs-SpaceAge-Extension"] then
    if (mods["space-age"] or mods["mech-armor"]) then
        data:extend({
            {
                type = "bool-setting",
                name = "MechTechFilters",
                setting_type = "startup",
                default_value = true,
                order = "ZAax-9"
            },
        })
    end
end

if mods["space-age"] then
    data:extend({
        {
            type = "int-setting",
            name = "ArmourControlUnit",
            setting_type = "startup",
            default_value = 1,
            order = "ZAaa-9"
        },
        {
            type = "bool-setting",
            name = "SAFilters",
            setting_type = "startup",
            default_value = true,
            order = "ZAay-9"
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
            order = "ZBab-9"
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
            order = "ZCab-9"
        },
    })
end

if mods["Cold_biters"] then
    data:extend({
        {
            type = "bool-setting",
            name = "ColdBitersFilters",
            setting_type = "startup",
            default_value = true,
            order = "ZCac-9"
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
            order = "ZDab-9"
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
            order = "ZEab-9"
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
            order = "ZFab-9"
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
            order = "ZGab-9"
        },
        {
            type = "bool-setting",
            name = "SE-filters",
            setting_type = "startup",
            default_value = true,
            order = "ZLab-9"
        },
    })
elseif (mods["Krastorio2"] or mods["Krastorio2-spaced-out"]) then
    data:extend({
        {
            type = "bool-setting",
            name = "K2-filters",
            setting_type = "startup",
            default_value = true,
            order = "ZHab-9"
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
            order = "ZIab-9"
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
            order = "ZJab-9"
        },
    })
end

if (mods["RampantArsenal"] or mods["RampantArsenalFork"]) then
    data:extend({
        {
            type = "bool-setting",
            name = "Arsenal-filters",
            setting_type = "startup",
            default_value = true,
            order = "ZKab-9"
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
            order = "ZLab-9"
        },
    })
end