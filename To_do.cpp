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