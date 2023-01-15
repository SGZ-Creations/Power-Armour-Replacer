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