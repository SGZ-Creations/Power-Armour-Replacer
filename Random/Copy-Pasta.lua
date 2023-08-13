data.raw.recipe[""].enabled = false
data.raw.technology[""].enabled = false
data.raw.recipe[""].hidden = true
data.raw.technology[""].hidden = true
Hide_Item("")

--Max Consuption has effect on recharge speed
local input_flow_limit = {
    "5GW",           --1
    "50GW",          --2   
    "500GW",         --3
    "5000GW",        --4
    "50000GW",       --5
    "500000GW",      --6
    "5000000GW",     --7
    "50000000GW",    --8
    "500000000GW",   --9
    "50000000000GW", --10
}

-- Recharge speed the higer the lower it charges Doin't touch beyond 0.1.34-6p1
local energy_per_shield = {
    "10kJ", --1
    "10kJ", --2
    "10kJ", --3
    "10kJ", --4
    "10kJ", --5
    "10kJ", --6
    "10kJ", --7
    "10kJ", --8
    "10kJ", --9
    "10kJ", --10
}


//Use to copy
{"", },
{type="fluid", name="???", amount=100},


  "recipe":
  [
    ["", ""]
  ]


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


local original_sprite = {
    texture = "path/to/original/sprite.png",
    color = {1, 1, 1, 255} -- White color
}

local shifted_color = {
    r = 0.5, -- Shift the red channel by 0.5
    g = 0.5, -- Shift the green channel by 0.5
    b = 0.5, -- Shift the blue channel by 0.5
    a = 255
}

local shifted_sprite = {
    texture = "path/to/original/sprite.png",
    color = shifted_color
}

local entity = -- Reference to the entity you want to modify

game:get_service("rendering"):set_sprite(entity, shifted_sprite)


66 items to make grphics for
~ 

--IR3
    {
        dependencies = {"IndustrialRevolution3"},
        replacements = {
            [""] = {"", 0},
        }
    },

--local remove "remove" tech
--[[
local function remove(type, name)
    data.raw[type][name] = nil
end
]]