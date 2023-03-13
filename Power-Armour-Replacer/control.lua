local function check_for_error(event)
  local printer = game.print

  if script.active_mods["base"] then
      if settings.startup["vanilla-warning"].value then
          printer(
            "Base/Vanilla Armours & Equipment are Dissabled/Hidden due to intentional mod mechanics.\nThis mod is functional in vanilla but was never intet with vanilla.\nYou can dissable this message in startup settings if u don't want the warnings."
          )
      end
  end

  if script.active_mods["bobwarfare"] then
      if settings.startup["bobwarfare-warning"].value then
          printer(
            "Bobs Armours & Equipment are Dissabled/Hidden due to intentional mod mechanics.\nYou can dissable this message in startup settings if u don't want the warnings."
          )
      end
  end
  --[[
  if script.active_mods["bobwarfare"] then
    if settings.startup["bobwarfare-warning"].value then
        game.print(
          "Bobs Armours & Equipment are Dissabled/Hidden due to intentional mod mechanics.\nYou can dissable this message in startup settings if u don't want the warnings."
        )
    end
  end]]
end

local function on_configuration_changed()
  check_for_error()

end

script.on_init(on_configuration_changed)
script.on_configuration_changed(on_configuration_changed)
script.on_event(defines.events.on_player_created, check_for_error)
