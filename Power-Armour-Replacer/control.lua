local function check_for_error(event)
  local printer = game.print

  if script.active_mods["base"] then
      if settings.startup["vanilla-warning"].value then
          printer(
            "\nBase/Vanilla Armours & Equipment are Dissabled/Hidden due to intentional mod mechanics.\nPower Armour & Replacer is functional in vanilla but was never inteded with vanilla.\nYou can dissable this message in startup settings if u don't want the warnings."
          )
      end
  end

  if script.active_mods["bobwarfare"] then
      if settings.startup["bobwarfare-warning"].value then
          printer(
            "\nBobs Armours are Dissabled/Hidden due to intentional mod mechanics.\nYou can dissable this message in startup settings if u don't want the warnings."
          )
      end
  end

  if script.active_mods["bobequipment"] then
    if settings.startup["bobequipment-warning"].value then
        game.print(
          "\nBobs Equipment are Dissabled/Hidden due to intentional mod mechanics.\nYou can dissable this message in startup settings if u don't want the warnings."
        )
    end
  end

  if script.active_mods["Power Armor MK3"] then
    if settings.startup["P-A_MK3-warning"].value then
        game.print(
          "\nP-A_MK3's Armours & Equipment are Dissabled/Hidden due to intentional mod mechanics. This mod is redundant at this point.\nYou can dissable this message in startup settings if u don't want the warnings."
        )
    end
  end

  if script.active_mods["RampantArsenal"] then
    if settings.startup["arsenal-warning"].value then
        game.print(
          "\nRampantArsenal Armours & Equipment are Dissabled & Hidden due to intentional mod mechanics. Some technolegies are blocked until someone fixes it.\nYou can dissable this message in startup settings if u don't want the warnings."
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
