     Compatibilites list:
    (?)K2
    (?)SE
    Incompatible:
    (!)(?)IR3

//Use to copy
{"", },
{type="fluid", name="???", amount=100},


  "recipe":
  [
    ["", ""]
  ]

//--[[
item.flags = item.flags or {}
table.insert(item.flags, "hidden")
//]]

// remove("", "")


//--[[
--categories to migrate
"equipment"
"item"
"equipment-grid"
"entity"
]]//

--[[
local function (replace_items, items_replaced)
end
]]


Failure to load mod error message check added. If this one show up the issues are on the players side for the most part.


--[[
if not mods["lib"] or mods["Configurable-Armour-Suits"] then
    local message = "\n---------------------------------------------------------------------------------------------------"
    message = message .. "\nPlease Make sure u have Library & Configurable Armour & Suits installed. & not conflicting with other mods."
    message = message .. "\nShould it not be installed u can get it here: https://mods.factorio.com/mod/Configurable-Armour-Suits"
    message = message .. "\nShould it not be installed u can get it here: https://github.com/SGZ-Creations?tab=repositories"
    message = message .. "\n---------------------------------------------------------------------------------------------------"
    error(message)
end
]]

and replaces all vanailla versions. Tho no worry it will just migrate to my version. So noting is lost on converting hopfully but is not guranteed as for acidental bugs.

["nullius"] = {
        ["armour_1"] = {
            ["angels-brass-smelting-1"] = 
        },
        ["armour_3"] = {

        },
        ["armour_7"] = {

        }
    }

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

--[[
    remove("recipe", "bob-power-armor-mk3")
    remove("recipe", "bob-power-armor-mk4")
    remove("recipe", "bob-power-armor-5")
    remove("armor", "bob-power-armor-3")
    remove("armor", "bob-power-armor-mk4")
    remove("armor", "bob-power-armor-5")
    remove("technology", "bob-power-armor-mk3")
    remove("technology", "bob-power-armor-mk4")
    remove("technology", "bob-power-armor-5")
]]

--[[
    remove("armor", "terra-tech-power-armor")
    remove("armor", "terra-tech-power-armor-mk2")
    remove("technology", "terra-tech-power-armor-mk2-tech")
    remove("technology", "terra-tech-power-armor-tech")
    remove("recipe", "terra-tech-power-armor")
    remove("recipe", "terra-tech-power-armor-mk2")
    ]]

    --armour.item
--[[
    data.raw.item["power-armor-mk3"].hidden = true
    data.raw.item["power-armor-mk4"].hidden = true
    data.raw.item["power-armor-mk5"].hidden = true
]]