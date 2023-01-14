    Compatibility list
    (?)Angels mods
    (?)Bobs mods 
    (?)K2
    (?)SE
    (!)IR3

//Use to copy
{"", },
{type="fluid", name="???", amount=100},


  "recipe":
  [
    ["", ""]
  ]

--[[
local space_6 = { "space-science-pack", 0 }
local space_7 = { "space-science-pack", 0 }
local space_8 = { "space-science-pack", 0 }
local space_9 = { "space-science-pack", 0 }
local space_10 = { "space-science-pack", 0 }

if PAR.setting.hard_science_required then
  space_6 = { "space-science-pack", 1 }
  space_7 = { "space-science-pack", 2 }
  space_8 = { "space-science-pack", 3 }
  space_9 = { "space-science-pack", 4 }
  space_10 = { "space-science-pack", 5 }
end

just_do_it(space_6, space_7, space_8, space_9, space_10)
]]

--local function just_do_it(space_6, space_7, space_8, space_9, space_10)

--[[
-- Mod main host
if not PAR then PAR = {} end

-- Mod settings host
if not PAR.setting then PAR.setting = {} end

-- Individual settings 
PAR.setting.hard_science_required = settings.global["hard_science_required"].value

----------------------------------------------------------------
--[[
local hard_science_required = PAR.setting.hard_science_required

script.on_init(function()
    if hard_science_required then
        game.difficulty_settings.technology_difficulty = 1
    end
end)
]]