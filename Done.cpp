Also this is where i specify item(s) completed:
- 10 New armours added
- 10 New shields added.
- 10 New tiers batteries.
- 10 New tiers of fusion reactor
- 10 Personal solar
- 10 Roboport
- 10 Personal laser defense
- 5  Exoskeleton
- 2  NVG''s
- 2  Belt-immunity


// WIP 
Compatibilites
- (?)Angels mods
- (?)Bobs mods



{
    dependencies = {"248k", "bobplates", "grand-unified-factorio-theory"},
    replacements = {
        ["battery"] = {"lithium-ion-battery", 30},
    }
},

  if script.active_mods[""] then
    if settings.startup["-warning"].value then
        game.print(
          " Equipment are Dissabled/Hidden due to intentional mod mechanics.\nYou can dissable this message in startup settings if u don't want the warnings."
        )
    end
  end