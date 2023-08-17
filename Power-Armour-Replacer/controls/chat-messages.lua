local function check_for_error(event)
  local printer = game.print

-- Warnings
  if script.active_mods["base"] then
    if settings.startup["vanilla-warning"].value then
      printer(
        "\nBase/Vanilla Armours & Equipment are Disabled/Hidden due to intentional mod mechanics.\nFilters are hidden, Can be re-enabled under [Vanilla Filters] (PA&R) startup settings.\nPower Armour & Replacer is functional in vanilla but was never intended with vanilla.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["bobwarfare"] then
    if settings.startup["bobwarfare-warning"].value then
      printer(
        "\nBobs Armours are Disabled/Hidden due to intentional mod mechanics.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["bobequipment"] then
    if settings.startup["bobequipment-warning"].value then
      printer(
        "\nBobs Equipment are Disabled/Hidden due to intentional mod mechanics.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["Power Armor MK3"] then
    if settings.startup["P-A_MK3-warning"].value then
      printer(
        "\nPower Armor MK3's Armours & Equipment are Disabled & Hidden due to intentional mod mechanics.\nFilters are hidden, Can be re-enable it under [Modded Filters] (PA&R) startup settings.\nThis mod can still have useful tech and items to play with.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["custom_power_armor_fix"] then
    if settings.startup["cutom's-armour-warning"].value then
      printer(
        "\nCustom Power Armour fix's Armours & Equipment are Disabled & Hidden due to intentional mod mechanics.\nFilters are hidden, Can be re-enable it under [Modded Filters] (PA&R) startup settings.\nThis mod has have a few turret equipment to play with.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["PowerAndArmour"] then
    if settings.startup["powerandarmor-warning"].value then
      printer(
        "\nPower&Armor's Armours & Equipment are Disabled & Hidden due to intentional mod mechanics.\nFilters are hidden, Can be re-enable it under [Modded Filters] (PA&R) startup settings.\nThere's nothing left on this mod to need it enabled.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["RampantArsenal"] then
    if settings.startup["arsenal-warning"].value then
      printer(
        "\nRampantArsenal Armours & Equipment are Disabled & Hidden due to intentional mod mechanics.\nFilters are hidden, Can be re-enable it under [Modded Filters] (PA&R) startup settings.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
      )
    end
  end

  -- Mod Issue Warnings.
  if script.active_mods["Insectitron"] then
    if settings.startup["Insectitron-issue"].value then
      printer(
        "\nInsectitron mod should currently be working as expected.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["SpaceMod"] then
    if settings.startup["SpaceMod-issue"].value then
      printer(
        "\nSpaceMod has changes made by P.A.R mod.\nsolved bugged if played with bob's.\nPlease report things that could been missed.\nYou can dissable this message in (PA&R) startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["TeleportationEquipment"] then
    if settings.startup["Teleportation-issue"].value then
      printer(
        "\nTeleportationEquipment mod has technology changes made by P.A.R mod.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["osm-radioactivity"] then
    if settings.startup["radioactivity-issue"].value then
      printer(
        "\nosm-radioactivity Should be working fine has no bugs to it by made (PA&R).\nShould u find issue please let me know\nYou can dissable this message in (PA&R) startup settings if u don't want the warnings."
      )
    end
  end
end

local function on_configuration_changed()
  check_for_error()
end

script.on_init(on_configuration_changed)
script.on_configuration_changed(on_configuration_changed)
script.on_event(defines.events.on_player_created, check_for_error)