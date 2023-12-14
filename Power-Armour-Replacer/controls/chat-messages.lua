--PA&R have hide & disable mechanics for --||-- Armours & Equipment.

local function check_for_error(event)
    local printer = game.print

    if settings.startup["PA&R-info"].value then
        printer([[
---------------------------------------------------------------------------------------------------
Power Armour & Replacer works in vanilla but was not intended with vanilla.
PA&R provides Armours & Equipment that is meant to be OP, & meant to be played along with other overhaul mods. Meaning if u play in vanilla, this mod will make you Over-OP.
All equipments stats will stay as is & are not changeable, since the mod is balanced within itself. There for high cost is to be expected.
Still should you wish to change how things are my CAS mod will allow you to tweak and alter my Armours grids and INV bonuses if they are to big for your likings.
CAS is required by PA&R so it should be in your mod list, to allow for easy tweaking.
In the CAS mod you can also enable space-science-packs to be required in reaserch should u wish that.
THANKS FOR READING. You can disable this message in (PA&R) startup settings if u don't want the INFO.]])
    end

-- Warnings
    if script.active_mods["base"] then
        if settings.startup["vanilla-warning"].value then
            printer([[
---------------------------------------------------------------------------------------------------
PA&R have hide & disable mechanics for Base/Vanilla Armours & Equipment.
Filters are hidden if startup setting [Vanilla Filters] is toggles off.
Power Armour & Replacer is functional in vanilla but was not intended with vanilla.
You can disable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end

    if script.active_mods["bobwarfare"] then
        if settings.startup["bobwarfare-warning"].value then
    printer([[
---------------------------------------------------------------------------------------------------
PA&R have hide & disable mechanics for "Bobs Warfare" the Armours are dissabled, hidden.
Filters are hidden if startup setting [Bob's Warfare Filters] is toggles off.
You can disable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end

    if script.active_mods["bobequipment"] then
        if settings.startup["bobequipment-warning"].value then
            printer([[
---------------------------------------------------------------------------------------------------
PA&R have hide & disable mechanics for "Bobs Equipment" the equipments are dissabled, hidden. 
Filters are hidden if startup setting [Bob's Equipment Filters] is toggles off.
You can disable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end

    if script.active_mods["custom_power_armor_fix"] then
        if settings.startup["cutom's-armour-warning"].value then
            printer([[
---------------------------------------------------------------------------------------------------
PA&R have hide & disable mechanics for "Custom Power Armour fix's" Armours & Equipment.
Filters are hidden if startup setting [Custom Power Armour fix Filters] is toggles off.
This mod has have a few turret equipment to play with.
You can disable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end

    if script.active_mods["Darkstar_utilities_fixed"] then
        if settings.startup["darkstar-fixed-warning"].value then
            printer([[
---------------------------------------------------------------------------------------------------
PA&R have hide & disable mechanics for "Darkstar-fixed" Armours & Equipment.
Filters are hidden if startup setting [Darkstar Filters] is toggles off.
You can disable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end

    if script.active_mods["Hiladdar_Gear"] then
        if settings.startup["hl_gear-warning"].value then
            printer([[
---------------------------------------------------------------------------------------------------
PA&R have hide & disable mechanics for "Hiladdar_Gear mod" Armours & Equipment, Tech & Intermediate.
Filters are hidden if startup setting [Hiladdar_Gear Filters] is toggles off.
You can disable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end

    if script.active_mods["Power Armor MK3"] then
        if settings.startup["P-A_MK3-warning"].value then
            printer([[
---------------------------------------------------------------------------------------------------
PA&R have hide & disable mechanics for Power Armor MK3's Armours & Equipment.
Filters are hidden if startup setting [MK3's Filters] is toggles off.
This mod can still have useful tech and items to play with.
You can disable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end

    if script.active_mods["Krastorio2"] and script.active_mods["space-exploration"] then
        if settings.startup["KE-warning"].value then
        printer([[
---------------------------------------------------------------------------------------------------
PA&R have hide & disable mechanics for SE's & K2's Armours & Equipment.
All items should be hidden on K2. SE & K2 Recipe Compatibility is yet to be worked more on.
Filters are hidden if startup setting [KE Filters] is toggles off.
You can disable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end

    if script.active_mods["Krastorio2"] and not script.active_mods["space-exploration"] then
        if settings.startup["K2-warning"].value then
        printer([[
---------------------------------------------------------------------------------------------------
PA&R have hide & disable mechanics for Krastorio's Armours & Equipment.
Filters are hidden if startup setting [Krastorio Filters] is toggles off.
You can disable this message in (PA&R) startup settings if u don't want the INFO.
All items should be hidden on K2. Recipe Compatibility is yet to be worked more on.]])
        end
    end

    if script.active_mods["PowerAndArmour"] then
        if settings.startup["powerandarmor-warning"].value then
        printer([[
---------------------------------------------------------------------------------------------------
PA&R have hide & disable mechanics for PowerAndArmor's Armours & Equipment.
There's nothing left on this mod to need it enabled.
Filters are hidden if startup setting [Power&Armor Filters] is toggles off.
You can disable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end

    if script.active_mods["RampantArsenal"] then
        if settings.startup["arsenal-warning"].value then
            printer([[ 
---------------------------------------------------------------------------------------------------
PA&R have hide & disable mechanics for RampantArsenal Armours & Equipment.
Filters are hidden if startup setting [Arsenal Filters] is toggles off.
You can disable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end

    if script.active_mods["space-exploration"] and not script.active_mods["Krastorio2"] then
        if settings.startup["SE-warning"].value then
        printer([[
---------------------------------------------------------------------------------------------------
PA&R have hide & disable mechanics for SE's Armours & Equipment.
Filters are hidden if startup setting [SE Filters] is toggles off.
You can disable this message in (PA&R) startup settings if u don't want the INFO.
Much left to do everywhere on SE Compatibility.]])
        end
    end

--Mod Possible Issue Warnings.
    if script.active_mods["Insectitron"] then
        if settings.startup["Insectitron-issue"].value then
            printer([[
---------------------------------------------------------------------------------------------------
Insectitronics mod should currently be working as expected.
You can disable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end

    if script.active_mods["SpaceModFeorasFork"] then
        if settings.startup["SpaceMod-issue"].value then
            printer([[
---------------------------------------------------------------------------------------------------
SpaceModFeorasFork has changes made by P.A.&.R mod.
Should you find issue with PA&R's Compatibility please let me know.
You can dissable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end

    if script.active_mods["TeleportationEquipment"] then
        if settings.startup["Teleportation-issue"].value then
            printer([[
---------------------------------------------------------------------------------------------------
TeleportationEquipment mod has technology changes made by P.A.&.R mod.
Should you find issue with PA&R's Compatibility please let me know.
You can disable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end

    if script.active_mods["osm-radioactivity"] then
        if settings.startup["radioactivity-issue"].value then
            printer([[
---------------------------------------------------------------------------------------------------
osm-radioactivity Should be working as expected. Has non known bugs to it (PA&R).
Should you find issue with PA&R's Compatibility please let me know.
You can dissable this message in (PA&R) startup settings if u don't want the INFO.]])
        end
    end
end

local function on_configuration_changed()
    check_for_error()
end

script.on_init(on_configuration_changed)
script.on_configuration_changed(on_configuration_changed)
script.on_event(defines.events.on_player_created, check_for_error)