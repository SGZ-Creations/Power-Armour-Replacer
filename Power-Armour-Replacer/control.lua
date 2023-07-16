local function check_for_error(event)
  local printer = game.print

-- Warnings
  if script.active_mods["base"] then
      if settings.startup["vanilla-warning"].value then
          printer(
            "\nBase/Vanilla Armours & Equipment are Disabled/Hidden due to intentional mod mechanics.\nPower Armour & Replacer is functional in vanilla but was never intended with vanilla.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
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
        game.print(
          "\nBobs Equipment are Disabled/Hidden due to intentional mod mechanics.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
        )
    end
  end

  if script.active_mods["Power Armor MK3"] then
    if settings.startup["P-A_MK3-warning"].value then
        game.print(
          "\nP-A_MK3's Armours & Equipment are Disabled/Hidden due to intentional mod mechanics.\nThis mod is redundant at this point.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
        )
    end
  end

  if script.active_mods["RampantArsenal"] then
    if settings.startup["arsenal-warning"].value then
        game.print(
          "\nRampantArsenal Armours & Equipment are Disabled & Hidden due to intentional mod mechanics.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
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
      game.print(
        "\nSpaceMod has changes made by P.A.R mod.\nsolved bugged if played with bob's.\nPlease report things that could been missed.\nYou can dissable this message in (PA&R) startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["TeleportationEquipment"] then
    if settings.startup["Teleportation-issue"].value then
      game.print(
        "\nTeleportationEquipment mod has technology changes made by P.A.R mod.\nYou can disable this message in (PA&R) startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["osm-radioactivity"] then
    if settings.startup["radioactivity-issue"].value then
      game.print(
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
