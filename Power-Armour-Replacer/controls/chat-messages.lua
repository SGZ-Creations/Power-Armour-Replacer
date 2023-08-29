local function check_for_error(event)
    local printer = game.print

    if settings.startup["PA&R-info"].value then
        printer([[

    Power Armour & Replacer works in vanilla but was not intended with vanilla.
    PA&R provides Armours & Equipment that is meant to be OP, & meant to be played along with other overhaul mods. Meaning if u play in vanilla, this mod will make you Over-OP.
    All equipments stats will stay as is & are not changeable, since the mod is balanced within itself. There for high cost is to be expected.
    Still should u wish change how things are my CAS mod will allow you to tweak and alter my Armours grids and INV bonuses if they are to big for your likings.
    CAS is required by PA&R so it should be in your mod list to allow for easy tweaking.
    In the CAS mod you can also enable space-science-packs to be required in reaserch should u wish that.
    THANKS FOR READING. You can disable this message in (PA&R) startup settings if u don't want the INFO.
        ]])
    end

-- Warnings
    if script.active_mods["base"] then
        if settings.startup["vanilla-warning"].value then
            printer([[
        Base/Vanilla Armours & Equipment are Disabled/Hidden due to PA&R's intentional replacement mechanics.
    Filters are hidden, Can be re-enabled under [Vanilla Filters] (PA&R) startup settings.
    Power Armour & Replacer is functional in vanilla but was not intended with vanilla.
    You can disable this message in (PA&R) startup settings if u don't want the INFO.
            ]])
        end
    end

    if script.active_mods["bobwarfare"] then
        if settings.startup["bobwarfare-warning"].value then
    printer([[
        Bobs Armours are Disabled/Hidden due to PA&R's intentional replacement mechanics.
    Filters are hidden, Can be re-enabled under [Modded Filters] (PA&R) startup settings.
    You can disable this message in (PA&R) startup settings if u don't want the INFO.
    ]])
        end
    end

    if script.active_mods["bobequipment"] then
        if settings.startup["bobequipment-warning"].value then
            printer([[
        Bobs Equipment are Disabled/Hidden due to PA&R's intentional replacement mechanics.
    Filters are hidden, Can be re-enabled under [Modded Filters] (PA&R) startup settings.
    You can disable this message in (PA&R) startup settings if u don't want the INFO.
            ]])
        end
    end

    if script.active_mods["Power Armor MK3"] then
        if settings.startup["P-A_MK3-warning"].value then
            printer([[
        Power Armor MK3's Armours & Equipment are Disabled & Hidden due to PA&R's intentional replacement mechanics.
    Filters are hidden, Can be re-enabled under [Modded Filters] (PA&R) startup settings.
    This mod can still have useful tech and items to play with.
    You can disable this message in (PA&R) startup settings if u don't want the INFO.
            ]])
        end
    end

    if script.active_mods["custom_power_armor_fix"] then
        if settings.startup["cutom's-armour-warning"].value then
            printer([[
        Custom Power Armour fix's Armours & Equipment are Disabled & Hidden due to PA&R's intentional replacement mechanics.
    Filters are hidden, Can be re-enabled under [Modded Filters] (PA&R) startup settings.
    This mod has have a few turret equipment to play with.
    You can disable this message in (PA&R) startup settings if u don't want the INFO.
            ]])
        end
    end

    if script.active_mods["Darkstar_utilities_fixed"] then
        if settings.startup["darkstar-fixed-warning"].value then
            printer([[
        Darkstar-fixed, Armours & Equipment are Disabled & Hidden due to PA&R's intentional replacement mechanics.
    Filters are hidden, Can be re-enabled under [Modded Filters] (PA&R) startup settings.
    You can disable this message in (PA&R) startup settings if u don't want the INFO.
            ]])
        end
    end

    if script.active_mods["PowerAndArmour"] then
        if settings.startup["powerandarmor-warning"].value then
        printer([[
        Power&Armor's Armours & Equipment are Disabled & Hidden due to PA&R's intentional replacement mechanics.
    Filters are hidden, Can be re-enabled under [Modded Filters] (PA&R) startup settings.
    There's nothing left on this mod to need it enabled.
    You can disable this message in (PA&R) startup settings if u don't want the INFO.
            ]])
        end
    end

    if script.active_mods["RampantArsenal"] then
        if settings.startup["arsenal-warning"].value then
            printer([[
        RampantArsenal Armours & Equipment are Disabled & Hidden due to PA&R's intentional replacement mechanics.
    Filters are hidden, Can be re-enabled under [Modded Filters] (PA&R) startup settings.
    You can disable this message in (PA&R) startup settings if u don't want the INFO."
            ]])
        end
    end

--Mod Issue Warnings.
    if script.active_mods["Insectitron"] then
        if settings.startup["Insectitron-issue"].value then
            printer([[
        Insectitronics mod should currently be working as expected.
    You can disable this message in (PA&R) startup settings if u don't want the INFO.
            ]])
        end
    end

    if script.active_mods["SpaceMod"] then
        if settings.startup["SpaceMod-issue"].value then
            printer([[
        SpaceMod has changes made by P.A.&.R mod.
    Should you find issue please let me know.
    You can dissable this message in (PA&R) startup settings if u don't want the INFO.
            ]])
        end
    end

    if script.active_mods["TeleportationEquipment"] then
        if settings.startup["Teleportation-issue"].value then
            printer([[
        TeleportationEquipment mod has technology changes made by P.A.&.R mod.
    You can disable this message in (PA&R) startup settings if u don't want the INFO.
            ]])
        end
    end

    if script.active_mods["osm-radioactivity"] then
        if settings.startup["radioactivity-issue"].value then
            printer([[
        osm-radioactivity Should be working as expected. Has non known bugs to it (PA&R).
    Should you find issue please let me know.
    You can dissable this message in (PA&R) startup settings if u don't want the INFO.
            ]])
        end
    end
end

local function on_configuration_changed()
    check_for_error()
end

script.on_init(on_configuration_changed)
script.on_configuration_changed(on_configuration_changed)
script.on_event(defines.events.on_player_created, check_for_error)